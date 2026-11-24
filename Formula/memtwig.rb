class Memtwig < Formula
  desc "Git-native Markdown memory layer and MCP server for AI coding agents"
  homepage "https://memtwig.com"
  version "1.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/memtwig/memtwig/releases/download/v1.6.0/memtwig_1.6.0_darwin_arm64.tar.gz"
      sha256 "d493a6a5aab97efedb050e9e38aa24052c43a4c147f3d873966104afa9180c10"
    end
    if Hardware::CPU.intel?
      url "https://github.com/memtwig/memtwig/releases/download/v1.6.0/memtwig_1.6.0_darwin_amd64.tar.gz"
      sha256 "1745523b07c3e53dddc3e802b9bb4328c22c2817bea1d76d0406707458761995"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/memtwig/memtwig/releases/download/v1.6.0/memtwig_1.6.0_linux_arm64.tar.gz"
      sha256 "ad74ff6c61722095f50a81a18bba8400ab2abcff9be5c062c40d27899cdedea4"
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/memtwig/memtwig/releases/download/v1.6.0/memtwig_1.6.0_linux_amd64.tar.gz"
      sha256 "d771eba1d75d13437f06550ee78122a0406edbffd626a24bd2b448add18c9037"
    end
  end

  def install
    bin.install "memtwig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/memtwig --version")
  end
end
