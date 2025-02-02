{ config, pkgs, ... }: {

  programs.starship = {

    enable = true;

    settings = {

      format = '''
      [╭─](bold green)\
      [\\(](bold white)\
      $all\
      ${custom.end}\
      [\\)](bold white)\
      $cmd_duration\
      $linebreak
      [╰─](bold green)\
      $jobs\
      $battery\
      $time\
      $status\
      $os\
      $container\
      $shell\
      $character
      ''';

      custom.end = {
        format = " ";
        style = "bold white";
        when = "[ 'a' = 'a' ]";
      };
    };
  };
}
