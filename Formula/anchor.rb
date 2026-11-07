class Anchor < Formula
  desc "CLI for Anchor, a self-hosted secrets manager on Cloudflare"
  homepage "https://sotarak.github.io/anchor/"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sotarak/anchor/releases/download/v0.3.0/anchor-darwin-arm64"
      sha256 "8c3d65efb430500330c316490a4a1167e938fe12eaa0be786a9b40a97a1c8377"
    end
    on_intel do
      url "https://github.com/sotarak/anchor/releases/download/v0.3.0/anchor-darwin-x64"
      sha256 "a2b822dcce2da0df19d755a9d63180bd5a0a3bc663740e4914b05a6fe7092a0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sotarak/anchor/releases/download/v0.3.0/anchor-linux-arm64"
      sha256 "70f6a698aa80b7ac42c8fa6b530e7ac23e081bb62a8032fb0558cdf65c37be58"
    end
    on_intel do
      url "https://github.com/sotarak/anchor/releases/download/v0.3.0/anchor-linux-x64"
      sha256 "5cc9ca9bf050c19d2f3aee845468fc379c31626a836eb3f84b519d98a1330f4e"
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
