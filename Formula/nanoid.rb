# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nanoid < Formula
  desc "A simple, fast, and concurrent command-line tool for generating secure, URL-friendly unique string IDs using the NanoID Go implementation."
  homepage "https://github.com/sixafter/homebrew-nanoid-cli/"
  version "1.13.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sixafter/nanoid-cli/releases/download/v1.13.0/nanoid_1.13.0_darwin_amd64.tar.gz"
      sha256 "8d6720e4d55c273d60975c9a4538f67c20dba9fde4a58eb4ee92dc2d681c33f5"

      def install
        bin.install "nanoid"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sixafter/nanoid-cli/releases/download/v1.13.0/nanoid_1.13.0_darwin_arm64.tar.gz"
      sha256 "a97baade367d1afe291aadf33ff212ede508509ba03abc583aa5fe51aecd1d07"

      def install
        bin.install "nanoid"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/sixafter/nanoid-cli/releases/download/v1.13.0/nanoid_1.13.0_linux_amd64.tar.gz"
      sha256 "529fdf11e91b42227e58822e4bf74f6f3f26a3afcd7b422ae358108223b92de1"
      def install
        bin.install "nanoid"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/sixafter/nanoid-cli/releases/download/v1.13.0/nanoid_1.13.0_linux_arm64.tar.gz"
      sha256 "fa82db1da77cd1e05d126fc61ffee5c001e20507c09943289f112e1fb0056b63"
      def install
        bin.install "nanoid"
      end
    end
  end

  test do
    system "#{bin}/nanoid version"
    assert_match "version", shell_output("#{bin}/nanoid --version")
  end
end
