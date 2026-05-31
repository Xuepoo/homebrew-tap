class SonicBridge < Formula
  desc "An ultra-fast, lightweight physical music aesthetic and listening translation middleware designed for AI Agents"
  homepage "https://github.com/Xuepoo/sonic-bridge"
  version "0.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.7/sonic-bridge-macos-aarch64"
      sha256 "de75a8b3e1e341bf62bc143629043abb7dcd280af89b4443ce26545893d5a6ef"
    else
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.7/sonic-bridge-macos-x86_64"
      sha256 "46dbbe4997c65fbd7687bc8093188b7988856270bf71e70c5f4fe62782c4f3aa"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.7/sonic-bridge-linux-x86_64"
    sha256 "079977896f9f997e5ba905e2b0495fed8de14b6ffbc63367c568d42a7defee91"
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
