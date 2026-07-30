class Vectomancy < Formula
  desc "Image to vector math CLI"
  homepage "https://github.com/Xuepoo/vectomancy"
  version "7.1.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v7.1.1/vectomancy-macos-x86_64"
    sha256 "c30ece991ec767a2a370d68c221e41c6d30bf56fb6114234b9537bae8cfa5fac"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v7.1.1/vectomancy-macos-aarch64"
    sha256 "87171703b0432fcbcee148794df4d251b652ded2235655fb2cbfa7273f7e23b5"
  end

  def install
    bin.install "vectomancy-macos-x86_64" => "vectomancy" if Hardware::CPU.intel?
    bin.install "vectomancy-macos-aarch64" => "vectomancy" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/vectomancy", "--version"
  end
end
