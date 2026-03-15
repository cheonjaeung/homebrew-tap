class FzfAndroid < Formula
  desc "Bash and Zsh key bindings for Android SDK CLI tools"
  homepage "https://github.com/cheonjaeung/fzf-android"
  url "https://github.com/cheonjaeung/fzf-android/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f004a7b8e9459429882437e3f8a059d520e8df16562b876deabb35b1a4574355"
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
