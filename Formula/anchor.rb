class Anchor < Formula
  desc "CLI for Anchor, a self-hosted secrets manager on Cloudflare"
  homepage "https://sotarak.github.io/anchor/"
  version "0.5.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sotarak/anchor/releases/download/v0.5.3/anchor-darwin-arm64"
      sha256 "2e31250b4f10afb6a44c869d13a9e0b3b680524e3b4cf3aa621acf0fb5f6b89b"
    end
    on_intel do
      url "https://github.com/sotarak/anchor/releases/download/v0.5.3/anchor-darwin-x64"
      sha256 "195b766bcef28f65a96e30944af7a84fe143f634e3db7b28d35b26e06d8704ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sotarak/anchor/releases/download/v0.5.3/anchor-linux-arm64"
      sha256 "d8c4268653b9f5d30fe23a8040a4290bb916c57bc293d9905586c9050fe7e9bc"
    end
    on_intel do
      url "https://github.com/sotarak/anchor/releases/download/v0.5.3/anchor-linux-x64"
      sha256 "4053f83d9283c2e272e8da89167edc3fcf84314aaaec0b3cb459ebdd34326f8d"
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
