class Vectomancy < Formula
  desc "Image to vector math CLI"
  homepage "https://github.com/Xuepoo/vectomancy"
  version "7.1.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v7.1.2/vectomancy-macos-x86_64"
    sha256 "11e1001031cb590ea54c9927964906faaa1b6d8141679e082ebf1a9fd7501144"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v7.1.2/vectomancy-macos-aarch64"
    sha256 "3987039b8468c863dcd23333aca5f9ae4c4d68564bf488727ef03b5e76e44c64"
  end

  def install
    bin.install "vectomancy-macos-x86_64" => "vectomancy" if Hardware::CPU.intel?
    bin.install "vectomancy-macos-aarch64" => "vectomancy" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/vectomancy", "--version"
  end
end
