class Nanoid < Formula
  desc "Nano ID Command Line Interface"
  homepage "https://github.com/sixafter/nanoid-cli"
  license "Apache-2.0"

  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/sixafter/nanoid-cli/releases/download/v#{version}/nanoid_#{version}_darwin_arm64.tar.gz"
      sha256 "4e9f63ad3a67904f3c8b20503a3e075b8893060d08032ef75303f8db57bfa4a6"
    end

    on_intel do
      url "https://github.com/sixafter/nanoid-cli/releases/download/v#{version}/nanoid_#{version}_darwin_amd64.tar.gz"
      sha256 "82e89e5c482e013ece7b838dfe12b44cabec347ecd84c89c43ef3b4265d47b3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sixafter/nanoid-cli/releases/download/v#{version}/nanoid_#{version}_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM648074c568972d7db02347a89698aab147e784527bb06f0a8e3c698625500bcde4_TAR"
    end

    on_intel do
      url "https://github.com/sixafter/nanoid-cli/releases/download/v#{version}/nanoid_#{version}_linux_amd64.tar.gz"
      sha256 "b24eca88e1c08adac76770d082ac6ddc32dddacb0a060fa6fb6b5c1798896506"
    end
  end

  def install
    bin.install "nanoid"
  end

  test do
    # Basic version check
    assert_match "version", shell_output("#{bin}/nanoid --version")
  end
end
