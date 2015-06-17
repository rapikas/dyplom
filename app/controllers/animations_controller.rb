class AnimationsController < ApplicationController
  before_action :set_animation, only: [:show, :edit, :update, :destroy]

  # GET /animations
  # GET /animations.json
  def index
    @animations = Animation.all
  end

  # GET /animations/1
  # GET /animations/1.json
  def show
  end

  # GET /animations/new
  def new
    @animation = Animation.new
  end

  # GET /animations/1/edit
  def edit
  end

  # POST /animations
  # POST /animations.json
  def create
    @animation = Animation.new(animation_params)

    respond_to do |format|
      if @animation.save
        format.html { redirect_to @animation, notice: 'Animation was successfully created.' }
        format.json { render :show, status: :created, location: @animation }
      else
        format.html { render :new }
        format.json { render json: @animation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animations/1
  # PATCH/PUT /animations/1.json
  def update
    respond_to do |format|
      if @animation.update(animation_params)
        format.html { redirect_to @animation, notice: 'Animation was successfully updated.' }
        format.json { render :show, status: :ok, location: @animation }
      else
        format.html { render :edit }
        format.json { render json: @animation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animations/1
  # DELETE /animations/1.json
  def destroy
    @animation.destroy
    respond_to do |format|
      format.html { redirect_to animations_url, notice: 'Animation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animation
      @animation = Animation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animation_params
      params.require(:animation).permit(:name, :description)
    end
end
