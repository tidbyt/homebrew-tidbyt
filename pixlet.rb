# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pixlet < Formula
  desc "App runtime and UX toolkit for pixel-based apps."
  homepage "https://github.com/tidbyt/pixlet"
  version "0.22.5"

  depends_on "webp"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.22.5/pixlet_0.22.5_darwin_arm64.tar.gz"
      sha256 "9076dccb57ad9ec344dc5079c60fecabd4ba76c69a1942fd4f2046a0cf2e5dc1"

      def install
        bin.install "pixlet"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.22.5/pixlet_0.22.5_linux_arm64.tar.gz"
      sha256 "d1cdcfc136661fa67e3542c7d80aaa51f4ca5faa9acd1622247ba865b1f871a0"

      def install
        bin.install "pixlet"
      end
    end
  end

  test do
    system "#{bin}/pixlet --version"
  end
end
