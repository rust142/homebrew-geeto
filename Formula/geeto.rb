# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.4.1/geeto-mac"
      sha256 "d23670347edfab1589e665acc4f8568f9e21711730fc2b8516d07a6303d9991f"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.4.1/geeto-mac-arm64"
      sha256 "01aabff8702a3d52911618466071688c09c12f6d1ae453dc751daf6fa1a44330"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.4.1/geeto-linux"
      sha256 "fa6daa14bcaa88184c0321d9f88ac3d648a16fabb94d3c94a747a0ef54ef1fe8"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.4.1/geeto-linux-arm64"
      sha256 "2211c8cfe4ffda21819d58a4d4b41fcdc91d977a5af281974b994eda3021a49f"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
