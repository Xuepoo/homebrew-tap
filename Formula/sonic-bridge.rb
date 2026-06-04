class SonicBridge < Formula
  desc "An ultra-fast, lightweight physical music aesthetic and listening translation middleware designed for AI Agents"
  homepage "https://github.com/Xuepoo/sonic-bridge"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.7.0/sonic-bridge-macos-aarch64"
      sha256 "02906aa358bf19eba9a7bdc8188e714dbc9a60d76c58e95c7b86101da5f59d70"
    else
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.7.0/sonic-bridge-macos-x86_64"
      sha256 "9aaef4596917e4d2c00eb72b8e3c70ad76608a0d0cb5c624e894e45837bc7ebd"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.7.0/sonic-bridge-linux-x86_64"
    sha256 "28cbc5e1dcb6869ce8d52ec38c8fd9815a0cde8bdc62cddad1b77cbac2f840ff"
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
