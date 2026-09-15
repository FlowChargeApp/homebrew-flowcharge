class Flowcharge < Formula
  desc "Local Kanban board for FlowCharge project-management workstreams"
  homepage "https://github.com/FlowChargeApp/flowcharge"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.2.1/flowcharge-0.2.1-darwin-arm64"
      sha256 "d3ae5bc41d10f6b8588c1036c2d9c86bef7525cad801a2f51dab615a43d0e5fd"
    end
    on_intel do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.2.1/flowcharge-0.2.1-darwin-x64"
      sha256 "0788cad11d76b537ad92fa548cbe889b40451ffef69aaa878eb80a54a7d80625"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.2.1/flowcharge-0.2.1-linux-x64"
      sha256 "ad918743b5c2ca290eba00e3b9092608e8f71d48ca5a11380c0a44897b4ca3b5"
    end
  end

  def install
    bin.install Dir["flowcharge-*"].first => "flowcharge"
  end

  test do
    assert_predicate bin/"flowcharge", :executable?
  end
end
