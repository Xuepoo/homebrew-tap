class WaywarpScanner < Formula
  include Language::Python::Virtualenv

  desc "High-performance Wayland GUI layout scanner for AI Agents"
  homepage "https://github.com/Xuepoo/waywarp_scanner"
  url "https://github.com/Xuepoo/waywarp_scanner/releases/download/v0.1.6/waywarp_scanner-0.1.6.tar.gz"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/waywarp_scanner --version")
  end
end
