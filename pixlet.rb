# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pixlet < Formula
  desc "App runtime and UX toolkit for pixel-based apps."
  homepage "https://github.com/tidbyt/pixlet"
  version "0.8.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.8.4/pixlet_0.8.4_darwin_arm64.tar.gz"
      sha256 "015d5ae85aa943c8e4c32974e3da2d91b98c78061cb9488273f0b8eadabe4014"

      def install
        bin.install "pixlet"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.8.4/pixlet_0.8.4_darwin_amd64.tar.gz"
      sha256 "783d6e6da87879c176a8ea898d648296a60740a26516aa1be817faa5e96dcb3e"

      def install
        bin.install "pixlet"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.8.4/pixlet_0.8.4_linux_arm64.tar.gz"
      sha256 "5b5964c37239ba19cb27fbad2efd556845268b8777baa1c8481ddf76d7f65e44"

      def install
        bin.install "pixlet"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.8.4/pixlet_0.8.4_linux_amd64.tar.gz"
      sha256 "62b3d0d823cde64f67e9cf3a83870f8a5862239203f373d78440d45b45c61c1e"

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
