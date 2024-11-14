class NanoidCli < Formula
    desc "Generate unique, URL-friendly, secure IDs using nanoid"
    homepage "https://github.com/sixafter/nanoid-cli"
  
    # Replace 'v1.0.0' with the latest version tag
    url "https://github.com/sixafter/nanoid-cli/releases/download/v1.0.0/nanoid-v1.0.0.tar.gz"
    
    # Replace with the actual SHA256 checksum of the tar.gz
    sha256 "PUT_SOURCE_TAR_GZ_SHA256_CHECKSUM_HERE"
    
    license "MIT"
  
    # Define bottle blocks for each supported platform
    bottle do
      sha256 cellar: :any_skip_relocation, arm64_monterey: "SHA256_FOR_ARM64_MONTEREY"
      sha256 cellar: :any_skip_relocation, monterey:       "SHA256_FOR_INTEL_MONTEREY"
      sha256 cellar: :any_skip_relocation, arm64_big_sur:  "SHA256_FOR_ARM64_BIG_SUR"
      sha256 cellar: :any_skip_relocation, big_sur:        "SHA256_FOR_INTEL_BIG_SUR"
      sha256 cellar: :any_skip_relocation, catalina:       "SHA256_FOR_CATALINA"
      sha256 cellar: :any_skip_relocation, x86_64_linux:   "SHA256_FOR_LINUX"
    end
  
    def install
      # Extract the appropriate binary based on the OS and architecture
      bin_name = "nanoid"
  
      # Assuming the tar.gz contains the binary at the root
      bin.install bin_name
    end
  
    test do
      # Basic test to ensure nanoid is installed correctly
      assert_match "Usage", shell_output("#{bin}/nanoid --help")
    end
  end
  