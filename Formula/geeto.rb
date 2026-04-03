# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.7.0-alpha.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.7.0-alpha.2/geeto-mac"
      sha256 "063ad9aff0f80e8bd4ada726fa61f9cfd11c82e569d86b6d10d895a165f1b74c"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.7.0-alpha.2/geeto-mac-arm64"
      sha256 "5dbe2b4217a59de2bdced52595ebda33549e5a75389d6ba90cc825131d3797f4"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.7.0-alpha.2/geeto-linux"
      sha256 "13c09268d837231c6b5830eeb57c137894528e6fe2776c6f574c88f2dbc33da1"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.7.0-alpha.2/geeto-linux-arm64"
      sha256 "962c4d2aa017297330684334aad8e9d0128256ff866a937529e3e282304fc4d2"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
