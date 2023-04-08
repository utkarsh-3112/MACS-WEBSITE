class ContractStaffsController < ApplicationController
  before_action :set_contract_staff, only: %i[ show edit update destroy ]

  # GET /contract_staffs or /contract_staffs.json
  def index
    @contract_staffs = ContractStaff.all
  end

  # GET /contract_staffs/1 or /contract_staffs/1.json
  def show
  end

  # GET /contract_staffs/new
  def new
    @contract_staff = ContractStaff.new
  end

  # GET /contract_staffs/1/edit
  def edit
  end

  # POST /contract_staffs or /contract_staffs.json
  def create
    @contract_staff = ContractStaff.new(contract_staff_params)

    respond_to do |format|
      if @contract_staff.save
        format.html { redirect_to contract_staff_url(@contract_staff), notice: "Contract staff was successfully created." }
        format.json { render :show, status: :created, location: @contract_staff }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contract_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contract_staffs/1 or /contract_staffs/1.json
  def update
    respond_to do |format|
      if @contract_staff.update(contract_staff_params)
        format.html { redirect_to contract_staff_url(@contract_staff), notice: "Contract staff was successfully updated." }
        format.json { render :show, status: :ok, location: @contract_staff }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contract_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_staffs/1 or /contract_staffs/1.json
  def destroy
    @contract_staff.destroy

    respond_to do |format|
      format.html { redirect_to contract_staffs_url, notice: "Contract staff was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract_staff
      @contract_staff = ContractStaff.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contract_staff_params
      params.require(:contract_staff).permit(:dp, :name, :designation, :qualification)
    end
end
