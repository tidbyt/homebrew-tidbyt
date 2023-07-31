# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pixlet < Formula
  desc "App runtime and UX toolkit for pixel-based apps."
  homepage "https://github.com/tidbyt/pixlet"
  version "0.28.0"

  depends_on "webp"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.28.0/pixlet_0.28.0_darwin_arm64.tar.gz"
      sha256 "c9454600c977dff3db505c717ca96e41be08255947aa7af0b370cae702da9166"

      def install
        bin.install "pixlet"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.28.0/pixlet_0.28.0_darwin_amd64.tar.gz"
      sha256 "273b73173719d05e4e4628c148e010375b942dd25c1c5d638222d5cf4f292c73"

      def install
        bin.install "pixlet"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.28.0/pixlet_0.28.0_linux_amd64.tar.gz"
      sha256 "49f46a88044b85ef757ecc479aa3a74bc388334c369fe49627c36244f250a46b"

      def install
        bin.install "pixlet"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.28.0/pixlet_0.28.0_linux_arm64.tar.gz"
      sha256 "29c8d11e7367edee9dca82111414ef6e64ed8e96d33ff7673ed9a0eebff0335d"

      def install
        bin.install "pixlet"
      end
    end
  end

  test do
    system "#{bin}/pixlet --version"
  end
end
