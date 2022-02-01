class Onehistory < Formula
  desc "All your history in one file"
  homepage "https://github.com/1History/1History"
  license "GPL-3.0"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/1History/1History/releases/download/v#{version}/1History_v#{version}_x86_64-apple-darwin.zip"
      sha256 "5cabc52615657267a6b3def209ec101c68e283ff9df8089e67a72b8fa1cfc6fa"
    else
      url "https://github.com/1History/1History/releases/download/v#{version}/1History_v#{version}_aarch64-apple-darwin.zip"
      sha256 "8a4482b46d033bcfcced0bfed3dfa77ead6accc2422ec26564ffa8bf53b11eb5"
    end
  end

  def install
    bin.install "onehistory"
  end

  test do
    system "#{bin}/onehistory --version"
  end
end
