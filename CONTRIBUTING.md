# Contributing to Xuepoo's Homebrew Tap

Thank you for your interest in contributing to this Homebrew tap! This document provides guidelines and information for contributors.

## How to Contribute

### Reporting Issues

If you encounter any issues with the packages, please:

1. Check if the issue exists in the original repository
2. If it's a packaging issue, open an issue in this repository
3. Use the issue template provided
4. Include the package name, version, and error message

### Submitting Pull Requests

1. Fork the repository
2. Create a new branch for your changes
3. Make your changes
4. Test the formula locally
5. Submit a pull request using the provided template

## Development Guidelines

### Formula Conventions

- Follow Homebrew's formula conventions
- Use consistent formatting
- Include proper descriptions
- Add tests when possible
- Update version numbers correctly

### Testing Formulas

Before submitting a formula, test it locally:

```bash
# Install from local formula
brew install --build-from-source ./Formula/package-name.rb

# Run tests
brew test package-name

# Check for style issues
brew style --fix ./Formula/package-name.rb
```

### Adding New Packages

To add a new package:

1. Create a new Ruby formula file in the `Formula/` directory
2. Use the formula template from the README
3. Include proper metadata (description, homepage, license)
4. Add installation instructions for macOS and Linux
5. Include a test block

### Updating Existing Packages

To update an existing package:

1. Update the version number
2. Update the download URLs
3. Update the SHA256 hashes
4. Test the updated formula

## Code Style

### Ruby Style

- Use 2 spaces for indentation
- Follow Ruby style guidelines
- Use consistent naming conventions
- Add comments for complex logic

### Formula Structure

```ruby
class PackageName < Formula
  desc "Description"
  homepage "https://github.com/Xuepoo/package-name"
  version "x.y.z"
  license "MIT"

  # Platform-specific installation
  on_macos do
    # macOS installation
  end

  on_linux do
    # Linux installation
  end

  def install
    # Installation logic
  end

  test do
    # Test block
  end
end
```

## Release Process

### Version Updates

1. Update the formula with new version
2. Update download URLs
3. Update SHA256 hashes
4. Test the formula
5. Submit a pull request

### Testing Releases

Before releasing:

1. Test on macOS (Intel and Apple Silicon)
2. Test on Linux
3. Verify all downloads work
4. Run the test block

## Community Guidelines

### Be Respectful

- Be respectful to other contributors
- Provide constructive feedback
- Help others when possible

### Communication

- Use clear and concise language
- Provide detailed information in issues
- Respond to comments in a timely manner

## Getting Help

If you need help:

1. Check the Homebrew documentation
2. Look at existing formulas for examples
3. Open an issue for questions
4. Join the Homebrew community

## License

By contributing to this project, you agree that your contributions will be licensed under the MIT License.

## Acknowledgments

- Thanks to the Homebrew community
- Thanks to all contributors
- Thanks to users who report issues