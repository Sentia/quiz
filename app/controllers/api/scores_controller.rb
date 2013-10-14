class Api::ScoresController < Api::BaseController
  before_filter :load_score, only: [:show, :update]

  def show
    expose @score
  end

  def create
    expose Score.create!(params[:score]), status: :created
  end

  def update
    @score.update_attributes! params[:score]
    expose @score
  end

  private

  def load_score
    @score = Score.find(params[:id])
  end

  def score_params
    params.require(:score).permit(:name, :score)
  end
end