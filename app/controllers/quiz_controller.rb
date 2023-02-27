class QuizController < ApplicationController 
  def quiz
  end

  def results
    if params["weight"] == "Yes"
      min_weight = 50
      max_weight = 300
    else
      min_weight = 1
      max_weight = 50
    end
    @results = BeService.quiz_results(min_weight, max_weight, params["shedding"], params["barking"], params["energy"], params["protectiveness"], params["trainability"])
  end
end