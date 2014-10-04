class TestScaffsController < ApplicationController
  before_action :set_test_scaff, only: [:show, :edit, :update, :destroy]

  # GET /test_scaffs
  # GET /test_scaffs.json
  def index
    @test_scaffs = TestScaff.all
  end

  # GET /test_scaffs/1
  # GET /test_scaffs/1.json
  def show
  end

  # GET /test_scaffs/new
  def new
    @test_scaff = TestScaff.new
  end

  # GET /test_scaffs/1/edit
  def edit
  end

  # POST /test_scaffs
  # POST /test_scaffs.json
  def create
    @test_scaff = TestScaff.new(test_scaff_params)

    respond_to do |format|
      if @test_scaff.save
        format.html { redirect_to @test_scaff, notice: 'Test scaff was successfully created.' }
        format.json { render :show, status: :created, location: @test_scaff }
      else
        format.html { render :new }
        format.json { render json: @test_scaff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_scaffs/1
  # PATCH/PUT /test_scaffs/1.json
  def update
    respond_to do |format|
      if @test_scaff.update(test_scaff_params)
        format.html { redirect_to @test_scaff, notice: 'Test scaff was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_scaff }
      else
        format.html { render :edit }
        format.json { render json: @test_scaff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_scaffs/1
  # DELETE /test_scaffs/1.json
  def destroy
    @test_scaff.destroy
    respond_to do |format|
      format.html { redirect_to test_scaffs_url, notice: 'Test scaff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_scaff
      @test_scaff = TestScaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_scaff_params
      params[:test_scaff]
    end
end
