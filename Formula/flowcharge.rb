class Flowcharge < Formula
  desc "Local Kanban board for FlowCharge project-management workstreams"
  homepage "https://github.com/FlowChargeApp/flowcharge"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.3.1/flowcharge-0.3.1-darwin-arm64"
      sha256 "df24abd6809d64fc69a77dd3ec193d7e91c4174affb1e3767e62986daa3f1cff"
    end
    on_intel do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.3.1/flowcharge-0.3.1-darwin-x64"
      sha256 "4bf516c1f5ff85925121af9ebef8b5943b8714cbeec85cbc14fa7845186c3d14"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.3.1/flowcharge-0.3.1-linux-x64"
      sha256 "1d42cc0a689aa563a4b6141d0313d6334027de12c7f9954818ddbd506a1b8110"
    end
  end

  def install
    bin.install Dir["flowcharge-*"].first => "flowcharge"
  end

  test do
    assert_predicate bin/"flowcharge", :executable?
  end
end
