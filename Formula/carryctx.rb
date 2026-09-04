class Carryctx < Formula
  desc "Local-first memory for coding agents"
   homepage "https://carryctx.xuepoo.xyz"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.8.1/carryctx-aarch64-apple-darwin"
      sha256 "7a9c2b0ff4a41ec69ee66f9eab14dab094331e3667c26f8499ff3674d0d3154e"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.8.1/carryctx-x86_64-apple-darwin"
      sha256 "e5fb925e480471f63214c0f487e3f3373a0c866c715358c85f1f65935b49ece5"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.8.1/carryctx-x86_64-unknown-linux-gnu"
    sha256 "38a420261922dcc8c9b81c8ec76d7dc4526fc5c44d0d081839951b28ad55fafc"
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
