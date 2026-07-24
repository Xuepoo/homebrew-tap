class Vectomancy < Formula
  desc "Image to vector math CLI"
  homepage "https://github.com/Xuepoo/vectomancy"
  version "6.3.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v6.3.0/vectomancy-macos-x86_64"
    sha256 "2669ea9fdfa2625d5d4e5485aa5ef67b26530b78923dae60e700a5537f6d1824"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v6.3.0/vectomancy-macos-aarch64"
    sha256 "0494b2f8ff099ef671b82790f173650187254e704101ab612a3666ab82260fb3"
  end

  def install
    bin.install "vectomancy-macos-x86_64" => "vectomancy" if Hardware::CPU.intel?
    bin.install "vectomancy-macos-aarch64" => "vectomancy" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/vectomancy", "--version"
  end
end
