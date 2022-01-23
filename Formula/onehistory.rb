class Onehistory < Formula
  desc "All your history in one place"
  homepage "https://github.com/1History/1History"
  license "GPL-3.0"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/1History/1History/releases/download/v#{version}/1History_v#{version}_x86_64-apple-darwin.zip"
      sha256 "16ca0d5f5f22b349c4167946d72cfd4f0b458f19289910576e30921d5e1040aa"
    else
      url "https://github.com/1History/1History/releases/download/v#{version}/1History_v#{version}_aarch64-apple-darwin.zip"
      sha256 "b30c19f3086a9499c93c0dea8910c8dea45490d7476d363591193c0d7467150d"
    end
  end

  def install
    bin.install "onehistory"
  end

  test do
    system "#{bin}/onehistory --version"
  end
end
