# primordial
A declariative and reproducible NixOS configuration.

# Structure


# Important Commands

```
sudo nixos-rebuild switch --flake ~/primordial/#[hostname]
```

# Getting Started

## ISO
Download the most recent NisOS IOS (a GUI is recommended) and install whichever version you'd like (Plasma is recommended). Then reboot the device and login.

## Establish Internet Connection
- Desktop Evironment: Connect using GUI
- Headless: `nmtui`

## Setup Cloning Evironment
You need to install git to clone the repository.
```
sudo nano /etc/nixos/configuration.nix
```

```
environment.systemPackages = with pkgs; [
  git # <- Literally just need git
];
```

## Rebuild
```
sudo nixos-rebuild switch
```

## Setup SSH
```
ssh-keygen
```

```
cat ~/.ssh/id_ed25519.pub
```
Add the output to your SSH keys on github.

## Adjust Path & Symlink
```
cd
git clone git@github.com:Kalthun/primordial.git
```

```
cd primordial/hosts
mkdir [hostname]
```

```
sudo rm /etc/nixos/configuration.nix
sudo mv /etc/nixos/hardware-configuration.nix ~/primordial/hosts/[hostname]
```

You can either copy a different config or make a new one
```
cp ~/primordial/hosts/seed/configuration.nix ~/primordial/hosts/[hostname]
```

```
sudo chown -R $(id -un):users ~/primordial
sudo ln -s ~/primordial/* /etc/nixos/
```

## SETUP NEW USER IN `flake.nix`
Or else.

## `git add -A`
DO NOT FORGET THIS!!!!

## Rebuild (again) & Reboot
```
sudo nixos-rebuild switch --flake ~/primordial/#[hostname]
```

# TODO
- [ ] Structure (with nice diagram)
- [ ] Install Script
- [ ] Headless

# IMPORTANT EXTRA
When using dev shells with vscode, you need to run them with code . and configure the interprater
