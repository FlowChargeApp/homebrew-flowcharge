class Flowcharge < Formula
  desc "Local Kanban board for FlowCharge project-management workstreams"
  homepage "https://github.com/FlowChargeApp/flowcharge"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.1.0/flowcharge-0.1.0-darwin-arm64"
      sha256 "ad31cce056c4876889b5cf77256148deb6ae1a474a7e06f189ab3e69ffa53aa3"
    end
    on_intel do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.1.0/flowcharge-0.1.0-darwin-x64"
      sha256 "a13ed40a47dd3271e04d90b2ad49ee7b5107bebf6f4ece14908fa41cccd38a2e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.1.0/flowcharge-0.1.0-linux-x64"
      sha256 "7ae3c3566ba46189c6c15d5ac43ba749e3bb487ae0a8f82954c27c78e99ea019"
    end
  end

  def install
    bin.install Dir["flowcharge-*"].first => "flowcharge"
  end

  test do
    assert_predicate bin/"flowcharge", :executable?
  end
end
