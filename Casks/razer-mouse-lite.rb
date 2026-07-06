# Homebrew cask for a personal tap.
# Lives at Casks/razer-mouse-lite.rb in the tap repo; update version + sha256
# each release (make notarize prints the sha256).
cask "razer-mouse-lite" do
  version "1.0"
  sha256 "5016fac25bed75a900df9e479a846897db6af00e6a38875272ec01c144bb2f82"

  url "https://github.com/NZKea/razer-mouse-lite-macos/releases/download/v#{version}/RazerMouseLite-#{version}.zip"
  name "Razer Mouse Lite"
  desc "Lightweight menu-bar control for Razer mice — lighting, DPI, battery, no Synapse"
  homepage "https://github.com/NZKea/razer-mouse-lite-macos"

  depends_on macos: :monterey

  app "Razer Mouse Lite.app"

  zap trash: "~/Library/Preferences/io.github.nzkea.RazerMouseLite.plist"
end
