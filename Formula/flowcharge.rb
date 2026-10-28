class Flowcharge < Formula
  desc "Local Kanban board for FlowCharge project-management workstreams"
  homepage "https://github.com/FlowChargeApp/flowcharge"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.5.0/flowcharge-0.5.0-darwin-arm64"
      sha256 "700173322f0f6797804b70155bd2eec1d578e77a72bdad3b4047eb749dc3b966"
    end
    on_intel do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.5.0/flowcharge-0.5.0-darwin-x64"
      sha256 "fa9ead9c7fe885a122cee3e755515b0eec3f1a800eb06d7529a4f297f04707b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.5.0/flowcharge-0.5.0-linux-x64"
      sha256 "5b85586fdbe8ea0cc8eb0f5580d959bd5abd2fb3d9a7ef56f9518dc5c08a17f7"
    end
  end

  def install
    bin.install Dir["flowcharge-*"].first => "flowcharge"
  end

  test do
    assert_predicate bin/"flowcharge", :executable?
  end
end
