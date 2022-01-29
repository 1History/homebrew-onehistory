class Onehistory < Formula
  desc "All your history in one place"
  homepage "https://github.com/1History/1History"
  license "GPL-3.0"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/1History/1History/releases/download/v#{version}/1History_v#{version}_x86_64-apple-darwin.zip"
      sha256 "3ecfaaf1b85eebbcf7d012a433c6700ec20a3405e8d66fe5aa1b70603ecb63ac"
    else
      url "https://github.com/1History/1History/releases/download/v#{version}/1History_v#{version}_aarch64-apple-darwin.zip"
      sha256 "6f1c9d18531840d5b0872b9c988eff3cf10b85c7a0b5d86cf33935bb22919952"
    end
  end

  def install
    bin.install "onehistory"
  end

  test do
    system "#{bin}/onehistory --version"
  end
end
