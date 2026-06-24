class Vectomancy < Formula
  desc "Image to vector math CLI"
  homepage "https://github.com/Xuepoo/vectomancy"
  version "6.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v6.1.0/vectomancy-macos-x86_64"
    sha256 "baf2d392c8a5348fbb9cb1074cbba3d214b8ec85875ab84be438a04d53ff07fd"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v6.1.0/vectomancy-macos-aarch64"
    sha256 "00f5611c381e0cef961ebaf809fd253bd7a7b121222c086bc51bea9bfb7af0a9"
  end

  def install
    bin.install "vectomancy-macos-x86_64" => "vectomancy" if Hardware::CPU.intel?
    bin.install "vectomancy-macos-aarch64" => "vectomancy" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/vectomancy", "--version"
  end
end
