class Anchor < Formula
  desc "CLI for Anchor, a self-hosted secrets manager on Cloudflare"
  homepage "https://sotarak.github.io/anchor/"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sotarak/anchor/releases/download/v0.5.0/anchor-darwin-arm64"
      sha256 "76e0c0556095a73a7db45736787654b43e1b2bc5e8c622c800c5e267e6926403"
    end
    on_intel do
      url "https://github.com/sotarak/anchor/releases/download/v0.5.0/anchor-darwin-x64"
      sha256 "39169845ace625e736daf4664340d714b4f1d876adc56a94f2e283cc9e1eeafc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sotarak/anchor/releases/download/v0.5.0/anchor-linux-arm64"
      sha256 "94f5d942cc52b5d9e78be7d0e15a38783bf00347383d430c95081bf90ce9d6c9"
    end
    on_intel do
      url "https://github.com/sotarak/anchor/releases/download/v0.5.0/anchor-linux-x64"
      sha256 "c6ba69064fe3fb0c084c56ea2c0f78e9ee2572e4bc1bcaa3b8a8949a962f6d42"
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
