class Carryctx < Formula
  desc "Local-first memory for coding agents"
   homepage "https://carryctx.xuepoo.xyz"
  version "0.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.12.0/carryctx-aarch64-apple-darwin"
      sha256 "c085fb9a0d0ce885b143be53894d3a7c6080802001d107ab26d728e228c58e20"
    else
      url "https://github.com/Xuepoo/carryctx/releases/download/v0.12.0/carryctx-x86_64-apple-darwin"
      sha256 "bde8d7705be3375dc15b924c57dd25b8a2303a53a83d0900d9cabdba7f504e2e"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/carryctx/releases/download/v0.12.0/carryctx-x86_64-unknown-linux-gnu"
    sha256 "88826a02c18cc8754a301c4da8678c6d8ed7f4cdd2ce7dfc2004f27a36176a63"
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
