cask "vem" do
  version "0.1.18"

  on_arm do
    sha256 "991dd591c09fc605a17fcb8e88bb1d0042177ee04a77c57312b90cf59a9b3f4a"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.18/Vem_0.1.18_aarch64.dmg"
  end
  on_intel do
    sha256 "3d2d7eb35db927cfcf77042f89ff9f508726c519771a0a9c4197e0cfd572db94"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.18/Vem_0.1.18_x64.dmg"
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
