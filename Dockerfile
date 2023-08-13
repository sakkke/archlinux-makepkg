FROM archlinux:base-devel
COPY makepkg-wrapper.sh /usr/bin/
RUN useradd -m build \
  && echo 'build ALL=(ALL:ALL) NOPASSWD: ALL' > /etc/sudoers.d/build
USER build
WORKDIR /work
ENTRYPOINT [ "/usr/bin/makepkg-wrapper.sh" ]
CMD [ "--noconfirm", "-s" ]
