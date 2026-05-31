class SonicBridge < Formula
  desc "An ultra-fast, lightweight physical music aesthetic and listening translation middleware designed for AI Agents"
  homepage "https://github.com/Xuepoo/sonic-bridge"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.6.0/sonic-bridge-macos-aarch64"
      sha256 "39e65075e184f21018fbd16bbf1d17d233cd478f59cebd8cdc25c103f46dc81f"
    else
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.6.0/sonic-bridge-macos-x86_64"
      sha256 "55a31660db45fdbde262a5c131db32e6b8d65e201d42f4960ac886583fd4de4f"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.6.0/sonic-bridge-linux-x86_64"
    sha256 "47286658ebfa1a91e93ef53e0b12bb8dd8cf6d3fe2f1d27be4f33700796bbeb5"
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "sonic-bridge-macos-aarch64" => "sonic-bridge"
      else
        bin.install "sonic-bridge-macos-x86_64" => "sonic-bridge"
      end
    elsif OS.linux?
      bin.install "sonic-bridge-linux-x86_64" => "sonic-bridge"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sonic-bridge --version")
  end
end
