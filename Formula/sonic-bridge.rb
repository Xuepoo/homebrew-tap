class SonicBridge < Formula
  desc "An ultra-fast, lightweight physical music aesthetic and listening translation middleware designed for AI Agents"
  homepage "https://github.com/Xuepoo/sonic-bridge"
  version "0.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.6/sonic-bridge-macos-aarch64"
      sha256 "e9f69432b08a45280adc2928082a9633cdedb8893c1a37271e215d00ddc60155"
    else
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.6/sonic-bridge-macos-x86_64"
      sha256 "6c6d291d009b0844340dc779d8f7cd91c66ca876a0e98e3c288800b606108c0e"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.6/sonic-bridge-linux-x86_64"
    sha256 "591c34aba9b987426ae382c6b790c07954fa1a6ab9c10cbc3c81712392ae2266"
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
