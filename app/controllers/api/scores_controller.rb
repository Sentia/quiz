class Api::ScoresController < Api::BaseController
  before_filter :load_score, only: [:show, :update]

  def index
    expose @scores = Score.all
  end

  def show
    expose @score
  end

  def create
    expose Score.create(score_params), status: :created
  end

  def update
    @score.update_attributes! score_params
    expose @score
  end

  private

  def load_score
    @score = Score.find(params[:id])
  end

  def score_params
    params.require(:score).permit(:name, :points, :time)
  end
end