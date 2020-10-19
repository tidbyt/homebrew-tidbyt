# This file was generated by GoReleaser. DO NOT EDIT.
class Pixlet < Formula
  desc "App runtime and UX toolkit for pixel-based apps."
  homepage "https://github.com/tidbyt/pixlet"
  version "0.1.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/tidbyt/pixlet/releases/download/v0.1.5/pixlet_0.1.5_darwin_amd64.tar.gz"
    sha256 "c163d94fcd16099b4cff5764bd49f48d0912d6a1a6ecbfef6d47d671c07c6ddf"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tidbyt/pixlet/releases/download/v0.1.5/pixlet_0.1.5_linux_amd64.tar.gz"
      sha256 "9fedb4794605e6bd9ffd4abbddd1b3a8e0eb760528820085868b0337af5ab22b"
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
