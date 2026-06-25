class Cmdh < Formula
  desc "CmdHub agent-computer interface CLI client"
  homepage "https://github.com/Xuepoo/cmdhub-oss"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/cmdhub-oss/releases/download/v0.1.6/cmdh-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "4c536789c85d3bff84100c232974167ec12572cc82182f7ab584f32c62d5e389"
    else
      url "https://github.com/Xuepoo/cmdhub-oss/releases/download/v0.1.6/cmdh-v0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "695cbc22e0ec684eaae67506b6cae4a2063857167cb1d9f0ba315a0c6769c9bd"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/cmdhub-oss/releases/download/v0.1.6/cmdh-v0.1.6-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "75dc5997a358a743a1e9a53c99bb291834857cf34c51823112de140937e5e63d"
  end

  def install
    bin.install "cmdh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmdh --version")
  end
end
