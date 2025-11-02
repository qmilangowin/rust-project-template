# {{project_name}}

{{project_description}}

## Development Setup

### Prerequisites
- Rust (latest stable)
- [just](https://github.com/casey/just) - Command runner
- [pre-commit](https://pre-commit.com/) - Git hooks

### Quick Start

```bash
# Install pre-commit hooks
just install-hooks

# Build the project
just build

# Run tests
just test

# Run all checks (format, clippy, test)
just check
```

## Available Commands

Run `just` to see all available commands:

```bash
just
```

Key commands:
- `just format` - Format all Rust code
- `just clippy` - Run linting
- `just test` - Run tests
- `just build` - Build the project
- `just check` - Run all checks
- `just pre-commit` - Run pre-commit hooks manually

## CI/CD

This project uses GitHub Actions for:
- ✅ Commit message linting (conventional commits)
- ✅ Code formatting checks
- ✅ Clippy linting
- ✅ Automated tests

## Dependencies

Automated dependency updates via Renovate Bot.

## License

MIT OR Apache-2.0
