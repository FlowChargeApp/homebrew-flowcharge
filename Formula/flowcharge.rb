class Flowcharge < Formula
  desc "Local Kanban board for FlowCharge project-management workstreams"
  homepage "https://github.com/FlowChargeApp/flowcharge"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.4.0/flowcharge-0.4.0-darwin-arm64"
      sha256 "eb5bb048fafbb369713491a569b627fb089a7bbc94e86ac72468b8890c693e05"
    end
    on_intel do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.4.0/flowcharge-0.4.0-darwin-x64"
      sha256 "08ddca44c5f39cebfc2a14c265041c07dc899e42342621c87593369c6a30fbda"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/FlowChargeApp/flowcharge/releases/download/v0.4.0/flowcharge-0.4.0-linux-x64"
      sha256 "009a6a53af35469513221358755a7a4ac85e9d57fd70410d59a865c3e406194d"
    end
  end

  def install
    bin.install Dir["flowcharge-*"].first => "flowcharge"
  end

  test do
    assert_predicate bin/"flowcharge", :executable?
  end
end
