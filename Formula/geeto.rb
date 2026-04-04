# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.7.0-alpha.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.7.0-alpha.4/geeto-mac"
      sha256 "95901ac1e35d0498e2fe2377b232ebf36423f2b7de291ebe41aab1ce1520d902"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.7.0-alpha.4/geeto-mac-arm64"
      sha256 "01944bc358cf7e423c37911e0762d59ddfbf3bee5366698458f483457b3e0512"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.7.0-alpha.4/geeto-linux"
      sha256 "9cebc7e5a0e89c2e1ae2e1637a9b2fc06b4033453544ec2f3c155145b3c502fe"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.7.0-alpha.4/geeto-linux-arm64"
      sha256 "6ef844b00ceed04f97ac032c988cd1be44e52f9df8be474e7614e461eeb303d5"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
