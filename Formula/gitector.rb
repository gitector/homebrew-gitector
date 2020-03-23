# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Gitector < Formula
  desc ""
  homepage "https://gitector.dev"
  url "https://github.com/gitector/gitector/archive/v0.0.2-rc.zip"
  version "0.0.2"
  sha256 "f0ad3bf519e4b5e577b7e69a448912cf3a2382e64c24d07ff1bd01ade8074498"

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure

    system "go", "build"
    system "mkdir", "#{prefix}/bin"
    system "mv", "gitector", "#{prefix}/bin/gitector"
  end

  test do
    system "false"
  end
end
