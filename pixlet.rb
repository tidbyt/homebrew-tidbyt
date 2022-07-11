# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pixlet < Formula
  desc "App runtime and UX toolkit for pixel-based apps."
  homepage "https://github.com/tidbyt/pixlet"
  version "0.17.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.17.11/pixlet_0.17.11_darwin_arm64.tar.gz"
      sha256 "49e859d826961eb8beadd68b578aeddf9a289df6815dc0583e69608247bfb4bc"

      def install
        bin.install "pixlet"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.17.11/pixlet_0.17.11_darwin_amd64.tar.gz"
      sha256 "d5b07282f116a423deabab5d518432020b52774aac354766fa0c6a72563aac57"

      def install
        bin.install "pixlet"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.17.11/pixlet_0.17.11_linux_arm64.tar.gz"
      sha256 "9b0c82c076e10ceca3b8a109c12c283d4122b2b8eb2f97e4b33ba985e4b4a6d2"

      def install
        bin.install "pixlet"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.17.11/pixlet_0.17.11_linux_amd64.tar.gz"
      sha256 "a478aace5a5a6792dc3512b1926a80a4c5235d47fe2be860ebb52cab039567a1"

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
