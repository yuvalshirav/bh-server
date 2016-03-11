class SurveyController < ApplicationController

  def index
    render json: Question.all.as_json(include: [:answers])
  end

  def create
    response = Response.create(user_id: params[:user_id])
    params[:response_answers].map do |response_answer|
      Array.wrap(response_answer[:answer_id]).map do |answer_id|
        response.response_answers.create(answer_id: answer_id, question_id: response_answer[:id])
      end
    end
    head :ok
  end

  def stats
    groups = Question.joins(response_answers: [{response: [:user]}]).group(:question_id, :gender, :answer_id).count
    stats_by_question_gender_answer = groups.map { |k,v| {k[0] => {k[1] => { k[2] => v }}}}
    result = {}
    stats_by_question_gender_answer.map { |h| result.deep_merge!(h) }
    render json: result
  end
  
end
