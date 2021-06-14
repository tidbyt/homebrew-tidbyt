# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pixlet < Formula
  desc "App runtime and UX toolkit for pixel-based apps."
  homepage "https://github.com/tidbyt/pixlet"
  version "0.4.3"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.4.3/pixlet_0.4.3_darwin_amd64.tar.gz"
      sha256 "86aa4cc4bde2d5b0b50cab5ac77f0ed09cd1c89fcc2d191fe0412438db177e44"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.4.3/pixlet_0.4.3_linux_amd64.tar.gz"
      sha256 "2f32319b59e20e70acf99b8f2934d11bfc07eeb9a4d729d15b7eda52b44e176b"
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
