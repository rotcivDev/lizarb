class DevSystem::AppShellTest < DevSystem::ShellTest

  test :subject_class do
    assert_equality subject_class, DevSystem::AppShell
  end

  test :settings do
    assert_equality subject_class.log_level, 0
  end

  test :writable_systems do
    a = subject_class.writable_systems.keys
    b = [:dev, :happy, :net, :web, :work, :micro, :desk, :crypto, :art, :deep, :lab]
    assert_equality a, b
  end

  test :subject do
    system_keys = ["dev", "happy", "net", "web", "work", "micro", "desk", "crypto", "art", "deep", "lab"]
    assert_equality subject.consts.keys,           [:top_level, :liza, :systems, :app]
    assert_equality subject.consts[:top_level],    [Lizarb, App, Liza]
    assert_equality subject.consts[:liza].keys,    ["unit", "base", "safety", "meta", "ruby_tests"]
    assert_equality subject.consts[:systems].keys, system_keys
    assert_equality subject.consts[:app].keys,     system_keys
  end

end
