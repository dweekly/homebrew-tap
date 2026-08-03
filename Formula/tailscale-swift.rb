class TailscaleSwift < Formula
  desc "Swift CLI for inspecting a local Tailscale daemon (unofficial)"
  homepage "https://github.com/dweekly/swift-tailscale-client"
  url "https://github.com/dweekly/swift-tailscale-client/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "a909cd5ff682c894e9413d36aea864dd866a3b4c4fcf645b82a62291f44ef408"
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
