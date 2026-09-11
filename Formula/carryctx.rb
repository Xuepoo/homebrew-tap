class Carryctx < Formula
  desc "Local-first memory for coding agents"
   homepage "https://carryctx.xuepoo.xyz"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.0/carryctx-aarch64-apple-darwin"
      sha256 "558776ab99e1ea5277c52320b381a7cc6bcddd41984b06252f2da77d396f8589"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.0/carryctx-x86_64-apple-darwin"
      sha256 "cf7a09c020dff171bde5da20660b0b4f450bc441f60ad5fdbca3a13777bb4904"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.0/carryctx-x86_64-unknown-linux-gnu"
    sha256 "fe9a0e87708ab5e20dc7c8aeccfa97b825ed0fbbfa19acfa87bdf1e28853ffd7"
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
