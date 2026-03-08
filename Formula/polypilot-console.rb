class PolypilotConsole < Formula
  desc "CLI interface for managing multiple GitHub Copilot sessions"
  homepage "https://github.com/PureWeen/PolyPilot"
  url "https://github.com/PureWeen/PolyPilot/archive/refs/tags/v1.0.9.tar.gz"
  sha256 :no_check # Will be populated by CI once source tarball is stable
  license "MIT"

  depends_on "dotnet@10" => :build

  def install
    system "dotnet", "publish",
           "PolyPilot.Console/PolyPilot.csproj",
           "-c", "Release",
           "-o", buildpath/"out",
           "--self-contained", "false"

    libexec.install Dir[buildpath/"out/*"]
    (bin/"polypilot-console").write_env_script libexec/"PolyPilot",
                                                DOTNET_ROOT: Formula["dotnet@10"].opt_libexec
  end

  test do
    assert_match "PolyPilot", shell_output("#{bin}/polypilot-console --help 2>&1", 1)
  end
end
