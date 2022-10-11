# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pixlet < Formula
  desc "App runtime and UX toolkit for pixel-based apps."
  homepage "https://github.com/tidbyt/pixlet"
  version "0.21.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.21.0/pixlet_0.21.0_darwin_arm64.tar.gz"
      sha256 "8daa9f1612d1d9bb97a2ed0cddfc72ba562463b26fb9c438841435ca9cc96f35"

      def install
        bin.install "pixlet"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.21.0/pixlet_0.21.0_darwin_amd64.tar.gz"
      sha256 "ba18323046c9b92e80c8ca92087a7417f1c6007bc2c81184d66e34c30c8d4b1f"

      def install
        bin.install "pixlet"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.21.0/pixlet_0.21.0_linux_arm64.tar.gz"
      sha256 "ceb9fc880b6d8b22173473a5a8a6cfb62ecc54d8782f21765eb59c8d6640425c"

      def install
        bin.install "pixlet"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.21.0/pixlet_0.21.0_linux_amd64.tar.gz"
      sha256 "ce2dfba255db25b55d481e7294ec3020b1bf0948f5f66b73825608333736ceef"

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
