class SonicBridge < Formula
  desc "An ultra-fast, lightweight physical music aesthetic and listening translation middleware designed for AI Agents"
  homepage "https://github.com/Xuepoo/sonic-bridge"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.2/sonic-bridge-macos-aarch64"
      sha256 "c08d747a393eb1098384b008391147409dab6bb3c904613c5340a98b0f21a96c"
    else
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.2/sonic-bridge-macos-x86_64"
      sha256 "f2916cb157da8c586b0650a62347629e897a9579ae163e484fd706c71792a356"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.2/sonic-bridge-linux-x86_64"
    sha256 "e6f7025907d5dbae636438185cb87ac4c7c1167044a06e894d7f703b9fe5d279"
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
