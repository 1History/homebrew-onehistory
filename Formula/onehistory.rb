class Onehistory < Formula
  desc "All your history in one file"
  homepage "https://github.com/1History/1History"
  license "GPL-3.0"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/1History/1History/releases/download/v#{version}/1History_v#{version}_x86_64-apple-darwin.zip"
      sha256 "d645ccff7dd01ca2ef36d0f1f84754936d67c59a7b92677f41130b3400982aea"
    else
      url "https://github.com/1History/1History/releases/download/v#{version}/1History_v#{version}_aarch64-apple-darwin.zip"
      sha256 "a7947a258324a3ba45d5bd8fb2036919b37caa903bf80af5b6b8acd07b58fda5"
    end
  end

  def install
    bin.install "onehistory"
  end

  test do
    system "#{bin}/onehistory --version"
  end
end
