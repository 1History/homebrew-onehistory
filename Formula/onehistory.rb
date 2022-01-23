class Onehistory < Formula
  desc "All your history in one place"
  homepage "https://github.com/1History/1History"
  license "GPL-3.0"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/1History/1History/releases/download/v#{version}/1History_v#{version}_x86_64-apple-darwin.zip"
      sha256 "78ab92d6ad710815f32802c7494a4ce0590802c678a8ae9732c960300a676a57"
    else
      url "https://github.com/1History/1History/releases/download/v#{version}/1History_v#{version}_aarch64-apple-darwin.zip"
      sha256 "fd9027fd07995866efe9569f8bb99b22e8d9aef4d7d29a8e6c0601eff085b0ac"
    end
  end

  def install
    bin.install "onehistory"
  end

  test do
    system "#{bin}/onehistory --version"
  end
end
