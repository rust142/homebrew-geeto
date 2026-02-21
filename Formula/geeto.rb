# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.6.0/geeto-mac"
      sha256 "f4619b032bd83d75b782fa76130a73417aa998bf10a3312b1367e09ad3fc858d"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.6.0/geeto-mac-arm64"
      sha256 "555c99354a79e7ef522414bc148552c87cd910293de54745d26e68d706a9782e"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.6.0/geeto-linux"
      sha256 "855a8314078c0b9d105889c9f2df24cf2b6d47cd3c777b257bbda8cf6363d30b"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.6.0/geeto-linux-arm64"
      sha256 "c8bb152b1c2b9b7332bee204cd7263c77e605804f198082815378a83dc41ece0"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
