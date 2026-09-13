class Carryctx < Formula
  desc "Local-first memory for coding agents"
   homepage "https://carryctx.xuepoo.xyz"
  version "0.11.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.4/carryctx-aarch64-apple-darwin"
      sha256 "5475684402b1e68b1bfeb164e347e54e5fab968e45a76df511efdc01c1d953a8"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.4/carryctx-x86_64-apple-darwin"
      sha256 "8067bbc6bea4d1157cd3793a98cbaed21e794ae3a78f13952cadb31aa0c66abf"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.4/carryctx-x86_64-unknown-linux-gnu"
    sha256 "1cc8233f7a0d9401d9c1ba4df6ec708a611418219792e4e69c331ad40e65e54d"
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
