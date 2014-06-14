class CheckInImagesController < ApplicationController
  before_action :set_check_in_image, only: [:show, :edit, :update, :destroy]

  # GET /check_in_images
  # GET /check_in_images.json
  def index
    @check_in_images = CheckInImage.all
  end

  # GET /check_in_images/1
  # GET /check_in_images/1.json
  def show
  end

  # GET /check_in_images/new
  def new
    @check_in_image = CheckInImage.new
  end

  # GET /check_in_images/1/edit
  def edit
  end

  # POST /check_in_images
  # POST /check_in_images.json
  def create
    @check_in_image = CheckInImage.new(check_in_image_params)


    respond_to do |format|
      if @check_in_image.save
        format.html { redirect_to @check_in_image.check_in, notice: 'Check in image was successfully created.' }
        format.json { render :show, status: :created, location: @check_in_image }
      else
        format.html { render :new }
        format.json { render json: @check_in_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /check_in_images/1
  # PATCH/PUT /check_in_images/1.json
  def update
    respond_to do |format|
      if @check_in_image.update(check_in_image_params)
        format.html { redirect_to @check_in_image, notice: 'Check in image was successfully updated.' }
        format.json { render :show, status: :ok, location: @check_in_image }
      else
        format.html { render :edit }
        format.json { render json: @check_in_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /check_in_images/1
  # DELETE /check_in_images/1.json
  def destroy
    @check_in_image.destroy
    respond_to do |format|
      format.html { redirect_to check_in_images_url, notice: 'Check in image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check_in_image
      @check_in_image = CheckInImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def check_in_image_params
      params.require(:check_in_image).permit(:check_in_id, :description, :image)
    end
end
