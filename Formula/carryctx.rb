class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.6.0/carryctx-aarch64-apple-darwin"
      sha256 "efb53a0d3cdb9479fbaaa8f9f8fe285430051fafc0071074c28cf5aa01060844"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.6.0/carryctx-x86_64-apple-darwin"
      sha256 "1ca8a7de416d60146c540bbaf712ebcb44f4eaa200c3b8a54a9a11c017a65387"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.6.0/carryctx-x86_64-unknown-linux-gnu"
    sha256 "60b2d432e885613482f4e3a00edb4be8cb64675fdf5dc2f8e03d7fbecd8f4be9"
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
