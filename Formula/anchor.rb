class Anchor < Formula
  desc "CLI for Anchor, a self-hosted secrets manager on Cloudflare"
  homepage "https://sotarak.github.io/anchor/"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sotarak/anchor/releases/download/v0.5.1/anchor-darwin-arm64"
      sha256 "c4346d9399ab10c44db2355955a23c7c77b34b0243c395715a5acee22a81ca38"
    end
    on_intel do
      url "https://github.com/sotarak/anchor/releases/download/v0.5.1/anchor-darwin-x64"
      sha256 "962c78ec8ee1d0dc96e139e83a39d27ce1b8a63f4c50fc953fc617d4158087b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sotarak/anchor/releases/download/v0.5.1/anchor-linux-arm64"
      sha256 "def5f9ab1dbd496e1c58e0defd9f4b2d3a0be64fd14230f1a7060125801394a6"
    end
    on_intel do
      url "https://github.com/sotarak/anchor/releases/download/v0.5.1/anchor-linux-x64"
      sha256 "a7f599399a92e6480b877b087d12bd70a3607325e4c15924dfd84f39aa5b0b2f"
    end
  end

  def install
    bin.install Dir["anchor-*"].first => "anchor"
    bin.install_symlink "anchor" => "anchor-secrets"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/anchor --version").strip
  end
end
