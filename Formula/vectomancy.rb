class Vectomancy < Formula
  desc "Image to vector math CLI"
  homepage "https://github.com/Xuepoo/vectomancy"
  version "8.0.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v8.0.0/vectomancy-macos-x86_64"
    sha256 "6544e693e8ab727fdb408fa9a199022ae32004f8a90823c242c7cff37deae6ea"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v8.0.0/vectomancy-macos-aarch64"
    sha256 "b2da0d81dc0e0b1731b59c86de6a1693e2937567179394b943c5e72504ac10d4"
  end

  def install
    bin.install "vectomancy-macos-x86_64" => "vectomancy" if Hardware::CPU.intel?
    bin.install "vectomancy-macos-aarch64" => "vectomancy" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/vectomancy", "--version"
  end
end
