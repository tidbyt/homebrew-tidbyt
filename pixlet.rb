# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pixlet < Formula
  desc "App runtime and UX toolkit for pixel-based apps."
  homepage "https://github.com/tidbyt/pixlet"
  version "0.6.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.6.0/pixlet_0.6.0_darwin_amd64.tar.gz"
      sha256 "cad9721eed7739240c91523aaaeb718ecbccd243793d386116e47066ff2a2ec1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.6.0/pixlet_0.6.0_linux_amd64.tar.gz"
      sha256 "9ef5d7a11b24acaebd902c73cea19505099272253ca483e4f6c37fd02513aa95"
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
