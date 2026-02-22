# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.6.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.6.4/geeto-mac"
      sha256 "47fff6dd908c31719c60cdac9659dbe41965f16eb5ba856a9df87e9e1257bafa"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.6.4/geeto-mac-arm64"
      sha256 "6d4d0921668422d62173c4fe5739b9d431f0b01eea20eaa824308fd4993f44ee"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.6.4/geeto-linux"
      sha256 "b8265f2d675258460e8978175b7186feccf3409f559f3262bdfcad45e0602b53"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.6.4/geeto-linux-arm64"
      sha256 "a8a0bd2ea2dcc2d9a62fa9b6f592e66bcfeffad1eac5e447a9e4eebe102702da"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
