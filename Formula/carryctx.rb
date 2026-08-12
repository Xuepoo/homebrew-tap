class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.5.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.6/carryctx-aarch64-apple-darwin"
      sha256 "6ba2e64b9e45c459d9555c4f964315d52b26a8eef73f10df36e5ef5bb4785e32"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.6/carryctx-x86_64-apple-darwin"
      sha256 "fd076a5eb443622974d8e9f6e24d311cd76a37d8d4c973b5ce39915d63b9278a"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.6/carryctx-x86_64-unknown-linux-gnu"
    sha256 "162db4df4daeb5780673738094ea533e664a43031d9204afb8833cec3edfc7cd"
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
