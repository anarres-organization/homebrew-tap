class Anarres < Formula
  desc "Native command-line interface for Anarres environment workflows"
  homepage "https://github.com/anarres-organization/anarres"
  version "0.4.1"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.4.1/anarres-cli-aarch64-apple-darwin.tar.xz"
      sha256 "445b429aec90d729aa79f390892ca33ae28b707df95978dfe008117a9c98300a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.4.1/anarres-cli-x86_64-apple-darwin.tar.xz"
      sha256 "2977c1245d22921a343372590c61d192b27ba96fb10e467eb3bfaa7e802d5222"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.4.1/anarres-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "c8d196303c64e98d6f771372d4c65067a6f6e0508bbae3747c688b62f7d65382"
    end
    if Hardware::CPU.intel?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.4.1/anarres-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "072bcdb4f529a3288047bc991fd2577a64ecf406d2a20ada568fb301de18c25f"
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
