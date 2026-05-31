class SonicBridge < Formula
  desc "An ultra-fast, lightweight physical music aesthetic and listening translation middleware designed for AI Agents"
  homepage "https://github.com/Xuepoo/sonic-bridge"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.5.0/sonic-bridge-macos-aarch64"
      sha256 "6f9ae7405433208372784381cd538ccf04d6a9bf3b215142b7c64cef315f20b2"
    else
      url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.5.0/sonic-bridge-macos-x86_64"
      sha256 "998543170b91faa91e6dff327574dfb79d0e1ac5a9c13457ff96732cac9bd35c"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/sonic-bridge/releases/download/v0.5.0/sonic-bridge-linux-x86_64"
    sha256 "36c92af8d52c1c1ae7bfb037e72e1108212c65cac5305f38b8828bfb2f62f85b"
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
