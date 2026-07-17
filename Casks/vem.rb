cask "vem" do
  version "0.1.6"

  on_arm do
    sha256 "2159f152868ddd454441e5820f871de1356e4f721080fa0f6a93f5caaa365cb8"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.6/Vem_0.1.6_aarch64.dmg"
  end
  on_intel do
    sha256 "50720101467e8fbf728591235f56efaf7ca3b3e441e84bb6fef8039d1f9ff6d8"
    url "https://github.com/vemjs/vem-desktop/releases/download/v0.1.6/Vem_0.1.6_x64.dmg"
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
