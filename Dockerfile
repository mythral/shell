FROM nixos/nix

ENV NIXPKGS_ALLOW_UNFREE=1

COPY ./packages.nix /tmp/packages.nix
RUN nix-env -if /tmp/packages.nix && rm /tmp/packages.nix

