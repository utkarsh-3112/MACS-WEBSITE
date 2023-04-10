class ResearchConsultanciesController < ApplicationController
  before_action :set_research_consultancy, only: %i[ show edit update destroy ]

  # GET /research_consultancies or /research_consultancies.json
  def index
    @research_consultancies = ResearchConsultancy.all
  end

  # GET /research_consultancies/1 or /research_consultancies/1.json
  def show
  end

  # GET /research_consultancies/new
  def new
    @research_consultancy = ResearchConsultancy.new
  end

  # GET /research_consultancies/1/edit
  def edit
  end

  # POST /research_consultancies or /research_consultancies.json
  def create
    @research_consultancy = ResearchConsultancy.new(research_consultancy_params)

    respond_to do |format|
      if @research_consultancy.save
        format.html { redirect_to research_consultancy_url(@research_consultancy), notice: "Research consultancy was successfully created." }
        format.json { render :show, status: :created, location: @research_consultancy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @research_consultancy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /research_consultancies/1 or /research_consultancies/1.json
  def update
    respond_to do |format|
      if @research_consultancy.update(research_consultancy_params)
        format.html { redirect_to research_consultancy_url(@research_consultancy), notice: "Research consultancy was successfully updated." }
        format.json { render :show, status: :ok, location: @research_consultancy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @research_consultancy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /research_consultancies/1 or /research_consultancies/1.json
  def destroy
    @research_consultancy.destroy

    respond_to do |format|
      format.html { redirect_to research_consultancies_url, notice: "Research consultancy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_research_consultancy
      @research_consultancy = ResearchConsultancy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def research_consultancy_params
      params.require(:research_consultancy).permit(:project_name, :faculty_id, :sanctioned_amount, :status, :project_type)
    end
end
