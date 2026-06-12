class Vectomancy < Formula
  desc "Image to vector math CLI"
  homepage "https://github.com/Xuepoo/vectomancy"
  version "5.0.14"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v5.0.14/vectomancy-macos-x86_64"
    sha256 "01c1e14ce4f1ff555e7770a21eb3a5f95bdb61de20082d67fe01e03e1f89abfe"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v5.0.14/vectomancy-macos-aarch64"
    sha256 "db1d4e80b31fc12a7bf820a079f97be81ac7d2e6b0118671f3cb8cb1d0d4ad05"
  end

  def install
    bin.install "vectomancy-macos-x86_64" => "vectomancy" if Hardware::CPU.intel?
    bin.install "vectomancy-macos-aarch64" => "vectomancy" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/vectomancy", "--version"
  end
end
