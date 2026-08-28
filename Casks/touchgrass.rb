cask "touchgrass" do
  version "1.2.0"
  sha256 "0919dbc507a0ff60005506d3e24fd9a6761f16afaf4ae9c1cfdd77a511d91922"

  url "https://github.com/AbbasPlusPlus/touchgrass-releases/releases/download/v#{version}/TouchGrass.zip"
  name "TouchGrass"
  desc "Menu bar break reminder that waits for the right moment"
  homepage "https://grass.mohammadabbas.com/"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "TouchGrass.app"

  # TouchGrass is independently built (ad-hoc signed, not notarized). Homebrew quarantines
  # cask downloads, which Gatekeeper then blocks outright on modern macOS — so strip the
  # flag after install, same as the website's curl installer.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/TouchGrass.app"],
                   must_succeed: false
  end
end
