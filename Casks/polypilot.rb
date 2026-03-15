cask "polypilot" do
  version "1.0.11"
  sha256 "7dbd71f1a9d9f8ebe502338487e8f722239105982b6f2a1f738df155c84afe51"

  url "https://github.com/PureWeen/PolyPilot/releases/download/v#{version}/PolyPilot.zip"
  name "PolyPilot"
  desc "Multi-session GitHub Copilot client built with .NET MAUI"
  homepage "https://github.com/PureWeen/PolyPilot"

  # Requires macOS 14+ (Sonoma) for Mac Catalyst support
  depends_on macos: ">= :sonoma"
  depends_on cask: "copilot-cli"

  app "PolyPilot.app"

  zap trash: [
    "~/.polypilot",
  ]
end
