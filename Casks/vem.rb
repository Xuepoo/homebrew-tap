cask "vem" do
  version "0.1.16"

  on_arm do
    sha256 "ca6ba664529fdfa95398d934ed1236ffb9eb60b16997f465ee5e8461d3f2f37d"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.16/Vem_0.1.16_aarch64.dmg"
  end
  on_intel do
    sha256 "ab03e1a1fec3931a9f157727af9300ad9def708556931e4157d62d06aa6d2141"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.16/Vem_0.1.16_x64.dmg"
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
