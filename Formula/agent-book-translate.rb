class AgentBookTranslate < Formula
  desc "A powerful LLM-driven agentic EPUB book translator with robust progress monitoring and recovery"
  homepage "https://github.com/Xuepoo/agent-book-translate"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/agent-book-translate/releases/download/v0.1.7/agent-book-translate-macos-aarch64"
      sha256 "604759749393853d5c22e46c6c830ba5e89e5b9a07e32d0f389bc419deae6248"
    else
      url "https://github.com/Xuepoo/agent-book-translate/releases/download/v0.1.7/agent-book-translate-macos-x86_64"
      sha256 "6e86685e1cb0bc7a15a55ed0c3a23339e4a62c59d988cd5c96c4315eda782b52"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/agent-book-translate/releases/download/v0.1.7/agent-book-translate-linux-x86_64"
    sha256 "57a79ce34eaeb849512fee1119e1c1f6e052c9d8cbdc32fb437c2455de3718e3"
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "agent-book-translate-macos-aarch64" => "agent-book-translate"
      else
        bin.install "agent-book-translate-macos-x86_64" => "agent-book-translate"
      end
    elsif OS.linux?
      bin.install "agent-book-translate-linux-x86_64" => "agent-book-translate"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-book-translate --version")
  end
end
