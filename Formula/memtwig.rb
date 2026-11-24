class Memtwig < Formula
  desc "Git-native Markdown memory layer and MCP server for AI coding agents"
  homepage "https://memtwig.com"
  version "1.4.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/memtwig/memtwig/releases/download/v1.4.3/memtwig_1.4.3_darwin_arm64.tar.gz"
      sha256 "e95f9dc8f026cf65d564451d9b8d4a107505f41e86c81fe06433d0f65ac6f035"
    end
    if Hardware::CPU.intel?
      url "https://github.com/memtwig/memtwig/releases/download/v1.4.3/memtwig_1.4.3_darwin_amd64.tar.gz"
      sha256 "070ad3ca53138ab4f96a2ee18ff3b8190fe408e69d5c4b14dfed6869c7d17bdb"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/memtwig/memtwig/releases/download/v1.4.3/memtwig_1.4.3_linux_arm64.tar.gz"
      sha256 "623717805d7d89492d91f7adeb01bbba05a65240713f3429b4367f3276301e84"
    end
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/memtwig/memtwig/releases/download/v1.4.3/memtwig_1.4.3_linux_amd64.tar.gz"
      sha256 "1dd670e17a8243748f74b30d2eda66f7e0647e8df79865d0e0ec1bbc44e74d89"
    end
  end

  def install
    bin.install "memtwig"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/memtwig --version")
  end
end
