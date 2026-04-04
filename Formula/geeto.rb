# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.9.0/geeto-mac"
      sha256 "69cd57ed4ec4ab49e86b670670ccf536d5a35ca68c6cb4026bbbfaed710f096f"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.9.0/geeto-mac-arm64"
      sha256 "ef524dd6be3adaca4463e906863f1559a7d084f18606c165986510ba9e71fbce"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.9.0/geeto-linux"
      sha256 "1673bdd0ee29169f9731eed23824d48e72b32a17de47cda335842d728253f896"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.9.0/geeto-linux-arm64"
      sha256 "51190cbab5cc7763cf897453bbd26fe4f95bdd98b7ff0a147d4c06f9fd625be7"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
