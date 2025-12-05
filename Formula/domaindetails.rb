class Domaindetails < Formula
  desc "Domain RDAP and WHOIS lookup CLI tool"
  homepage "https://domaindetails.com"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simplebytes-com/domaindetails-cli/releases/download/v0.1.1/domaindetails-0.1.1-darwin-arm64.tar.gz"
      sha256 "d0259a18b13dd694d86b7fdb53af19575867d5dd519a6ebea49d24e73c60a9a2"
    else
      url "https://github.com/simplebytes-com/domaindetails-cli/releases/download/v0.1.1/domaindetails-0.1.1-darwin-amd64.tar.gz"
      sha256 "39bfb9aea5eedbb8a2c32d8da2828e274da5210226b9cd95209c64181bb9ac92"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simplebytes-com/domaindetails-cli/releases/download/v0.1.1/domaindetails-0.1.1-linux-arm64.tar.gz"
      sha256 "3a7912dc408c760d50de8ae3711ffe88b1068876a3c18c4340c11b009abd66e1"
    else
      url "https://github.com/simplebytes-com/domaindetails-cli/releases/download/v0.1.1/domaindetails-0.1.1-linux-amd64.tar.gz"
      sha256 "a0f5bfd9096451f48ccc6e28c71cbca8055e4b7485a1c4cf3cda350b2332baa9"
    end
  end

  def install
    bin.install "domaindetails-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}" => "domaindetails"
  end

  test do
    system "#{bin}/domaindetails", "--version"
  end
end
