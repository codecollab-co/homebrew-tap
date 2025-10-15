class InfraCost < Formula
  desc "Multi-cloud FinOps CLI tool for comprehensive cost analysis and infrastructure optimization"
  homepage "https://github.com/codecollab-co/infra-cost"
  url "https://registry.npmjs.org/infra-cost/-/infra-cost-0.2.1.tgz"
  sha256 "be60613ecd9d8f18d2dcd4ee2a6fdeb23697a9c8a5180b8c974d457ac8705497"
  license "MIT"
  version "0.2.1"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix", libexec, cached_download
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # Test that the binary can be executed and shows version
    assert_match version.to_s, shell_output("#{bin}/infra-cost --version")

    # Test help command
    assert_match "Multi-cloud FinOps CLI", shell_output("#{bin}/infra-cost --help")
  end

  service do
    # Optional: If you add daemon/service functionality later
    # run [opt_bin/"infra-cost", "daemon"]
    # keep_alive true
    # log_path var/"log/infra-cost.log"
    # error_log_path var/"log/infra-cost.log"
  end
end