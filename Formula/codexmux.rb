class Codexmux < Formula
  desc "Manage multiple Codex CLI accounts"
  homepage "https://github.com/slatkisasa/codexmux"
  url "https://github.com/slatkisasa/codexmux/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"codexmux"), "."
  end

  test do
    output = shell_output("#{bin}/codexmux --help")
    assert_match "Manage multiple Codex CLI accounts", output
  end
end
