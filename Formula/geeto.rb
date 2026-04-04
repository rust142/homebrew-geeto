# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.7.0-alpha.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.7.0-alpha.3/geeto-mac"
      sha256 "1400c62ebcba746dee876bbeb1bd62a9a724d026eb15b14562bdc9fa28c52ef1"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.7.0-alpha.3/geeto-mac-arm64"
      sha256 "8ec29b8f864d3ef329a4823180c240fb704d840970625850b50a2930cc6e0495"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.7.0-alpha.3/geeto-linux"
      sha256 "cdf3e25eb1e4142c1f7f40e3177dcd1ee11a4b6667da5c0102c8780b3212315b"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.7.0-alpha.3/geeto-linux-arm64"
      sha256 "6abb1ab6b4a69257b275da627dfa7cc1438ce370e180ae07679e10b8552ac392"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
