class Vectomancy < Formula
  desc "Image to vector math CLI"
  homepage "https://github.com/Xuepoo/vectomancy"
  version "7.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v7.1.0/vectomancy-macos-x86_64"
    sha256 "b585746e34cacd5fafd1b9141b7ed0a3f8b0fc1482c1ff567cefdf48eeff5764"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v7.1.0/vectomancy-macos-aarch64"
    sha256 "7f3dd18e8fb7a92f3c7658ea28a54d6beb64cdf297a3d5ff159710a2a2849637"
  end

  def install
    bin.install "vectomancy-macos-x86_64" => "vectomancy" if Hardware::CPU.intel?
    bin.install "vectomancy-macos-aarch64" => "vectomancy" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/vectomancy", "--version"
  end
end
