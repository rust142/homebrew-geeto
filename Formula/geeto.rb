# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.6.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.6.6/geeto-mac"
      sha256 "6b417898d33f1b15590ace7ddf400b0e53a89933219e646a08e5864b1ee0c264"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.6.6/geeto-mac-arm64"
      sha256 "b723667ea59d3e03d8726b761bee42087e600363ff47c69e1a611156a46a6047"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.6.6/geeto-linux"
      sha256 "53aa7012487bbec47a2afe1a4de5d301b824af8e7c0c6100df257d1b319eec96"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.6.6/geeto-linux-arm64"
      sha256 "b4106e46a301e71a0f70b5474e6ce34181f0e2656bd0abe3cb5b4cc9da9c18be"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
