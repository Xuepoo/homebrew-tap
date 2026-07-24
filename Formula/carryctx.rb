class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.3.1/carryctx-aarch64-apple-darwin"
      sha256 "b71d0f8735be007dcf6f6c1d532413349d506ee3c34f2a4fbc7c8c62422f9154"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.3.1/carryctx-x86_64-apple-darwin"
      sha256 "8aabcbed2d0f3055cbc2a825fa8255349cd1affb1b7deb7b7b602af81ba43d08"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.3.1/carryctx-x86_64-unknown-linux-gnu"
    sha256 "ac4f81e8df0677f44fdb3352419337c156e042ffa19c56207d296f1bfc9991e0"
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
