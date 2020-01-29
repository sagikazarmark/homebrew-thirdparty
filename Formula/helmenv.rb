class Helmenv < Formula
    desc "Helm version manager inspired by rbenv"
    homepage "https://github.com/yuya-takeyama/helmenv"
    url "https://github.com/yuya-takeyama/helmenv/archive/18ef747.tar.gz"
    sha256 "aac2725513f64f960aa59662e5d1acce76707eb1042da326439558d85cf69e6f"
    head "https://github.com/yuya-takeyama/helmenv.git"
    version "18ef747"

    bottle :unneeded

    conflicts_with "kubernetes-helm", :because => "helmenv symlinks helm binaries"

    def install
        prefix.install ["bin", "libexec"]
    end

    test do
        system bin/"helmenv", "versions"
    end
end
