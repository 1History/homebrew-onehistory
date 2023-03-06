class Onehistory < Formula
  desc "All your history in one file"
  homepage "https://github.com/1History/1History"
  license "GPL-3.0"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/1History/1History/releases/download/v#{version}/1History_v#{version}_x86_64-apple-darwin.zip"
      sha256 "699af42fc1aba3a6a3e08889ca3c076d64020ee2794d21bb088f0c1f1cba08b7"
    else
      url "https://github.com/1History/1History/releases/download/v#{version}/1History_v#{version}_aarch64-apple-darwin.zip"
      sha256 "fd6c6ddc02dd242419cecd9f4dc964fb6cb833769cade248c523c4dbb92dda58"
    end
  end

  def install
    bin.install "onehistory"
  end

  test do
    system "#{bin}/onehistory --version"
  end
end
