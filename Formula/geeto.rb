# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.6.3/geeto-mac"
      sha256 "32b31de09554b84038f703207d43a2b1daa07471c3f01604fa859f60bc1c83b3"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.6.3/geeto-mac-arm64"
      sha256 "6db14077bc269ff2618de813083355778df73bf6a3624edae1f5dd248404fda2"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.6.3/geeto-linux"
      sha256 "5a95c616075a5150976c64d5843622be62a0129f6a488087f60b216276fc68b8"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.6.3/geeto-linux-arm64"
      sha256 "f5341fb585ad280cb4e50144d3c3ffde6237a637d0c8642116fb2fbfa9669f15"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
