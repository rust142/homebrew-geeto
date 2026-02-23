# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.6.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.6.5/geeto-mac"
      sha256 "3af460d2a2032e6efc69900759cc2d80508320427c58c39f511e5d638622be8b"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.6.5/geeto-mac-arm64"
      sha256 "a202e3baeefaf7e3f7669e08c67909437984a481b9fd14b6ea79f827d8b2b805"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.6.5/geeto-linux"
      sha256 "785212432080d96915dba184fa10abaa5821f86372553f8449dbead3ca173249"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.6.5/geeto-linux-arm64"
      sha256 "5e9dedfa2c8c2ba7689318d3a2f372ca1ecbc3aafee0a16faafe00350c141bab"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
