class ResearchScholarsController < ApplicationController
  before_action :set_research_scholar, only: %i[ show edit update destroy ]

  # GET /research_scholars or /research_scholars.json
  def index
    @research_scholars = ResearchScholar.all
  end

  # GET /research_scholars/1 or /research_scholars/1.json
  def show
  end

  # GET /research_scholars/new
  def new
    @research_scholar = ResearchScholar.new
  end

  # GET /research_scholars/1/edit
  def edit
  end

  # POST /research_scholars or /research_scholars.json
  def create
    @research_scholar = ResearchScholar.new(research_scholar_params)

    respond_to do |format|
      if @research_scholar.save
        format.html { redirect_to research_scholar_url(@research_scholar), notice: "Research scholar was successfully created." }
        format.json { render :show, status: :created, location: @research_scholar }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @research_scholar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /research_scholars/1 or /research_scholars/1.json
  def update
    respond_to do |format|
      if @research_scholar.update(research_scholar_params)
        format.html { redirect_to research_scholar_url(@research_scholar), notice: "Research scholar was successfully updated." }
        format.json { render :show, status: :ok, location: @research_scholar }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @research_scholar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /research_scholars/1 or /research_scholars/1.json
  def destroy
    @research_scholar.destroy

    respond_to do |format|
      format.html { redirect_to research_scholars_url, notice: "Research scholar was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_research_scholar
      @research_scholar = ResearchScholar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def research_scholar_params
      params.require(:research_scholar).permit(:dp, :name, :category, :supervisors_id, :email)
    end
end
