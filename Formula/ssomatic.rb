class Ssomatic < Formula
  desc "Interactive AWS SSO credential manager with CLI and web UI"
  homepage "https://github.com/tux86/ssomatic"
  version "1.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tux86/ssomatic/releases/download/v#{version}/ssomatic-darwin-arm64"
      sha256 "3a749998853be0414e6ea843654d16c93aa15bef33bc6cb0267b8d33baaed41e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tux86/ssomatic/releases/download/v#{version}/ssomatic-linux-x64"
      sha256 "79c91889f4a4636440d331c51f4cf4364a02aeb21788f0f2df5eed4547cd7755"
    end
    on_arm do
      url "https://github.com/tux86/ssomatic/releases/download/v#{version}/ssomatic-linux-arm64"
      sha256 "8affa8aee93c67977c0eae45e833c27db5cebc0e39e5eb74500023849b0e3402"
    end
  end

  def install
    binary = Dir["ssomatic-*"].first
    bin.install binary => "ssomatic"
  end

  test do
    assert_match "ssomatic", shell_output("#{bin}/ssomatic --version")
  end
end
