class Vectomancy < Formula
  desc "Image to vector math CLI"
  homepage "https://github.com/Xuepoo/vectomancy"
  version "7.0.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v7.0.0/vectomancy-macos-x86_64"
    sha256 "3dec4bec73deb00b8d0584681a34fcb9f493c8e62e9ed5b7569b3b909f776b4f"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v7.0.0/vectomancy-macos-aarch64"
    sha256 "01173ef3a22a4ffd0c67ebd8a9b1c49b4cdd4834520eaf60c409c0b39a4fd7d3"
  end

  def install
    bin.install "vectomancy-macos-x86_64" => "vectomancy" if Hardware::CPU.intel?
    bin.install "vectomancy-macos-aarch64" => "vectomancy" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/vectomancy", "--version"
  end
end
