class Anchor < Formula
  desc "CLI for Anchor, a self-hosted secrets manager on Cloudflare"
  homepage "https://sotarak.github.io/anchor/"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sotarak/anchor/releases/download/v0.6.0/anchor-darwin-arm64"
      sha256 "980db23961ca0b0fbe1bbda0f16c885b3446df4df9745d5c273b7449c0160191"
    end
    on_intel do
      url "https://github.com/sotarak/anchor/releases/download/v0.6.0/anchor-darwin-x64"
      sha256 "3ff76c70210e741042f08b2584b301c73e6386b0231582fc04823949803f52ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sotarak/anchor/releases/download/v0.6.0/anchor-linux-arm64"
      sha256 "fee17e2c7df98e373c7e4a52c772936a29a5abc5873ae697a3b2729e7dfbb501"
    end
    on_intel do
      url "https://github.com/sotarak/anchor/releases/download/v0.6.0/anchor-linux-x64"
      sha256 "03cefdf4092ba8fac7969ab92b6cf8006ded10119c5192f64d7da21d8ca21366"
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
