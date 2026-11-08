class Anchor < Formula
  desc "CLI for Anchor, a self-hosted secrets manager on Cloudflare"
  homepage "https://sotarak.github.io/anchor/"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sotarak/anchor/releases/download/v0.5.2/anchor-darwin-arm64"
      sha256 "192503f980caceba2877be217066031755be982046f6e0bf06179428dbb711d0"
    end
    on_intel do
      url "https://github.com/sotarak/anchor/releases/download/v0.5.2/anchor-darwin-x64"
      sha256 "a5a08339a91e650b1fb1fc073a175d36f0ad692eecbb96ae4770333159700fd3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sotarak/anchor/releases/download/v0.5.2/anchor-linux-arm64"
      sha256 "50d05cc804682b94993b241986fbd47f190b96ddea2e72a20519716f770c23b8"
    end
    on_intel do
      url "https://github.com/sotarak/anchor/releases/download/v0.5.2/anchor-linux-x64"
      sha256 "1fb36fe5b7107b9290e99c442d48ab76819147be22b74899aebd8cd54166f163"
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
