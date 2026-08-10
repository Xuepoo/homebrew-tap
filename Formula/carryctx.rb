class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.2/carryctx-aarch64-apple-darwin"
      sha256 "8c2d8801610700561524fca3b17b6176601d3e483ca142037ddbd352fb6a1e01"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.2/carryctx-x86_64-apple-darwin"
      sha256 "5dd7d99481be725625e2909c49bf325a7fec2f47b603e4d94616b9fe489487db"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.2/carryctx-x86_64-unknown-linux-gnu"
    sha256 "84cb03752c2d1b9a57a88d93fc4c9de15a2765b7be677d8b137ac2d6a80c58e2"
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
