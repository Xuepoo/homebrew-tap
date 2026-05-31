class SonicBridge < Formula
  desc "An ultra-fast, lightweight physical music aesthetic and listening translation middleware designed for AI Agents"
  homepage "https://github.com/Xuepoo/sonic-bridge"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.4.0/sonic-bridge-macos-aarch64"
      sha256 "966f4f141abaae885677ae31754ff9c3b6d41465c2a36c43991718be91d53eef"
    else
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.4.0/sonic-bridge-macos-x86_64"
      sha256 "54e0236d1d1051b40ba94c0dec77118d24c02b9ff407f53a8e40381ce734db09"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.4.0/sonic-bridge-linux-x86_64"
    sha256 "99faba17f1e6ae72f8e2d7137575172fec4015e643134892411200571290bc09"
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
