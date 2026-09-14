class Flowcharge < Formula
  desc "Local Kanban board for FlowCharge project-management workstreams"
  homepage "https://github.com/FlowChargeApp/flowcharge"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.1.2/flowcharge-0.1.2-darwin-arm64"
      sha256 "5bf234504c7d7e1f96ec15650b4f51e2c28c35afc0a2628ea6671e5e34d8354b"
    end
    on_intel do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.1.2/flowcharge-0.1.2-darwin-x64"
      sha256 "176592563e3571eaec414dd29d591c07c20468b080b77b48e3f379142bc0e9c8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.1.2/flowcharge-0.1.2-linux-x64"
      sha256 "7e5e3fdb470f5a98f2106097d1faeabc44b4bc524b5ae275934f505e00b384be"
    end
  end

  def install
    bin.install Dir["flowcharge-*"].first => "flowcharge"
  end

  test do
    assert_predicate bin/"flowcharge", :executable?
  end
end
