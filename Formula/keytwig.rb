class Keytwig < Formula
  desc "Local encrypted vault for agent secrets"
  homepage "https://github.com/keytwig/keytwig"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/keytwig/keytwig/releases/download/v0.1.0/keytwig_0.1.0_darwin_arm64.tar.gz"
      sha256 "b4614daf81b8fce6d141b31506093275892865adfd445da5e72fe6e2ba49c839"
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/keytwig/keytwig/releases/download/v0.1.0/keytwig_0.1.0_darwin_amd64.tar.gz"
      sha256 "2d9c50507c715c0ede53f1fd8ff7070d07b458db924ceefee7d28d0c97ff3915"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/keytwig/keytwig/releases/download/v0.1.0/keytwig_0.1.0_linux_arm64.tar.gz"
      sha256 "2b1f132961f90e40049437cf0bce47a068c62f8bc56226564d41ddfd6dd29093"
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/keytwig/keytwig/releases/download/v0.1.0/keytwig_0.1.0_linux_amd64.tar.gz"
      sha256 "9ea93bd8ec116654205c5a924ebd2a88cdb19dd068a953ce2aba0e7ccccab604"
    end
  end

  def install
    bin.install "keytwig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keytwig version")
  end
end
