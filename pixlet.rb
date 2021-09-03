# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pixlet < Formula
  desc "App runtime and UX toolkit for pixel-based apps."
  homepage "https://github.com/tidbyt/pixlet"
  version "0.6.4"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.6.4/pixlet_0.6.4_darwin_amd64.tar.gz"
      sha256 "9992d825933bb1a1ec19a10be9b4aac44c16fc79812074bf5610e61ce0d20e6c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.6.4/pixlet_0.6.4_linux_amd64.tar.gz"
      sha256 "3bbceab4582c3eea6c2493dd04652fc45fd76e3e897a04e43e2e816585fb191c"
    end
  end

  depends_on "webp"

  def install
    bin.install "pixlet"
  end

  test do
    system "#{bin}/pixlet --version"
  end
end
