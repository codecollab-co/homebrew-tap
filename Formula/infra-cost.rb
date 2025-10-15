class InfraCost < Formula
  desc "Multi-cloud FinOps CLI tool for comprehensive cost analysis and infrastructure optimization"
  homepage "https://github.com/codecollab-co/infra-cost"
  url "https://registry.npmjs.org/infra-cost/-/infra-cost-0.2.0.tgz"
  sha256 "0f4f356a52aea54ca923e8fcc2d6abff615341be"
  license "MIT"
  version "0.2.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]

    # Generate shell completions if available
    if (libexec/"bin/infra-cost").exist?
      generate_completions_from_executable("node", libexec/"bin/infra-cost", shells: [:bash, :zsh])
    end
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