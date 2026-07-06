# Homebrew cask for a personal tap.
# Lives at Casks/razer-mouse-lite.rb in the tap repo; update version + sha256
# each release (make notarize prints the sha256).
cask "razer-mouse-lite" do
  version "1.0"
  sha256 "be6af41b3424248df76fbe83ae933d2d22f0643b2bb3d6a10773954511bf5874"

  url "https://github.com/NZKea/razer-mouse-lite-macos/releases/download/v#{version}/RazerMouseLite-#{version}.zip"
  name "Razer Mouse Lite"
  desc "Lightweight menu-bar control for Razer mice — lighting, DPI, battery, no Synapse"
  homepage "https://github.com/NZKea/razer-mouse-lite-macos"

  depends_on macos: :monterey

  app "Razer Mouse Lite.app"

  zap trash: "~/Library/Preferences/io.github.nzkea.RazerMouseLite.plist"
end
