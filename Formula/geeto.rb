# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.6.2/geeto-mac"
      sha256 "56835c444c4abacc7bd8f9590cd20007b78880ccffe217fb72b5eed11df0f0cd"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.6.2/geeto-mac-arm64"
      sha256 "5fc9f0994a1942f086ee4089e31dc8bf19ca5508305cc0630d8c7704967b56b5"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.6.2/geeto-linux"
      sha256 "191d04c370dd4f238d430a40f8c04e995cdafd995cb26456112e34988d761204"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.6.2/geeto-linux-arm64"
      sha256 "445f115b75d706b14bf3114a1de046fa44ed604fe38f6a9464a0d5ceeec741b5"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
