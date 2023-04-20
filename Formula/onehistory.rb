class Onehistory < Formula
  desc "All your history in one file"
  homepage "https://github.com/1History/1History"
  license "GPL-3.0"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/1History/1History/releases/download/v#{version}/1History_v#{version}_x86_64-apple-darwin.zip"
      sha256 "7639ba21259792a2adbb2508a36859b2b85c0e5f06991e04284b3358e9b0c163"
    else
      url "https://github.com/1History/1History/releases/download/v#{version}/1History_v#{version}_aarch64-apple-darwin.zip"
      sha256 "fab55a66678cd00190377f346398ced5c6144ce430bae5b77effd1fb04f80784"
    end
  end

  def install
    bin.install "onehistory"
  end

  test do
    system "#{bin}/onehistory --version"
  end
end
