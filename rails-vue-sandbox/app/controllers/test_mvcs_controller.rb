class TestMvcsController < ApplicationController
  before_action :set_test_mvc, only: [:show, :edit, :update, :destroy]

  def index
    @test_mvcs = TestMvc.all
  end

  def show
  end

  def new
    @test_mvc = TestMvc.new
  end

  def edit
  end

  def create
    @test_mvc = TestMvc.new(test_mvc_params)

    respond_to do |format|
      if @test_mvc.save
        format.html { redirect_to @test_mvc, notice: 'Test mvc was successfully created.' }
        format.json { render :show, status: :created, location: @test_mvc }
      else
        format.html { render :new }
        format.json { render json: @test_mvc.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @test_mvc.update(test_mvc_params)
        format.html { redirect_to @test_mvc, notice: 'Test mvc was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_mvc }
      else
        format.html { render :edit }
        format.json { render json: @test_mvc.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @test_mvc.destroy
    respond_to do |format|
      format.html { redirect_to test_mvcs_url, notice: 'Test mvc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_test_mvc
      @test_mvc = TestMvc.find(params[:id])
    end

    def test_mvc_params
      params.require(:test_mvc).permit(:content, :text)
    end
end
