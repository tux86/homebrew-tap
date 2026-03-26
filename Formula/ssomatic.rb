class Ssomatic < Formula
  desc "Interactive AWS SSO credential manager with CLI and web UI"
  homepage "https://github.com/tux86/ssomatic"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tux86/ssomatic/releases/download/v#{version}/ssomatic-darwin-arm64.bin"
      sha256 "46a9709c578a2d2df1c41e7846c4c7c08fa9b279760985af175d19785ac944e6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tux86/ssomatic/releases/download/v#{version}/ssomatic-linux-x64.bin"
      sha256 "25f2f6bfdc129e56d35e6151bfad72754e010fa4c63cccb91b0a2f2d80c8f61b"
    end
    on_arm do
      url "https://github.com/tux86/ssomatic/releases/download/v#{version}/ssomatic-linux-arm64.bin"
      sha256 "5e1e1709486cd79a6155e4f03e6cb31649298ba9100980180e2ef3ef1900179e"
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
