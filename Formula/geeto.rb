# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.5.0/geeto-mac"
      sha256 "dac96fc46ed832dc74a046f69df840306fa5f875c4618f9ad39cbfa9505b62fb"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.5.0/geeto-mac-arm64"
      sha256 "710e3745cb872f4ab4db3ec64efa2b9181de8c9e2274e4dcbd749e1cfa6093a4"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.5.0/geeto-linux"
      sha256 "eb5395a1d999b2a34debe7ec259773ac430b7cc4590fada3f3ba3f89e5b85363"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.5.0/geeto-linux-arm64"
      sha256 "bd9c6be4b39281cc42e93d5a8cdb108c50331f68c2fb905d338ddb97ed656c11"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
