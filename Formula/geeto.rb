# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.8.0/geeto-mac"
      sha256 "d9ae23c353c6f758021138f05809bb076ac13b0b28f46dbffe268c59130df41a"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.8.0/geeto-mac-arm64"
      sha256 "9c1fd911629217c562e0da780731144df627b216490bc64a629d4ae742f08621"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.8.0/geeto-linux"
      sha256 "a88f457598aef83109e0b4706173b4d8d2939ea8a7274ecbd2dd638b57069f4d"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.8.0/geeto-linux-arm64"
      sha256 "0d2609959f76d4cb08f9c7f7a0e79ebb69a7288ff5f79049512feb22b581b084"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
