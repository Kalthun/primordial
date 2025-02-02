# primordial
A declariative and reproducible NixOS configuration.

# Structure
FILLER

# Important Commands

```
sudo nixos-rebuild switch --flake ~/etc/nixos/#seed
```
**NOTE**: seed is the hostname.

# Getting Started

## ISO
Download the most recent NisOS IOS (GUI is recommended) and install whichever version you'd like (GNOME is recommended). Then reboot the device and login.

## Internet
- Desktop Evironment: Connect using GUI
- Headless: `$ nmtui`

## Editing As Normal User
```
mkdir ~/etc
sudo mv /etc/nixos ~/etc/
sudo chown -R $(id -un):users ~/etc/nixos
sudo ln -s ~/etc/nixos /etc/
```

## TODO: Relocate After Cloning (cause running sudo one time isn't that bad)
Now you can name the config whatever you want!
```
git clone ...
sudo rm /etc/nixos/configuration.nix
sudo mv /etc/nixos/hardware-configuration.nix ~/primordial
sudo chown -R $(id -un):users ~/primordial
sudo ln -s ~/etc/nixos ~/primordial
```

## Setup Cloning Evironment
```
environment.systemPackages = with pkgs; [
  helix
  git
  # TODO # Internet TUI
];
```

## Rebuild
```
sudo nixos-rebuild switch
```

## Setup SSH
TODO

## Clone Repository
TODO: make the following steps more clear.
```
rm -r ~/etc/nixos
cd ~/etc
git clone git@github.com:Kalthun/primordial.git
```

## Rebuild (again) & Restart
TODO

# TODO
- [ ] Structure (with nice diagram)
