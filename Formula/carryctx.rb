class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.6.1/carryctx-aarch64-apple-darwin"
      sha256 "b9c00980dc5c86d002a2e172dd65e0dd14ea6895ac3535ba6b41dbb57e84ec28"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.6.1/carryctx-x86_64-apple-darwin"
      sha256 "2aa447de88b925d0f9ee84a2a21e39a837048ab1a8d34ae7f20d167f8e2deb0c"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.6.1/carryctx-x86_64-unknown-linux-gnu"
    sha256 "61cfa60632ef8854700d1f569aff34fabd6cd5100065dd10e4dd8466186255b9"
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "carryctx-aarch64-apple-darwin" => "carryctx"
      else
        bin.install "carryctx-x86_64-apple-darwin" => "carryctx"
      end
    elsif OS.linux?
      bin.install "carryctx-x86_64-unknown-linux-gnu" => "carryctx"
    end
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/carryctx --version")
  end
end
