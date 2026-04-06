class Codexmux < Formula
  desc "Manage multiple Codex CLI accounts"
  homepage "https://github.com/slatkisasa/codexmux"
  url "https://github.com/slatkisasa/codexmux/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "06850d7fe6201f1cee9f256c0e7695b88dd544570fdb8ec55dcc36a4787746b4"
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
