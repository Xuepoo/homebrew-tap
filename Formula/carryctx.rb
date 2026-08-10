class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.0/carryctx-aarch64-apple-darwin"
      sha256 "ac79a970d3905a7eb8fa6670aa3300103e8178de5bbdb4617cdf80ce7b08946a"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.0/carryctx-x86_64-apple-darwin"
      sha256 "bbc3926923774839526a4f29a4ecb2cf612605758cbca6d03e4ea37d280a1710"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.0/carryctx-x86_64-unknown-linux-gnu"
    sha256 "48850ed3f40c62148b8aaf69062c72da5c8a6a552bf90f9489febc6ed70140c7"
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
