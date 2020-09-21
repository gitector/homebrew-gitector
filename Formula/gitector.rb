# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Gitector < Formula
  desc ""
  homepage "https://gitector.dev"
  url "https://github.com/gitector/gitector/archive/v0.0.4.zip"
  version "0.0.4"
  sha256 "90a2478156d04d0338419993b03bf7eecd390931a0095b43a4f119a67aaa0e33"

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
