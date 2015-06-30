class NodenvNpmMigrate < Formula
  homepage "https://github.com/jawshooah/nodenv-npm-migrate"
  head "https://github.com/jawshooah/nodenv-npm-migrate.git"
  url "https://github.com/jawshooah/nodenv-npm-migrate/archive/0.1.0.tar.gz"
  sha256 "4c35dae6a6ca79a8b00083989b4dc18d5cb0d8bb2651de48e3996ab85403e225"

  depends_on "jawshooah/nodenv/nodenv"

  def install
    ENV["PREFIX"] = prefix
    system "./install.sh"
  end

  test do
    assert shell_output("nodenv commands").include? "migrate"
  end
end