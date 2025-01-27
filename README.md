# primordial
A declariative and reproducible NixOS configuration.

# Structure
FILLER

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
- [X] Structure (with nice diagram)
