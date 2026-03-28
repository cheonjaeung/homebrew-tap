class FzfAndroid < Formula
  desc "Bash and Zsh key bindings for Android SDK CLI tools"
  homepage "https://github.com/cheonjaeung/fzf-android"
  url "https://github.com/cheonjaeung/fzf-android/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "15ca3800ce4b551c58246cf69396ea706312bdc243fb117a351d7f0bae4de718"
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
