class TailscaleSwift < Formula
  desc "Swift CLI for inspecting a local Tailscale daemon (unofficial)"
  homepage "https://github.com/dweekly/swift-tailscale-client"
  url "https://github.com/dweekly/swift-tailscale-client/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "2933ffb122ef67a98d0dc8d11f1da39da8a9d8a4744b516a82d28a18ce0e22b9"
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
