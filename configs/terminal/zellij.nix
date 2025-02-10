{ config, pkgs, lib, ... }:
  let
    inherit (config.lib.stylix) colors;
  in
{

  programs.zellij = {

    enable = true;
    enableZshIntegration = true;

    settings = {

      on_force_close = "detach";
      simplified_ui = true;
      pane_frames = false;
    
      ui = {
        pane_frames = {
          rounded_corners = true;
          # hide_session_name = true;
        };
      };

    };

  };

  # TODO:
  # - HOSTNAME: so we know which comp we're on (connect to session-name)
  # - TABS: limit to 3?
  # 
  
  xdg.configFile."zellij/layouts/default.kdl".text = ''
    layout {
      default_tab_template {
        children
        pane size=1 borderless=true {

          plugin location="file://${pkgs.zjstatus}/bin/zjstatus.wasm" {

            format_left   "{mode}#[bg=#${colors.base00}] {tabs}"
            format_center ""
            format_right  "#[bg=#${colors.base00},fg=#${colors.base0E}]#[bg=#${colors.base0E},fg=#${colors.base01},bold] #[bg=#${colors.base02},fg=#${colors.base05},bold] {session} #[bg=#${colors.base03},fg=#${colors.base05},bold]"

            format_space  ""
            format_hide_on_overlength "true"
            format_precedence "lcr"

            hide_frame_for_single_pane "true"

            border_enabled  "false"
            border_char     "─"
            border_format   "#[fg=#6C7086]{char}"
            border_position "top"

            mode_normal        "#[bg=#${colors.base0B},fg=#${colors.base02},bold] NORMAL#[bg=#${colors.base03},fg=#${colors.base0B}]█"
            mode_locked        "#[bg=#${colors.base04},fg=#${colors.base02},bold] LOCKED #[bg=#${colors.base03},fg=#${colors.base04}]█"
            mode_resize        "#[bg=#${colors.base08},fg=#${colors.base02},bold] RESIZE#[bg=#${colors.base03},fg=#${colors.base08}]█"
            mode_pane          "#[bg=#${colors.base0D},fg=#${colors.base02},bold] PANE#[bg=#${colors.base03},fg=#${colors.base0D}]█"
            mode_tab           "#[bg=#${colors.base07},fg=#${colors.base02},bold] TAB#[bg=#${colors.base03},fg=#${colors.base07}]█"
            mode_scroll        "#[bg=#${colors.base0A},fg=#${colors.base02},bold] SCROLL#[bg=#${colors.base03},fg=#${colors.base0A}]█"
            mode_enter_search  "#[bg=#${colors.base0D},fg=#${colors.base02},bold] ENT-SEARCH#[bg=#${colors.base03},fg=#${colors.base0D}]█"
            mode_search        "#[bg=#${colors.base0D},fg=#${colors.base02},bold] SEARCHARCH#[bg=#${colors.base03},fg=#${colors.base0D}]█"
            mode_rename_tab    "#[bg=#${colors.base07},fg=#${colors.base02},bold] RENAME-TAB#[bg=#${colors.base03},fg=#${colors.base07}]█"
            mode_rename_pane   "#[bg=#${colors.base0D},fg=#${colors.base02},bold] RENAME-PANE#[bg=#${colors.base03},fg=#${colors.base0D}]█"
            mode_session       "#[bg=#${colors.base0E},fg=#${colors.base02},bold] SESSION#[bg=#${colors.base03},fg=#${colors.base0E}]█"
            mode_move          "#[bg=#${colors.base0F},fg=#${colors.base02},bold] MOVE#[bg=#${colors.base03},fg=#${colors.base0F}]█"
            mode_prompt        "#[bg=#${colors.base0D},fg=#${colors.base02},bold] PROMPT#[bg=#${colors.base03},fg=#${colors.base0D}]█"
            mode_tmux          "#[bg=#${colors.base09},fg=#${colors.base02},bold] TMUX#[bg=#${colors.base03},fg=#${colors.base09}]█"

            // formatting for inactive tabs
            tab_normal              "#[bg=#${colors.base03},fg=#${colors.base0D}]█#[bg=#${colors.base0D},fg=#${colors.base02},bold]{index} #[bg=#${colors.base02},fg=#${colors.base05},bold] {name}{floating_indicator}#[bg=#${colors.base03},fg=#${colors.base02},bold]█"
            tab_normal_fullscreen   "#[bg=#${colors.base03},fg=#${colors.base0D}]█#[bg=#${colors.base0D},fg=#${colors.base02},bold]{index} #[bg=#${colors.base02},fg=#${colors.base05},bold] {name}{fullscreen_indicator}#[bg=#${colors.base03},fg=#${colors.base02},bold]█"
            tab_normal_sync         "#[bg=#${colors.base03},fg=#${colors.base0D}]█#[bg=#${colors.base0D},fg=#${colors.base02},bold]{index} #[bg=#${colors.base02},fg=#${colors.base05},bold] {name}{sync_indicator}#[bg=#${colors.base03},fg=#${colors.base02},bold]█"

            // formatting for the current active tab
            tab_active              "#[bg=#${colors.base03},fg=#${colors.base09}]█#[bg=#${colors.base0A},fg=#${colors.base02},bold]{index} #[bg=#${colors.base02},fg=#${colors.base05},bold] {name}{floating_indicator}#[bg=#${colors.base03},fg=#${colors.base02},bold]█"
            tab_active_fullscreen   "#[bg=#${colors.base03},fg=#${colors.base09}]█#[bg=#${colors.base09},fg=#${colors.base02},bold]{index} #[bg=#${colors.base02},fg=#${colors.base05},bold] {name}{fullscreen_indicator}#[bg=#${colors.base03},fg=#${colors.base02},bold]█"
            tab_active_sync         "#[bg=#${colors.base03},fg=#${colors.base09}]█#[bg=#${colors.base09},fg=#${colors.base02},bold]{index} #[bg=#${colors.base02},fg=#${colors.base05},bold] {name}{sync_indicator}#[bg=#${colors.base03},fg=#${colors.base02},bold]█"

            // separator between the tabs
            tab_separator           "#[bg=#${colors.base00}] "

            // indicators
            tab_sync_indicator       " "
            tab_fullscreen_indicator " 󰊓"
            tab_floating_indicator   " 󰹙"

            tab_display_count "3"
            tab_truncate_start_format "#[fg=red,bg=#181825] < +{count} ..."
            tab_truncate_end_format   "#[fg=red,bg=#181825] ... +{count} >"

            command_git_branch_command     "git rev-parse --abbrev-ref HEAD"
            command_git_branch_format      "#[fg=blue] {stdout} "
            command_git_branch_interval    "10"
            command_git_branch_rendermode  "static"

            datetime        "#[fg=#6C7086,bold] {format} "
            datetime_format "%A, %d %b %Y %H:%M"
            datetime_timezone "America/Toronto"
          }
        }
      }
    }
  '';

}
