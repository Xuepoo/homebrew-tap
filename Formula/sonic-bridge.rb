class SonicBridge < Formula
  desc "An ultra-fast, lightweight physical music aesthetic and listening translation middleware designed for AI Agents"
  homepage "https://github.com/Xuepoo/sonic-bridge"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.5/sonic-bridge-macos-aarch64"
      sha256 "962248bccc98ac8ed56cfffae6f621cdcb9db43d7d2deeaa253685bc9616b687"
    else
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.5/sonic-bridge-macos-x86_64"
      sha256 "9249eb801576aa504ca1a02a8167498b08dd505d05e6c3227765a755606f2b58"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.5/sonic-bridge-linux-x86_64"
    sha256 "8460f2058ec95b4d7896689ac28b21288a5b192d73ba1cd05636593264e9908c"
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
