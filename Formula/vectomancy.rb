class Vectomancy < Formula
  desc "Image to vector math CLI"
  homepage "https://github.com/Xuepoo/vectomancy"
  version "7.1.4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v7.1.4/vectomancy-macos-x86_64"
    sha256 "a15c0e40f34b8db24d5530ae6f59bf423b30d64d9e475091e5ed2af990c779c7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v7.1.4/vectomancy-macos-aarch64"
    sha256 "5e79246ad408d84812dd6ed27df434dee631bfbda979e8bb36f5dbdd190a9099"
  end

  def install
    bin.install "vectomancy-macos-x86_64" => "vectomancy" if Hardware::CPU.intel?
    bin.install "vectomancy-macos-aarch64" => "vectomancy" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/vectomancy", "--version"
  end
end
