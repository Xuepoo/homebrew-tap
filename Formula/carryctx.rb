class Carryctx < Formula
  desc "Local-first memory for coding agents"
   homepage "https://carryctx.xuepoo.xyz"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.1/carryctx-aarch64-apple-darwin"
      sha256 "485092bb6e5e0d01bdb53cbcd49fa30a0bb4020544e719e8db85e52fe19997b0"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.1/carryctx-x86_64-apple-darwin"
      sha256 "6e660d6f3c0fca44cfc719f8056ed7dc4b741c30e5a565ea8746f1cb2d2a97e5"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.1/carryctx-x86_64-unknown-linux-gnu"
    sha256 "0160cd0470bc7c366315ab392d38cab55dbb0e69eeab44156a9c213c62c8febc"
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
