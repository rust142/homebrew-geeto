# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.7.0-alpha.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.7.0-alpha.1/geeto-mac"
      sha256 "73b3514fa1ded1ffcb7c5bcc83cedbf513b0a79c41c14bcb69ced3b769419508"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.7.0-alpha.1/geeto-mac-arm64"
      sha256 "e8b09f16acaa5ae8bd9178afe176668f4ad2c38a02aea64630879faa53d811c0"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.7.0-alpha.1/geeto-linux"
      sha256 "1e762f6f6095d3e86de3a3634d4eeb7db07077a7c08fcf7130189052ffebd29e"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.7.0-alpha.1/geeto-linux-arm64"
      sha256 "5576611f22122ea4dd72d69806b04228895ed734dbdc0eb9c7b21484997c657e"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
