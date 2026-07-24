class Vectomancy < Formula
  desc "Image to vector math CLI"
  homepage "https://github.com/Xuepoo/vectomancy"
  version "6.4.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v6.4.0/vectomancy-macos-x86_64"
    sha256 "c31cd9cc9f3b63ec89507d173d9cad35b0fce6d5aef69af702106e2147ea74ab"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Xuepoo/vectomancy/releases/download/v6.4.0/vectomancy-macos-aarch64"
    sha256 "c6cb7c69f568bb0976544583f8c8fe9d15651f52d4ca383c8641a4139686ebb4"
  end

  def install
    bin.install "vectomancy-macos-x86_64" => "vectomancy" if Hardware::CPU.intel?
    bin.install "vectomancy-macos-aarch64" => "vectomancy" if Hardware::CPU.arm?
  end

  test do
    system "#{bin}/vectomancy", "--version"
  end
end
