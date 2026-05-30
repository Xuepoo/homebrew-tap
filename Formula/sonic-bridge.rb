class SonicBridge < Formula
  desc "An ultra-fast, lightweight physical music aesthetic and listening translation middleware designed for AI Agents"
  homepage "https://github.com/Xuepoo/sonic-bridge"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.3/sonic-bridge-macos-aarch64"
      sha256 "8a4edad5d70c483a5ce89856f121e28408947aba8d07db870e063a3cd490ae7a"
    else
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.3/sonic-bridge-macos-x86_64"
      sha256 "d2121e1d60b233e440c78c3eeef5f2f077a9da371cbb64e5f7d832639627b5a8"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.3.3/sonic-bridge-linux-x86_64"
    sha256 "f4b3a73254de84e0bcc62eac46552828c253e4ce2d2e29921cdee99eff332214"
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
