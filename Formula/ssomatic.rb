class Ssomatic < Formula
  desc "Interactive AWS SSO credential manager with CLI and web UI"
  homepage "https://github.com/tux86/ssomatic"
  version "1.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tux86/ssomatic/releases/download/v#{version}/ssomatic-darwin-arm64"
      sha256 "ea0edeef174f8fc5b7bac5e0b5c55587181d6dae1066ecf317f058c715bdc50e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tux86/ssomatic/releases/download/v#{version}/ssomatic-linux-x64"
      sha256 "8f230b5793da85aa1680eeaf5acfdbf840a16e7216235d3d4ddb353363ddeda4"
    end
    on_arm do
      url "https://github.com/tux86/ssomatic/releases/download/v#{version}/ssomatic-linux-arm64"
      sha256 "924dd97105ecc838cad4abe20998e60974197dfc9ceb04f4f70321fe03531264"
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
