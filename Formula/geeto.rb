# typed: false
# frozen_string_literal: true

class Geeto < Formula
  desc "AI-powered Git workflow automation CLI"
  homepage "https://github.com/rust142/geeto"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.4.2/geeto-mac"
      sha256 "1f63adb60e06a0f8b40cb27ee54a9ad2aeae565a0712566d0f1e8fef3b73011e"

      def install
        bin.install "geeto-mac" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.4.2/geeto-mac-arm64"
      sha256 "a93a2f11244cb48a3fad501c31d84b4b8ce270889295f219da3faa51c37c7fea"

      def install
        bin.install "geeto-mac-arm64" => "geeto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rust142/geeto/releases/download/v0.4.2/geeto-linux"
      sha256 "dfa98bee1e71590d497edbc5f737ef56fe7201f53596369667eb2f78b470e11d"

      def install
        bin.install "geeto-linux" => "geeto"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/rust142/geeto/releases/download/v0.4.2/geeto-linux-arm64"
      sha256 "cbb471970aa9fb0310e8bea1220d9677098ef269774f4e9c72b0d1dd0c500b05"

      def install
        bin.install "geeto-linux-arm64" => "geeto"
      end
    end
  end

  test do
    assert_match "Geeto v\#{version}", shell_output("\#{bin}/geeto --version")
  end
end
