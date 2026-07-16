cask "vem" do
  version "0.1.5"

  on_arm do
    sha256 "89bf4c78b8b8fd7d7d7ea6b1e77bd53fcc5c93f0e98e4d7766e1da96b119ec74"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.5/Vem_0.1.5_aarch64.dmg"
  end
  on_intel do
    sha256 "9e3ecc3153abcfe7a7e2cc4edf7db667add451234630e4e0adfb5ce529f484fd"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.5/Vem_0.1.5_x64.dmg"
  end

  name "Vem"
  desc "A next-generation Vim editor powered by VectoJS, running natively via Tauri"
  homepage "https://vem.run"

  app "Vem.app"

  zap trash: [
    "~/Library/Application Support/run.vem.desktop",
    "~/Library/WebKit/run.vem.desktop",
    "~/Library/Saved Application State/run.vem.desktop.savedState",
  ]
end
