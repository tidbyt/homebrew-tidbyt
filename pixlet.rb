# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pixlet < Formula
  desc "App runtime and UX toolkit for pixel-based apps."
  homepage "https://github.com/tidbyt/pixlet"
  version "0.10.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.10.1/pixlet_0.10.1_darwin_arm64.tar.gz"
      sha256 "7851072736cbd6fb6d31debaa04c1ab2c6d814be4db1522c85c2feb671bc483a"

      def install
        bin.install "pixlet"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.10.1/pixlet_0.10.1_darwin_amd64.tar.gz"
      sha256 "44fc6800e4641ff02dc437f9e88242bcf8db113ae82eb24a26791f690fbf6899"

      def install
        bin.install "pixlet"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.10.1/pixlet_0.10.1_linux_arm64.tar.gz"
      sha256 "91a9026fd6ab9624badffc204a2c7971429eebb7bb05d42452cdfa05346b9110"

      def install
        bin.install "pixlet"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.10.1/pixlet_0.10.1_linux_amd64.tar.gz"
      sha256 "80fbc697116fcb24b76a7ae4f6adc5383bfbc84ef30d83c8a7928e10b4b16683"

      def install
        bin.install "pixlet"
      end
    end
  end

  depends_on "webp"

  test do
    system "#{bin}/pixlet --version"
  end
end
