# frozen_string_literal: true

require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit ask_url

    assert_selector "h1", text: "Stupid Coaching"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "asking something gets a rebuke" do
    visit ask_url
    fill_in "question", with: "How are you?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end

  test "saying we are going to work is well received" do
    visit ask_url
    fill_in "question", with: "I am going to work right now."
    click_on "Ask"

    assert_text "Great!"
  end
end
