class Anarres < Formula
  desc "Native command-line interface for Anarres environment workflows"
  homepage "https://github.com/anarres-organization/anarres"
  version "0.3.1"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.3.1/anarres-cli-aarch64-apple-darwin.tar.xz"
      sha256 "df31884530def84ed8ce3ed899559a08ddcdd3862f63f2b9a018e592521e8e96"
    end
    if Hardware::CPU.intel?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.3.1/anarres-cli-x86_64-apple-darwin.tar.xz"
      sha256 "979751d1141723842dcdce5d6aa12cb66e1705993942907da2d43a1fc50970f7"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.3.1/anarres-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "d9d35c1b28310bcbab037ed99f0bf859b3bc6f1761337920a9342e47880c77e9"
    end
    if Hardware::CPU.intel?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.3.1/anarres-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "8feb5020000162bd2e1bb1255034666b52d9c4a873ebfb1273d0afdc5a50f114"
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
