class Anarres < Formula
  desc "Native command-line interface for Anarres environment workflows"
  homepage "https://github.com/anarres-organization/anarres"
  version "0.2.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.2.0/anarres-cli-aarch64-apple-darwin.tar.xz"
      sha256 "a6a45c551906a7ce40eef1831b633a5c8c5593475769262c8447177aab762e7a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.2.0/anarres-cli-x86_64-apple-darwin.tar.xz"
      sha256 "76d71cb46b7e650c4e9f36a0a9adb79908d3250df67cd43ef0286e5beb1216d8"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.2.0/anarres-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "cf4761686f97482e0e47835706253c8e3620894e113bbad3bee21edc6d9f6032"
    end
    if Hardware::CPU.intel?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.2.0/anarres-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "9a31f4ca5893ac88886c99e081e6befb4b94f13dcee6b5c87e93fe682a40a842"
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
