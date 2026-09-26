class Flowcharge < Formula
  desc "Local Kanban board for FlowCharge project-management workstreams"
  homepage "https://github.com/FlowChargeApp/flowcharge"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.3.0/flowcharge-0.3.0-darwin-arm64"
      sha256 "37adda0cb43e25ad93cbde8815eed00252de7a9bc45f74f533c89d336269fc8e"
    end
    on_intel do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.3.0/flowcharge-0.3.0-darwin-x64"
      sha256 "bd3b0383c0bdb4212e5553a9beb7db933366f51ee231c3a4570b050e1da35437"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.3.0/flowcharge-0.3.0-linux-x64"
      sha256 "0e4bb86a8b8c873e70c0c284a5c4eeab60b61879dc8f379f6d37898230896ef7"
    end
  end

  def install
    bin.install Dir["flowcharge-*"].first => "flowcharge"
  end

  test do
    assert_predicate bin/"flowcharge", :executable?
  end
end
