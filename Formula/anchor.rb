class Anchor < Formula
  desc "CLI for Anchor, a self-hosted secrets manager on Cloudflare"
  homepage "https://sotarak.github.io/anchor/"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sotarak/anchor/releases/download/v0.2.0/anchor-darwin-arm64"
      sha256 "e7ce8d17c0b8937acf5b98b1d5d3c39b079132a0b11b2de8d6d6533caa67fea0"
    end
    on_intel do
      url "https://github.com/sotarak/anchor/releases/download/v0.2.0/anchor-darwin-x64"
      sha256 "8536f7b629bb545bee34953aaf01c2f72ce2efc1f182dab0632dab3f052f66c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sotarak/anchor/releases/download/v0.2.0/anchor-linux-arm64"
      sha256 "17ab88e8fecc68bfa0a4000a88f005477caabf666a456061e63f2248602a5d59"
    end
    on_intel do
      url "https://github.com/sotarak/anchor/releases/download/v0.2.0/anchor-linux-x64"
      sha256 "6b4adab15f8a83311b1e2fce8a0f867881eaf9e5c3f6053e464a0940a82f3266"
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
