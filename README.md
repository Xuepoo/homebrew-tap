# Xuepoo's Homebrew Tap

A personal Homebrew tap for Xuepoo's CLI packages. This repository contains Homebrew formulas for installing various command-line tools developed by Xuepoo.

## Installation

First, add this tap to your Homebrew:

```bash
brew tap Xuepoo/homebrew-tap
```

Then install any package from this tap:

```bash
brew install Xuepoo/homebrew-tap/<package-name>
```

## Available Packages

| Package | Description | Version |
|---------|-------------|---------|
| [agent-book-translate](https://github.com/Xuepoo/agent-book-translate) | A powerful LLM-driven agentic EPUB book translator with robust progress monitoring and recovery | 0.1.7 |
| [agent-lx-music](https://github.com/Xuepoo/agent-lx-music) | Intelligent agent-driven music management tools | 0.3.3 |
| [sonic-bridge](https://github.com/Xuepoo/sonic-bridge) | An ultra-fast, lightweight, zero-pretrain-model physical music aesthetic & listening translation middleware for AI Agents & LLMs | 0.6.0 |
| [waywarp_scanner](https://github.com/Xuepoo/waywarp-scanner) | High-performance Wayland GUI layout scanner for AI Agents | 0.1.0 |

## Usage Examples

### Install agent-book-translate
```bash
brew tap Xuepoo/homebrew-tap
brew install agent-book-translate
```

### Install sonic-bridge
```bash
brew install sonic-bridge
```

## Updating Packages

To update a package to the latest version:

```bash
brew update
brew upgrade <package-name>
```

## Adding New Packages

To add a new package to this tap:

1. Create a new Ruby formula file in the `Formula/` directory
2. Follow the Homebrew formula conventions
3. Submit a pull request

### Formula Template

```ruby
class PackageName < Formula
  desc "Short description of the package"
  homepage "https://github.com/Xuepoo/package-name"
  version "x.y.z"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Xuepoo/package-name/releases/download/v#{version}/package-name-macos-aarch64"
      sha256 "HASH_HERE"
    else
      url "https://github.com/Xuepoo/package-name/releases/download/v#{version}/package-name-macos-x86_64"
      sha256 "HASH_HERE"
    end
  end

  on_linux do
    url "https://github.com/Xuepoo/package-name/releases/download/v#{version}/package-name-linux-x86_64"
    sha256 "HASH_HERE"
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "package-name-macos-aarch64" => "package-name"
      else
        bin.install "package-name-macos-x86_64" => "package-name"
      end
    elsif OS.linux?
      bin.install "package-name-linux-x86_64" => "package-name"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/package-name --version")
  end
end
```

## Contributing

Contributions are welcome! Please feel free to submit issues or pull requests.

### Reporting Issues

If you encounter any issues with the packages, please:
1. Check if the issue exists in the original repository
2. If it's a packaging issue, open an issue here
3. Include the package name, version, and error message

### Submitting Pull Requests

1. Fork the repository
2. Create a new branch for your changes
3. Make your changes
4. Test the formula locally
5. Submit a pull request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Thanks to the Homebrew community for the excellent package manager
- Thanks to all contributors who help maintain this tap

## Contact

- GitHub: [Xuepoo](https://github.com/Xuepoo)
- Repository: [homebrew-tap](https://github.com/Xuepoo/homebrew-tap)