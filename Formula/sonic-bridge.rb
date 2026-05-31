class SonicBridge < Formula
  desc "An ultra-fast, lightweight physical music aesthetic and listening translation middleware designed for AI Agents"
  homepage "https://github.com/Xuepoo/sonic-bridge"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.4.2/sonic-bridge-macos-aarch64"
      sha256 "1bff4e0cbf401459e9496c7836c64728ab7c7ed66f9f3312467f99a48e25d64f"
    else
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.4.2/sonic-bridge-macos-x86_64"
      sha256 "e3f6bbc9e8de70cb22273f8090f9f6ef106cf1f909d8b85ac1557cce097e5a08"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.4.2/sonic-bridge-linux-x86_64"
    sha256 "9895fb6427bebc5adc846b5cc9da15f2bdddb8db732b387e04fb0fe0d47cb0d3"
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
