class Ssomatic < Formula
  desc "Interactive AWS SSO credential manager with CLI and web UI"
  homepage "https://github.com/tux86/ssomatic"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tux86/ssomatic/releases/download/v#{version}/ssomatic-darwin-arm64.bin"
      sha256 "aff6220701a0be9b00c0b89b4519548f2cd065b72a0a0680b0bd89f9f8db3537"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tux86/ssomatic/releases/download/v#{version}/ssomatic-linux-x64.bin"
      sha256 "6b80a162f09e2cb0d7989d2511da19df8d2fa515a2c6f7429725f57f8bcff4ac"
    end
    on_arm do
      url "https://github.com/tux86/ssomatic/releases/download/v#{version}/ssomatic-linux-arm64.bin"
      sha256 "855a63ad968e6330f34c5f8fcec981a928d62592c4681ffcb1dd8953512de1e5"
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
