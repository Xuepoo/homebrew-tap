class Carryctx < Formula
  desc "Local-first memory for coding agents"
  homepage "https://carryctx.dev"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.1/carryctx-aarch64-apple-darwin"
      sha256 "ec0470c6673ee35c28ad86022767cb75eb66e3a12949ad93dad21f64a9c8aab5"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.1/carryctx-x86_64-apple-darwin"
      sha256 "cab7611800681e4a18fc0621a10ab7a97c81576480a902e4c061e72a8289b848"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.5.1/carryctx-x86_64-unknown-linux-gnu"
    sha256 "e1b1586b5a2d864fbec9a7c937e0ca013571f6ff8766d51e5d8c9149a822e75c"
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
