cask "vem" do
  version "0.1.10"

  on_arm do
    sha256 "ed135e0fa46adc178f83a8189a097ce6d79bb18980bc5b6d6299c6c81e5e9a03"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.10/Vem_0.1.10_aarch64.dmg"
  end
  on_intel do
    sha256 "ef032d5e3469d368208ed8000870d1d84223691d434d36f6b1c5d0aa6e7db93c"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.10/Vem_0.1.10_x64.dmg"
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
