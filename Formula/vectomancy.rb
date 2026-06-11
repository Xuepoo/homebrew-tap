class Vectomancy < Formula
  desc "Image to vector math CLI"
  homepage "https://github.com/Xuepoo/vectomancy"
  version "5.0.11"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v5.0.11/vectomancy-macos-x86_64"
    sha256 "276988cbccb485bc2a7cdcf3b7625de924e5e177d0783a7744928bb5fcd24f27"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v5.0.11/vectomancy-macos-aarch64"
    sha256 "b68d225f61ddcfac45603e4c83525fbeb55170bcecd138203c2fd22044392cbc"
  end

  def install
    bin.install "vectomancy-macos-x86_64" => "vectomancy" if Hardware::CPU.intel?
    bin.install "vectomancy-macos-aarch64" => "vectomancy" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/vectomancy", "--version"
  end
end
