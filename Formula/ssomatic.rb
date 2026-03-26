class Ssomatic < Formula
  desc "Interactive AWS SSO credential manager with CLI and web UI"
  homepage "https://github.com/tux86/ssomatic"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tux86/ssomatic/releases/download/v#{version}/ssomatic-darwin-arm64.bin"
      sha256 "e9de5fe8ccc3530908c33fb0f5c322a9824fe78ba3b4834e41a84e4598cbc9dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tux86/ssomatic/releases/download/v#{version}/ssomatic-linux-x64.bin"
      sha256 "f7b75229693e81eea41f518227c51f214bddab143603864503f7f163cbde2f09"
    end
    on_arm do
      url "https://github.com/tux86/ssomatic/releases/download/v#{version}/ssomatic-linux-arm64.bin"
      sha256 "4116816c4c4b85dd1b46d670c7cb942687f6d16f04987c5bbd53c8e99d5d8906"
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
