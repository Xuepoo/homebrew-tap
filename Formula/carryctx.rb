class Carryctx < Formula
  desc "Local-first memory for coding agents"
   homepage "https://carryctx.xuepoo.xyz"
  version "0.11.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.3/carryctx-aarch64-apple-darwin"
      sha256 "4beb280f07bc84b214699a86cb71b665649fef6afa97d54c45878072e1e0bb4a"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.3/carryctx-x86_64-apple-darwin"
      sha256 "0de65836314981663c754c0a050a20de62066ed3214f54a400753e95e8cd2db0"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.11.3/carryctx-x86_64-unknown-linux-gnu"
    sha256 "694f16b05c66acc03217e5cec1f539308f2b13a9772d00b5e0e93c8837a7b19d"
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
