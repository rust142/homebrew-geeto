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
      sha256 "ecb2bf249bd628690d0d5cdcfc04e0f97aa3d8609ead232ddf4f47d322d49baf"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.6.1/geeto-mac-arm64"
      sha256 "98c0e630eba8b36ccec42d992f30977ea4d816864b9486399b79e27f60232045"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.6.1/geeto-linux"
      sha256 "33f52a6b1c263981d3c07da4af4a16a3ae280dcbd28a5deec20e3f0a8f3b797c"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.6.1/geeto-linux-arm64"
      sha256 "ff5b9b850f883499cae47567c5929e2949623b6f5e74cce94f8be281064dae9b"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
