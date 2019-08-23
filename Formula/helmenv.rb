class Helmenv < Formula
    desc "Helm version manager inspired by rbenv"
    homepage "https://github.com/yuya-takeyama/helmenv"
    url "https://github.com/yuya-takeyama/helmenv/archive/master.tar.gz"
    sha256 "82b89341275f64b099ce0fd902456d94a9a59640b9014d4f0ba5263e2066edce"
    head "https://github.com/yuya-takeyama/helmenv.git"
    version "master"

    bottle :unneeded

    conflicts_with "kubernetes-helm", :because => "helmenv symlinks helm binaries"

    def install
        prefix.install ["bin", "libexec"]
    end

    def caveats
        "Add the following to your .bashrc/.zshrc:"
        "    export HELMENV_ROOT=/usr/local/Cellar/helmenv/master"
    end

    test do
        system bin/"helmenv", "versions"
    end
end
