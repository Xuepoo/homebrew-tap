class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.5/carryctx-aarch64-apple-darwin"
      sha256 "9039321495f238e23d377aa3cf555b6ee83111e83ad3c00871d348a85e76826a"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.5/carryctx-x86_64-apple-darwin"
      sha256 "2a33d0d14695789b8d34a5da989808e49bd824734db9af904d9600cae742f7ae"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.4.5/carryctx-x86_64-unknown-linux-gnu"
    sha256 "c2e7367a811c891f7b4da2748df191a55a28c6a6e16821f687ccf3680d2b1687"
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
