class Sigil < Formula
  desc "Invisible structural watermark for images"
  homepage "https://github.com/Xuepoo/sigil"
  version "0.2.0"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/sigil/releases/download/v0.2.0/sigil-macos-x86_64.tar.gz"
    sha256 "f90bfbac66b566284cc324004a0130e2ba0d69ebb58e301967acd9e2e54ae96d"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/sigil/releases/download/v0.2.0/sigil-macos-aarch64.tar.gz"
    sha256 "f3f1674b676e43ae60a56f5226ebb156c524a0e8f195fc10540d286a3063caf7"
  end

  def install
    bin.install "sigil"
  end

  test do
    system "#{bin}/sigil", "--version"
  end
end
