cask "touchgrass" do
  version "1.0.0"
  sha256 "05ad0634c01eed8161a61ed0917c2a65279cc1b0a6114f8ad6f4719af53c5457"

  url "https://github.com/AbbasPlusPlus/touchgrass-releases/releases/download/v#{version}/TouchGrass.zip"
  name "TouchGrass"
  desc "Menu bar break reminder that waits for the right moment"
  homepage "https://touchgrass-landing.vercel.app/"

  app "TouchGrass.app"

  caveats <<~EOS
    TouchGrass is independently built and not notarized by Apple.
    Install with --no-quarantine (as the website suggests) so Gatekeeper
    doesn't object on first launch:
      brew reinstall --cask --no-quarantine touchgrass
  EOS
end
