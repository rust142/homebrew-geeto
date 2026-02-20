# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.4.4/geeto-mac"
      sha256 "602a6bfea5cd4b3dc7a9fc061ffa6f3e06c78e02cb45cab7a64a822479d537a1"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.4.4/geeto-mac-arm64"
      sha256 "992e2688fbe253738b87810c6fb213b44833afdfb7a0ec6241fe6702753d3f9b"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.4.4/geeto-linux"
      sha256 "07f90a8cd2d8acf082ad9ee61dc37ade82ec06fb05eea5167e5197257e7e1977"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.4.4/geeto-linux-arm64"
      sha256 "df57960621f6558a7dbf6a2082560f081003ed15638f7e2f28a69aedda078ea5"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
