class Memtwig < Formula
  desc "Git-native Markdown memory layer and MCP server for AI coding agents"
  homepage "https://memtwig.com"
  version "1.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/memtwig/memtwig/releases/download/v1.5.0/memtwig_1.5.0_darwin_arm64.tar.gz"
      sha256 "2e483db3021a80e583c6187fbf2de46d924b66617cf203583ffeed1f6f2e5420"
    end
    if Hardware::CPU.intel?
      url "https://github.com/memtwig/memtwig/releases/download/v1.5.0/memtwig_1.5.0_darwin_amd64.tar.gz"
      sha256 "3b27a4bbfebe2408f4089f3255b26dcd49d250ec44875fdd10772b579d6895c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/memtwig/memtwig/releases/download/v1.5.0/memtwig_1.5.0_linux_arm64.tar.gz"
      sha256 "11b6feda35f7cdc92b34db8f8c9d7a2fb3916a3cfa08a557f22a4804f269a852"
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/memtwig/memtwig/releases/download/v1.5.0/memtwig_1.5.0_linux_amd64.tar.gz"
      sha256 "72ed04b6ba65934194cf83f8cce47ae9a3dc5ff5963680d7fcd15421d7e7b5cb"
    end
  end

  def install
    bin.install "memtwig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/memtwig --version")
  end
end
