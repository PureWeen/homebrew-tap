cask "polypilot" do
  version "1.0.16"
  sha256 "04150532021aea0bb2b76cdd5d621224def22bc38d0271482b0b6c5006ab7aa0"

  url "https://github.com/PureWeen/PolyPilot/releases/download/v#{version}/PolyPilot.zip"
  name "PolyPilot"
  desc "Multi-session GitHub Copilot client built with .NET MAUI"
  homepage "https://github.com/PureWeen/PolyPilot"

  # Requires macOS 14+ (Sonoma) for Mac Catalyst support
  depends_on macos: ">= :sonoma"

  app "PolyPilot.app"

  caveats <<~EOS
    PolyPilot requires the GitHub Copilot CLI (`copilot`) on your PATH.
    If you don't have it, install with one of:
      brew install --cask copilot-cli
      npm install -g @github/copilot
  EOS

  zap trash: [
    "~/.polypilot",
  ]
end
