class Flowcharge < Formula
  desc "Local Kanban board for FlowCharge project-management workstreams"
  homepage "https://github.com/FlowChargeApp/flowcharge"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.3.2/flowcharge-0.3.2-darwin-arm64"
      sha256 "cb2010d6aca14ba9c3457de394685e8189e642e4c9ed4890e058103109a839bf"
    end
    on_intel do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.3.2/flowcharge-0.3.2-darwin-x64"
      sha256 "7915334923cf9bd1dbfed5fb080fa26a7557d67f15c56a29df021ccbf055e82e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.3.2/flowcharge-0.3.2-linux-x64"
      sha256 "d1f882397479655ce086bbcf91463394f5c3d84bfc203e9b475b22e0c0ad3caa"
    end
  end

  def install
    bin.install Dir["flowcharge-*"].first => "flowcharge"
  end

  test do
    assert_predicate bin/"flowcharge", :executable?
  end
end
