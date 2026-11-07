class Anchor < Formula
  desc "CLI for Anchor, a self-hosted secrets manager on Cloudflare"
  homepage "https://sotarak.github.io/anchor/"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sotarak/anchor/releases/download/v0.4.0/anchor-darwin-arm64"
      sha256 "45100ea4e3e5f59a09dc691b38cc3b222d80426bbb0b819e9c96528054e8ee54"
    end
    on_intel do
      url "https://github.com/sotarak/anchor/releases/download/v0.4.0/anchor-darwin-x64"
      sha256 "0a5215e536310aac92f2218e40d55dfa671674c6a621b2150930fdc26a305a80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sotarak/anchor/releases/download/v0.4.0/anchor-linux-arm64"
      sha256 "ff3546e744c9e3a079fee84275e7b059bbf8b243d0293d7e4cd8093d0a5e08e2"
    end
    on_intel do
      url "https://github.com/sotarak/anchor/releases/download/v0.4.0/anchor-linux-x64"
      sha256 "294859b81fdd6653b913ed2e53d78b794119220f1c78e53e1251f6371e0eb1f3"
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
