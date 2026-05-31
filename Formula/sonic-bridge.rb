class SonicBridge < Formula
  desc "An ultra-fast, lightweight physical music aesthetic and listening translation middleware designed for AI Agents"
  homepage "https://github.com/Xuepoo/sonic-bridge"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.4.2/sonic-bridge-macos-aarch64"
      sha256 "8931f2ee4960ec1fa0ab2dd26590576754939001e0c59f54ae4cd558e5c4d61c"
    else
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.4.2/sonic-bridge-macos-x86_64"
      sha256 "960569001a26b129e16f7f8ec2bb677fa559148b1856cdaaaebc4fb612d544b7"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.4.2/sonic-bridge-linux-x86_64"
    sha256 "9486ae7fba173cc8ed7825cafd75130ed928f5695a1a405db9adfd96c9d4212d"
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
