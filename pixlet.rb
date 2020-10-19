# This file was generated by GoReleaser. DO NOT EDIT.
class Pixlet < Formula
  desc "App runtime and UX toolkit for pixel-based apps."
  homepage "https://github.com/tidbyt/pixlet"
  version "0.1.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/tidbyt/pixlet/releases/download/v0.1.6/pixlet_0.1.6_darwin_amd64.tar.gz"
    sha256 "0e811245125c82c3a4692bbde066b1a17cdc876ea723c9d7de880b515f3e27fa"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.1.6/pixlet_0.1.6_linux_amd64.tar.gz"
      sha256 "4230c25571743b7e11ecddb6f18ae510c29a807171dcd5343e79710300aaff0f"
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
