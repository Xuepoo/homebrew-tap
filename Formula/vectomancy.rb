class Vectomancy < Formula
  desc "Image to vector math CLI"
  homepage "https://github.com/Xuepoo/vectomancy"
  version "8.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v8.1.0/vectomancy-macos-x86_64"
    sha256 "ec8448e4b0b913f80cf0d3557e207891d7dfef70a137684be5c737a30d1d4eb1"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v8.1.0/vectomancy-macos-aarch64"
    sha256 "d7b96a8335fbda71d652265a5e3e647b95da60e50ed6fbc4e73deaf02d1288eb"
  end

  def install
    bin.install "vectomancy-macos-x86_64" => "vectomancy" if Hardware::CPU.intel?
    bin.install "vectomancy-macos-aarch64" => "vectomancy" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/vectomancy", "--version"
  end
end
