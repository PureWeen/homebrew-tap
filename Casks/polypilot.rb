cask "polypilot" do
  version "1.0.10"
  sha256 "51b601454cc77b197d2288004e5aa8ec2b6764e5fa5644cfddc2cbe6f1a8a003"

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
