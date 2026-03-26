class Ssomatic < Formula
  desc "Interactive AWS SSO credential manager with CLI and web UI"
  homepage "https://github.com/tux86/ssomatic"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tux86/ssomatic/releases/download/v#{version}/ssomatic-darwin-arm64.bin"
      sha256 "5784ac8abb1f900b17883f17b8988c38770c724e0f8b7736db4d058a62a2f040"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tux86/ssomatic/releases/download/v#{version}/ssomatic-linux-x64.bin"
      sha256 "bb1da05bb66c33c940043cd050885634fe6ec2fdef670298eac079a3d0b510f3"
    end
    on_arm do
      url "https://github.com/tux86/ssomatic/releases/download/v#{version}/ssomatic-linux-arm64.bin"
      sha256 "385b62bc0b4a0c7baec139f2f5cc7de017a7fa41a92402d08a4087de0744db12"
    end
  end

  def install
    binary = Dir["ssomatic-*"].first
    bin.install binary => "ssomatic"
  end

  test do
    assert_match "SSOmatic", shell_output("#{bin}/ssomatic --help 2>&1", 1)
  end
end
