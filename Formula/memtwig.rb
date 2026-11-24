class Memtwig < Formula
  desc "Git-native Markdown memory layer and MCP server for AI coding agents"
  homepage "https://memtwig.com"
  version "1.5.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/memtwig/memtwig/releases/download/v1.5.1/memtwig_1.5.1_darwin_arm64.tar.gz"
      sha256 "f0a91ce66578d39d098e09db26e57d81c381b2e4566f7c5225bf2e96e778cbe6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/memtwig/memtwig/releases/download/v1.5.1/memtwig_1.5.1_darwin_amd64.tar.gz"
      sha256 "d6c2d4e1b710c9a9bb077a0a9774dc9a9b7780da3c18bca5217fbda669c77c8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/memtwig/memtwig/releases/download/v1.5.1/memtwig_1.5.1_linux_arm64.tar.gz"
      sha256 "61e2c32bd74afb69de33a3770072e2d92620c6b0f7ebfc1030b258051251adab"
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/memtwig/memtwig/releases/download/v1.5.1/memtwig_1.5.1_linux_amd64.tar.gz"
      sha256 "b0c96d996ebb7008b2e6014a44f2504c88c6ffc657c2a4164c4f53b61c0bc802"
    end
  end

  def install
    bin.install "memtwig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/memtwig --version")
  end
end
