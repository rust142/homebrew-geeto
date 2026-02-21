# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.6.1/geeto-mac"
      sha256 "8a2923e5c880eebb098339022f82e9f2b4f24b80c2cc4394721007657db2fc9b"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.6.1/geeto-mac-arm64"
      sha256 "64f105e95e0cf35be8097435058f8864f8073813bf682a72bb7c4578f5cce6c0"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.6.1/geeto-linux"
      sha256 "a7f9fecff0ce2b6db3144e6f053a154d302a0e0e28f1811f28d3f034a2fe09e1"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.6.1/geeto-linux-arm64"
      sha256 "365990bd808e4a9b19cd05dbe692ecb37e87358948bec8e53d0b27b0518bae0f"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
