class Carryctx < Formula
  desc "Local-first memory for coding agents"
   homepage "https://carryctx.xuepoo.xyz"
  version "0.11.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.6/carryctx-aarch64-apple-darwin"
      sha256 "a74cb8867a7c65f514dc5c6e3c9e743a8d825778d0da1db81f7ef7522686bcd5"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.6/carryctx-x86_64-apple-darwin"
      sha256 "f994c2012023f41f3b80286f6ee49d2fa8f1c5484e067e50f84bb4a19f87a097"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.6/carryctx-x86_64-unknown-linux-gnu"
    sha256 "d87e8dc0eb15dd1057e4f9fefd3fd573f09816056726188da77c25baa43cf680"
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
