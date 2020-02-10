# frozen_string_literal: true

Rails.application.routes.draw do
  root "questions#index"
  get "/ask" => "questions#ask"
  get "/answer" => "questions#answer"
end
