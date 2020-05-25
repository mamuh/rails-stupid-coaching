require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit root_path
    assert_selector "p", text: "Ask your coach anything:"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit root_path
    fill_in "user_question", with: "Hello"
    click_on "send"

    assert_text "I don't care, get dressed and go to work!"
  end
end
