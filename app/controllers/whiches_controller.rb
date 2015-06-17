class WhichesController < ApplicationController
  before_action :set_which, only: [:show, :edit, :update, :destroy]

  # GET /whiches
  # GET /whiches.json
  def index
    @whiches = Which.all
  end

  # GET /whiches/1
  # GET /whiches/1.json
  def show
  end

  # GET /whiches/new
  def new
    @which = Which.new
  end

  # GET /whiches/1/edit
  def edit
  end

  # POST /whiches
  # POST /whiches.json
  def create
    @which = Which.new(which_params)

    respond_to do |format|
      if @which.save
        format.html { redirect_to @which, notice: 'Which was successfully created.' }
        format.json { render :show, status: :created, location: @which }
      else
        format.html { render :new }
        format.json { render json: @which.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whiches/1
  # PATCH/PUT /whiches/1.json
  def update
    respond_to do |format|
      if @which.update(which_params)
        format.html { redirect_to @which, notice: 'Which was successfully updated.' }
        format.json { render :show, status: :ok, location: @which }
      else
        format.html { render :edit }
        format.json { render json: @which.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whiches/1
  # DELETE /whiches/1.json
  def destroy
    @which.destroy
    respond_to do |format|
      format.html { redirect_to whiches_url, notice: 'Which was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_which
      @which = Which.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def which_params
      params.require(:which).permit(:name, :description)
    end
end
