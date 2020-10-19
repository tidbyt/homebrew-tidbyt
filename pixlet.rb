# This file was generated by GoReleaser. DO NOT EDIT.
class Pixlet < Formula
  desc "App runtime and UX toolkit for pixel-based apps."
  homepage "https://github.com/tidbyt/pixlet"
  version "0.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/tidbyt/pixlet/releases/download/v0.2.0/pixlet_0.2.0_darwin_amd64.tar.gz"
    sha256 "b2cfc13be48761547076861c0de0c49d13db31001d9fce3200bc98566cdc8ffb"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.2.0/pixlet_0.2.0_linux_amd64.tar.gz"
      sha256 "94f203984febcceb98e72696934dacbc64f62190fce26c85810b39118ca1e955"
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
