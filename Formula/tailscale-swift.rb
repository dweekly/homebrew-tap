class TailscaleSwift < Formula
  desc "Swift CLI for inspecting a local Tailscale daemon (unofficial)"
  homepage "https://github.com/dweekly/swift-tailscale-client"
  url "https://github.com/dweekly/swift-tailscale-client/archive/refs/tags/v0.10.0.tar.gz"
  sha256 "268d45339d356b66e7d080d3e81534e4e2ffdecfec89fee0e14e96fc989e5e3f"
  license "MIT"
  head "https://github.com/dweekly/swift-tailscale-client.git", branch: "main"

  depends_on xcode: ["16.0", :build]
  depends_on macos: :ventura

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release",
           "--product", "tailscale-swift"
    bin.install ".build/release/tailscale-swift"
  end

  test do
    assert_match "SUBCOMMANDS", shell_output("#{bin}/tailscale-swift --help")
  end
end
