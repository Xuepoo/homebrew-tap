class SonicBridge < Formula
  desc "An ultra-fast, lightweight physical music aesthetic and listening translation middleware designed for AI Agents"
  homepage "https://github.com/Xuepoo/sonic-bridge"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.4.1/sonic-bridge-macos-aarch64"
      sha256 "853ac7cddaec8b3a77844ac4c73f4abd6d30665a80dea48a3b5396d85ccf4f15"
    else
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.4.1/sonic-bridge-macos-x86_64"
      sha256 "10732fb81bd4fe8ae6944a5707d82bc15acded4e35626d295e37af57dc9a8be5"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.4.1/sonic-bridge-linux-x86_64"
    sha256 "9ab642aa1bdb7af8cbd3325db9c21474487b12c03f6b8b7844aecfc94e3e8f21"
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
