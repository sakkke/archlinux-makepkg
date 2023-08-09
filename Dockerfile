FROM archlinux:base-devel
RUN useradd -m build \
  && echo 'build ALL=(ALL:ALL) NOPASSWD: ALL' > /etc/sudoers.d/build
USER build
WORKDIR /work
CMD [ "/bin/sh", "-c", "sudo pacman -Sy && makepkg --noconfirm -s" ]
