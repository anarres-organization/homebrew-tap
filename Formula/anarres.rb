class Anarres < Formula
  desc "Native command-line interface for Anarres environment workflows"
  homepage "https://github.com/anarres-organization/anarres"
  version "0.1.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.1.0/anarres-cli-aarch64-apple-darwin.tar.xz"
      sha256 "1cf49a4817a06ed9dfc0d78f655f44fb72bebcc6cb6bffd7ee81caee92f8ec38"
    end
    if Hardware::CPU.intel?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.1.0/anarres-cli-x86_64-apple-darwin.tar.xz"
      sha256 "471bb2152d911e1a9cc794e284827cf18f0cec320ccaaed6f20876c82640adc8"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.1.0/anarres-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "aec4b12ecdaf5df3e7f32752ae46587d3c5d0757792cd6928662bc81223c4591"
    end
    if Hardware::CPU.intel?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.1.0/anarres-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "d7916ad2cada3c311c235c4c0fc9ffb02e2bb6c28124f2251c6ffc3307ecdb0b"
    end
  end
  license "Apache-2.0"

  def install
    bin.install "anarres"
  end

  test do
    assert_match "anarres #{version}", shell_output("#{bin}/anarres --version")
    assert_match "qualify", shell_output("#{bin}/anarres --help")
  end
end
