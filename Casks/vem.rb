cask "vem" do
  version "0.1.7"

  on_arm do
    sha256 "e94b5347e97e066612a57c2ad4e32279747d2fb8e3b51b33bc4a3afd3309b3a4"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.7/Vem_0.1.7_aarch64.dmg"
  end
  on_intel do
    sha256 "22d2620d3bace9604a03eb76876f92623270db8bffbfa9320e52a4a4413c8b20"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.7/Vem_0.1.7_x64.dmg"
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
