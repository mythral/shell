FROM nixos/nix

ENV NIXPKGS_ALLOW_UNFREE=1

COPY ./packages.nix /tmp/packages.nix
RUN nix-env -if /tmp/packages.nix && rm /tmp/packages.nix

# Run install script
COPY ./install.sh /tmp/install.sh
RUN zsh /tmp/install.sh && rm /tmp/install.sh

COPY ./.zshrc /root/.zshrc
COPY ./cdt.localtime /etc/localtime


ENTRYPOINT [ "/root/.nix-profile/bin/zsh" ]
