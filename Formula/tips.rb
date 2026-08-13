class Tips < Formula
  desc "Tips gives you simple explanations for commands."
  homepage "https://github.com/derusbel/homebrew-tip:s"
  url "https://github.com/derusbel/homebrew-tips/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "d800cd08aaa3a2faaafe077c6bf79a9fd50558319cd369540be1dcd69120a6d2"
  license "BSD-2-Clause"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/tips")
  end
end
