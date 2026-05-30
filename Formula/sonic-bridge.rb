class SonicBridge < Formula
  desc "An ultra-fast, lightweight physical music aesthetic and listening translation middleware designed for AI Agents"
  homepage "https://github.com/Xuepoo/sonic-bridge"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.4/sonic-bridge-macos-aarch64"
      sha256 "89273bde1863476cbd23d405bf4bd0fe9497919666680747e401c7cd9faceb8a"
    else
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.4/sonic-bridge-macos-x86_64"
      sha256 "3577bef99022576c0a436f465df9df0481ff74de99b3c6c230baa6855f2cf8fb"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.4/sonic-bridge-linux-x86_64"
    sha256 "af18ae9b03e0b46771f2c69425bddf9153333d33eedc2312a6c111aab2f33322"
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
