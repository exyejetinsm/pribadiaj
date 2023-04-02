{ pkgs }: {
    deps = [
        pkgs.zip
        pkgs.sudo
        pkgs.nodejs
        pkgs.openssh_with_kerberos
        pkgs.nodePackages.typescript
        pkgs.arcan.ffmpeg
        pkgs.libwebp
        pkgs.imagemagick
        pkgs.git
        pkgs.wget
        pkgs.yarn
        pkgs.libuuid
        pkgs.python
    ];
    env = {
        LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
            pkgs.libuuid
        ];
    };
}