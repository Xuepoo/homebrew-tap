cask "vem" do
  version "0.1.3"

  on_arm do
    sha256 "142050ee06ba25cfd8d3f12e74affa9ca8adced86cb028a36654a0e7f1ae70e7"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.3/Vem_0.1.3_aarch64.dmg"
  end
  on_intel do
    sha256 "4eb43d24cd05dc3515b918e3f5a097b288ba4011706456c27bc938a8a79c59d4"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.3/Vem_0.1.3_x64.dmg"
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
