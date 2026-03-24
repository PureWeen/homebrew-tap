cask "polypilot" do
  version "1.0.12"
  sha256 "b869ce8ee2b8f653bb53fb86636bf37bd65e8086a0fe419e270cbc6d028d6219"

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
