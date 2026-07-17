cask "vem" do
  version "0.1.8"

  on_arm do
    sha256 "784c0a6ab733367f325e1ba84ae7e0a55803d55edcfa519acfa2581b7295f4b7"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.8/Vem_0.1.8_aarch64.dmg"
  end
  on_intel do
    sha256 "70e7d9a2da7f32fa5bac1dd70d1ed1c85cad8b7224afbb717c9e23bc1d9aa9d8"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.8/Vem_0.1.8_x64.dmg"
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
