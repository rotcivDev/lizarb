class WebSystem::LastMiddleRackTest < WebSystem::MiddleRackTest

  test :subject_class do
    assert subject_class == WebSystem::LastMiddleRack
  end

  test :settings do
    assert_equality subject_class.log_level, 0
  end

end
