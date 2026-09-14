class Flowcharge < Formula
  desc "Local Kanban board for FlowCharge project-management workstreams"
  homepage "https://github.com/FlowChargeApp/flowcharge"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.2.0/flowcharge-0.2.0-darwin-arm64"
      sha256 "bc43bd360f25d8bce599740b20a24796530c8cfbd2527d91649a5ce63f9ba68a"
    end
    on_intel do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.2.0/flowcharge-0.2.0-darwin-x64"
      sha256 "65101342af2a336f1a6ca4bc78621b32325445a8eb6002695f85eff94da36c56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.2.0/flowcharge-0.2.0-linux-x64"
      sha256 "bf34a27c09ed95d2f6af01634d2f3f5577610c306fd9a211954a2e5c5d754f31"
    end
  end

  def install
    bin.install Dir["flowcharge-*"].first => "flowcharge"
  end

  test do
    assert_predicate bin/"flowcharge", :executable?
  end
end
