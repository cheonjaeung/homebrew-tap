class FzfAndroid < Formula
  desc "Bash and Zsh key bindings for Android SDK CLI tools"
  homepage "https://github.com/cheonjaeung/fzf-android"
  url "https://github.com/cheonjaeung/fzf-android/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "9e44fdfa31257b44da51dcab0a96a5a3c31776b1090c1ca36d2c925cc16f0fff"
  license "Apache-2.0"

  depends_on "fzf"

  def install
    pkgshare.install "fzf-android.sh"
  end

  def caveats
    <<~EOS
      To enable fzf-android, add the following line to your ~/.bashrc or ~/.zshrc:

        source #{opt_pkgshare}/fzf-android.sh
    EOS
  end

  test do
    assert_path_exists pkgshare/"fzf-android.sh"
  end
end
