# primordial
A declariative and reproducible NixOS configuration.

# Getting Started

## Editing as normal user
```
mkdir ~/etc
sudo mv /etc/nixos ~/etc/
sudo chown -R $(id -un):users ~/etc/nixos
sudo ln -s ~/etc/nixos /etc/
```

## Setup cloning evironment
```
environment.systemPackages = with pkgs; [
  helix
  git
];
```

# TODOs
- [ ] fill
