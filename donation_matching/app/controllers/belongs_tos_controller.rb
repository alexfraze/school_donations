class BelongsTosController < ApplicationController
  before_action :set_belongs_to, only: [:show, :edit, :update, :destroy]

  # GET /belongs_tos
  # GET /belongs_tos.json
  def index
    @belongs_tos = BelongsTo.all
  end

  # GET /belongs_tos/1
  # GET /belongs_tos/1.json
  def show
  end

  # GET /belongs_tos/new
  def new
    @belongs_to = BelongsTo.new
  end

  # GET /belongs_tos/1/edit
  def edit
  end

  # POST /belongs_tos
  # POST /belongs_tos.json
  def create
    @belongs_to = BelongsTo.new(belongs_to_params)

    respond_to do |format|
      if @belongs_to.save
        format.html { redirect_to @belongs_to, notice: 'Belongs to was successfully created.' }
        format.json { render :show, status: :created, location: @belongs_to }
      else
        format.html { render :new }
        format.json { render json: @belongs_to.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /belongs_tos/1
  # PATCH/PUT /belongs_tos/1.json
  def update
    respond_to do |format|
      if @belongs_to.update(belongs_to_params)
        format.html { redirect_to @belongs_to, notice: 'Belongs to was successfully updated.' }
        format.json { render :show, status: :ok, location: @belongs_to }
      else
        format.html { render :edit }
        format.json { render json: @belongs_to.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /belongs_tos/1
  # DELETE /belongs_tos/1.json
  def destroy
    @belongs_to.destroy
    respond_to do |format|
      format.html { redirect_to belongs_tos_url, notice: 'Belongs to was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_belongs_to
      @belongs_to = BelongsTo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def belongs_to_params
      params.require(:belongs_to).permit(:user_id, :student_id)
    end
end
