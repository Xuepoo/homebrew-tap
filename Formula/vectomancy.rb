class Vectomancy < Formula
  desc "Image to vector math CLI"
  homepage "https://github.com/Xuepoo/vectomancy"
  version "6.3.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v6.3.1/vectomancy-macos-x86_64"
    sha256 "e344c7d1a7791875a848f6439a50167a213e4e527724a1c78069b5389ba7ee47"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v6.3.1/vectomancy-macos-aarch64"
    sha256 "3c4f41134ca036e73eaa519e84eab1ff703f4c75b0af3aa2df87a9d48088deae"
  end

  def install
    bin.install "vectomancy-macos-x86_64" => "vectomancy" if Hardware::CPU.intel?
    bin.install "vectomancy-macos-aarch64" => "vectomancy" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/vectomancy", "--version"
  end
end
