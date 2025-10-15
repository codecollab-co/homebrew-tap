# CodeCollab Homebrew Tap

This is the official Homebrew tap for CodeCollab's open-source tools.

## Installation

First, add the tap to your Homebrew:

```bash
brew tap codecollab-co/tap
```

## Available Formulas

### infra-cost

Multi-cloud FinOps CLI tool for comprehensive cost analysis and infrastructure optimization across AWS, GCP, Azure, Alibaba Cloud, and Oracle Cloud.

```bash
# Install infra-cost
brew install codecollab-co/tap/infra-cost

# Verify installation
infra-cost --version
```

#### Features

- 🌐 **Multi-Cloud Support**: AWS, GCP, Azure, Alibaba Cloud, Oracle Cloud
- 📊 **Enhanced Terminal UI** with Rich-style formatting
- 📄 **PDF Reports** for executives and technical teams
- 🔍 **Interactive Analysis** with guided exploration
- 🚨 **Smart Alerting** with visual indicators
- 🔍 **Profile Discovery** for automatic credential management
- 💰 **Cost Optimization** recommendations across clouds
- 📈 **Advanced Analytics** with anomaly detection

#### Quick Start

```bash
# Basic cost analysis
infra-cost --provider aws

# Multi-cloud dashboard
infra-cost --multi-cloud-dashboard

# Interactive mode
infra-cost --interactive

# Generate PDF report
infra-cost --trend --pdf-report report.pdf
```

## Development

### Adding New Formulas

1. Create a new formula file in `Formula/`
2. Follow Homebrew formula conventions
3. Test locally with `brew install --build-from-source ./Formula/your-formula.rb`
4. Submit a pull request

### Testing

```bash
# Test all formulas
brew test codecollab-co/tap/infra-cost

# Audit formulas
brew audit --strict codecollab-co/tap/infra-cost
```

## Support

- 📚 [Documentation](https://github.com/codecollab-co/infra-cost#readme)
- 🐛 [Issues](https://github.com/codecollab-co/infra-cost/issues)
- 💬 [Discussions](https://github.com/codecollab-co/infra-cost/discussions)

## Contributing

We welcome contributions! Please see our [Contributing Guide](https://github.com/codecollab-co/infra-cost/blob/main/CONTRIBUTING.md) for details.

## License

MIT License - see individual formula files for specific licensing information.