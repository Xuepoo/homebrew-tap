class Cmdh < Formula
  desc "CmdHub agent-computer interface CLI client"
  homepage "https://github.com/Xuepoo/cmdhub"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0/cmdh-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "a3e5754ccdcac8524feae6f02ae7ac29725003fdc4763410ddc3c2d25decfa5b"
    else
      url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0/cmdh-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "de8cdaad7c67b4e5715c33685ca19aefd9e875b2e039fec6afd3a4753ec23a9d"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/cmdhub/releases/download/v0.1.0/cmdh-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f39ebe5974f0bc7b03e188d35c1722514728cde73022141395db9b858d518cc2"
  end

  def install
    bin.install "cmdh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmdh --version")
  end
end
