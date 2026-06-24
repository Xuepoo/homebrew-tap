class Vectomancy < Formula
  desc "Image to vector math CLI"
  homepage "https://github.com/Xuepoo/vectomancy"
  version "6.1.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v6.1.1/vectomancy-macos-x86_64"
    sha256 "29d948f5360a920d70af04506cd657f992a9f36180e241690895d8262ff4fff6"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v6.1.1/vectomancy-macos-aarch64"
    sha256 "5f1e676c62587938a28750e3bcefc060af3d679355976a4223ae09b3f05e226f"
  end

  def install
    bin.install "vectomancy-macos-x86_64" => "vectomancy" if Hardware::CPU.intel?
    bin.install "vectomancy-macos-aarch64" => "vectomancy" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/vectomancy", "--version"
  end
end
