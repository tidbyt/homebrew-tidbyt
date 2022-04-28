# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pixlet < Formula
  desc "App runtime and UX toolkit for pixel-based apps."
  homepage "https://github.com/tidbyt/pixlet"
  version "0.17.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.17.5/pixlet_0.17.5_darwin_amd64.tar.gz"
      sha256 "23b7d68be958cf072239de0805dad1504a4739589022441b3790c11a9e9b341d"

      def install
        bin.install "pixlet"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.17.5/pixlet_0.17.5_darwin_arm64.tar.gz"
      sha256 "96551912f2a8942efabd9bcc1850038edff441694606b1edad736059136f8219"

      def install
        bin.install "pixlet"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.17.5/pixlet_0.17.5_linux_amd64.tar.gz"
      sha256 "7b1c7b7cab14f431473b5de80b6d576ea3f5d2db476277d1b48250dcacb2074b"

      def install
        bin.install "pixlet"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.17.5/pixlet_0.17.5_linux_arm64.tar.gz"
      sha256 "fbd8d49a015a95685e405812422883cb907b2200de55c865d6c51241818e7213"

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
