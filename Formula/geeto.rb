# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.4.3/geeto-mac"
      sha256 "d2b87595868cec6f7a8306f8fca9a5a3dfe2f5daae80865622706f91445d184e"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.4.3/geeto-mac-arm64"
      sha256 "b4b3fa99aedce45256db30b9945b20d925dacd2055640f36e2970ecacce4418c"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.4.3/geeto-linux"
      sha256 "3330d8d57f0c4a19976eceeb461ebbe3070662e684e774db7c7cc6793f1ac3b7"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.4.3/geeto-linux-arm64"
      sha256 "eb36293c73a2bacc1bd921192f76a3ad0bc4a1ee7bb655950e0602886b81e18a"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
