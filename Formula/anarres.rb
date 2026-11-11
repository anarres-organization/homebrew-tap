class Anarres < Formula
  desc "Native command-line interface for Anarres environment workflows"
  homepage "https://github.com/anarres-organization/anarres"
  version "0.4.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.4.0/anarres-cli-aarch64-apple-darwin.tar.xz"
      sha256 "22b0bdbb0354892cd43199afa339fb8373663a5be30a1f6da96c272161605ba0"
    end
    if Hardware::CPU.intel?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.4.0/anarres-cli-x86_64-apple-darwin.tar.xz"
      sha256 "832a433ccae70e40f9069b63adfbaf9be4a5b95531e5d9d1744d9f6dbf9b5638"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.4.0/anarres-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "69f931dd1b398c888e52c728842b44599232be41d2e5319697acbeae27616226"
    end
    if Hardware::CPU.intel?
      url "https://github.com/anarres-organization/anarres/releases/download/anarres-cli-v0.4.0/anarres-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "670b2cbb33e9899c7f1a3bb17d3e7e03ba4c244169fbe554e923593569725ae4"
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
