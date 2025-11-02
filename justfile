# List all available commands
default:
    @just --list

# Format all Rust code
format:
    @echo "Formatting code..."
    cargo fmt --all
    @echo "✓ Code formatted"

# Check formatting without modifying files
format-check:
    @echo "Checking formatting..."
    cargo fmt --all -- --check
    @echo "✓ Format check passed"

# Run clippy linting
clippy:
    @echo "Running clippy..."
    cargo clippy --all-targets --all-features -- -D warnings
    @echo "✓ Clippy passed"

# Run tests
test:
    @echo "Running tests..."
    cargo test
    @echo "✓ All tests passed"

# Build the project
build:
    @echo "Building project..."
    cargo build
    @echo "✓ Build complete"

# Build in release mode
build-release:
    @echo "Building project (release)..."
    cargo build --release
    @echo "✓ Release build complete"

# Run all checks (format, clippy, test)
check: format-check clippy test
    @echo "✓ All checks passed"

# Clean build artifacts
clean:
    @echo "Cleaning build artifacts..."
    cargo clean
    @echo "✓ Cleaned"

# Run the project
run:
    cargo run

# Run pre-commit on all files
pre-commit:
    @echo "Running pre-commit checks..."
    pre-commit run --all-files

# Install pre-commit hooks
install-hooks:
    @echo "Installing pre-commit hooks..."
    pre-commit install
    @echo "✓ Pre-commit hooks installed"

# Update dependencies
update:
    @echo "Updating dependencies..."
    cargo update
    @echo "✓ Dependencies updated"

# Check for outdated dependencies
outdated:
    @echo "Checking for outdated dependencies..."
    cargo outdated
