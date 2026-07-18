cask "vem" do
  version "0.1.15"

  on_arm do
    sha256 "0d7654d95c1e6498cfeb489f34ef352964f64db232c3429ecc7aed182dc90ccd"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.15/Vem_0.1.15_aarch64.dmg"
  end
  on_intel do
    sha256 "268b90415f73af99d4e2339b4c649ed01902b4c41c8e9029a556ebbcd84ab169"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.15/Vem_0.1.15_x64.dmg"
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
