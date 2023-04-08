class AssistantLecturersController < ApplicationController
  before_action :set_assistant_lecturer, only: %i[ show edit update destroy ]

  # GET /assistant_lecturers or /assistant_lecturers.json
  def index
    @assistant_lecturers = AssistantLecturer.all
  end

  # GET /assistant_lecturers/1 or /assistant_lecturers/1.json
  def show
  end

  # GET /assistant_lecturers/new
  def new
    @assistant_lecturer = AssistantLecturer.new
  end

  # GET /assistant_lecturers/1/edit
  def edit
  end

  # POST /assistant_lecturers or /assistant_lecturers.json
  def create
    @assistant_lecturer = AssistantLecturer.new(assistant_lecturer_params)

    respond_to do |format|
      if @assistant_lecturer.save
        format.html { redirect_to assistant_lecturer_url(@assistant_lecturer), notice: "Assistant lecturer was successfully created." }
        format.json { render :show, status: :created, location: @assistant_lecturer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @assistant_lecturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assistant_lecturers/1 or /assistant_lecturers/1.json
  def update
    respond_to do |format|
      if @assistant_lecturer.update(assistant_lecturer_params)
        format.html { redirect_to assistant_lecturer_url(@assistant_lecturer), notice: "Assistant lecturer was successfully updated." }
        format.json { render :show, status: :ok, location: @assistant_lecturer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @assistant_lecturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assistant_lecturers/1 or /assistant_lecturers/1.json
  def destroy
    @assistant_lecturer.destroy

    respond_to do |format|
      format.html { redirect_to assistant_lecturers_url, notice: "Assistant lecturer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assistant_lecturer
      @assistant_lecturer = AssistantLecturer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assistant_lecturer_params
      params.require(:assistant_lecturer).permit(:dp, :name, :qualification, :email, :contact_no)
    end
end
