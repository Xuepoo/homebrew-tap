class Vectomancy < Formula
  desc "Image to vector math CLI"
  homepage "https://github.com/Xuepoo/vectomancy"
  version "5.0.12"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v5.0.12/vectomancy-macos-x86_64"
    sha256 "02039703eed28786156a63e90c36bd7bc1c0f611cb47304116928598b7afcbb6"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v5.0.12/vectomancy-macos-aarch64"
    sha256 "99454e19afcc3b8a3aa227edfa7dd7d46731a64e05ae7582aad3609db2a9abf3"
  end

  def install
    bin.install "vectomancy-macos-x86_64" => "vectomancy" if Hardware::CPU.intel?
    bin.install "vectomancy-macos-aarch64" => "vectomancy" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/vectomancy", "--version"
  end
end
