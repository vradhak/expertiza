class GradeHistoriesController < ApplicationController
  before_action :set_grade_history, only: [:show, :edit, :update, :destroy]

  # GET /grade_histories
  def index
    @grade_histories = GradeHistory.all
  end

  # GET /grade_histories/1
  def show
  end

  # GET /grade_histories/new
  def new
    @grade_history = GradeHistory.new
  end

  # GET /grade_histories/1/edit
  def edit
  end

  # POST /grade_histories
  def create
    @grade_history = GradeHistory.new(grade_history_params)

    if @grade_history.save
      redirect_to @grade_history, notice: 'Grade history was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /grade_histories/1
  def update
    if @grade_history.update(grade_history_params)
      redirect_to @grade_history, notice: 'Grade history was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /grade_histories/1
  def destroy
    @grade_history.destroy
    redirect_to grade_histories_url, notice: 'Grade history was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade_history
      @grade_history = GradeHistory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def grade_history_params
      params[:grade_history]
    end
end
