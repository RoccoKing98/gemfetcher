class FileInputsController < ApplicationController
  before_action :set_file_input, only: %i[ show edit update destroy ]

  # GET /file_inputs or /file_inputs.json
  def index
  end

  # GET /file_inputs/1 or /file_inputs/1.json
  def show
  end

  # GET /file_inputs/new
  def new
    @file_input = FileInput.new
  end

  # GET /file_inputs/1/edit
  def edit
  end

  # POST /file_inputs or /file_inputs.json
  def create
    raise
    @file_input = FileInput.new(file_input_params)

    respond_to do |format|
      if @file_input.save
        format.html { redirect_to file_input_url(@file_input), notice: "File input was successfully created." }
        format.json { render :show, status: :created, location: @file_input }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @file_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /file_inputs/1 or /file_inputs/1.json
  def update
    respond_to do |format|
      if @file_input.update(file_input_params)
        format.html { redirect_to file_input_url(@file_input), notice: "File input was successfully updated." }
        format.json { render :show, status: :ok, location: @file_input }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @file_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_inputs/1 or /file_inputs/1.json
  def destroy
    @file_input.destroy!

    respond_to do |format|
      format.html { redirect_to file_inputs_url, notice: "File input was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_input
      @file_input = FileInput.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def file_input_params
      params.fetch(:file_input, {})
    end
end
