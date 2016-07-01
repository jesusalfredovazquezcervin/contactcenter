json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :user_id, :company_id, :question1, :question2, :question3, :question4, :question5
  json.url quiz_url(quiz, format: :json)
end
