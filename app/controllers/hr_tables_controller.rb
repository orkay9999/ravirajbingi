class HrTablesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_hr_table, only: [:show, :edit, :update, :destroy]

  # GET /hr_tables
  # GET /hr_tables.json
  def index
     @hr_tables = HrTable.search(params[:search]) 
    #@hr_tables = HrTable.all
  end

  # GET /hr_tables/1
  # GET /hr_tables/1.json
  def show
  end

  # GET /hr_tables/new
  def new
    @hr_table = HrTable.new
  end

  # GET /hr_tables/1/edit
  def edit
  end

  # POST /hr_tables
  # POST /hr_tables.json
  def create
    @hr_table = HrTable.new(hr_table_params)

    respond_to do |format|
      if @hr_table.save
        format.html { redirect_to @hr_table, notice: 'Hr table was successfully created.' }
        format.json { render :show, status: :created, location: @hr_table }
      else
        format.html { render :new }
        format.json { render json: @hr_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hr_tables/1
  # PATCH/PUT /hr_tables/1.json
  def update
    respond_to do |format|
      if @hr_table.update(hr_table_params)
        format.html { redirect_to @hr_table, notice: 'Hr table was successfully updated.' }
        format.json { render :show, status: :ok, location: @hr_table }
      else
        format.html { render :edit }
        format.json { render json: @hr_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hr_tables/1
  # DELETE /hr_tables/1.json
  def destroy
    @hr_table.destroy
    respond_to do |format|
      format.html { redirect_to hr_tables_url, notice: 'Hr table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hr_table
      @hr_table = HrTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hr_table_params
      params.require(:hr_table).permit(:Hol_req_from, :Hol_from, :Hol_to, :Hol_taken, :Hol_bal, :Hol_approved_by)
    end
end
