class Keytwig < Formula
  desc "Local encrypted vault for agent secrets"
  homepage "https://github.com/keytwig/keytwig"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/keytwig/keytwig/releases/download/v0.2.0/keytwig_0.2.0_darwin_arm64.tar.gz"
      sha256 "7f557d91c3589b611e37f21a3e3c13ec52af9efbe5570650385b5b2ec2a2ed22"
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/keytwig/keytwig/releases/download/v0.2.0/keytwig_0.2.0_darwin_amd64.tar.gz"
      sha256 "c728128829dd9b00014d664fdd8e15ab8bd9c297cdabe92c8ef43e2a00bbccc2"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/keytwig/keytwig/releases/download/v0.2.0/keytwig_0.2.0_linux_arm64.tar.gz"
      sha256 "5df6ce2d7f03e5228a9984e819051dfde4a0428dce1f16436952d36d900de108"
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/keytwig/keytwig/releases/download/v0.2.0/keytwig_0.2.0_linux_amd64.tar.gz"
      sha256 "7bba86798e7e3d1d849c66456a962b0c5df1c1022db01e517e730998903d7c01"
    end
  end

  def install
    bin.install "keytwig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/keytwig version")
  end
end
