class SonicBridge < Formula
  desc "An ultra-fast, lightweight physical music aesthetic and listening translation middleware designed for AI Agents"
  homepage "https://github.com/Xuepoo/sonic-bridge"
  version "0.3.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.8/sonic-bridge-macos-aarch64"
      sha256 "3cd0fb23c3cf0223f7b2e4bbe5dfe0fa8af08020e6bab80c0b1a5f6d47fb6234"
    else
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.8/sonic-bridge-macos-x86_64"
      sha256 "daa735afbe49b39b6b3ef03151de8746eb3c779aed1ff6e11b3f14ad27e985a7"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.8/sonic-bridge-linux-x86_64"
    sha256 "cfb1974b26bfdd037bd0cbac2839a65b427d9061f6b8ace05d49f95e8069e9e8"
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
