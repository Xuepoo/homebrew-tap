class Sigil < Formula
  desc "Invisible structural watermark for images"
  homepage "https://github.com/Xuepoo/sigil"
  version "0.1.0"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/sigil/releases/download/v0.1.0/sigil-macos-x86_64.tar.gz"
    sha256 "eb7073e48d37a3241edbbddc001f37ca11ef2e3e249cb7a9fc0c17e8b8426b2a"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/sigil/releases/download/v0.1.0/sigil-macos-aarch64.tar.gz"
    sha256 "07d6c2f241bd7b78e6efc39adef75cbc81b6933119f90470254ba7caef47930d"
  end

  def install
    bin.install "sigil"
  end

  test do
    system "#{bin}/sigil", "--version"
  end
end
