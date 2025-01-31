{ config, pkgs, lib, inputs, ... }: {

    imports = [ inputs.stylix.nixosModules.stylix ];

    stylix = {
        enable = true;
        autoEnable = true;
        opacity = { terminal = 0.9; };
    };

    stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine.yaml";

}
