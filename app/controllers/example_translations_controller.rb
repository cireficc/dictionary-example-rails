class ExampleTranslationsController < ApplicationController
  before_action :set_example_translation, only: [:show, :edit, :update, :destroy]

  # GET /example_translations
  # GET /example_translations.json
  def index
    @example_translations = ExampleTranslation.all
  end

  # GET /example_translations/1
  # GET /example_translations/1.json
  def show
  end

  # GET /example_translations/new
  def new
    @example_translation = ExampleTranslation.new
  end

  # GET /example_translations/1/edit
  def edit
  end

  # POST /example_translations
  # POST /example_translations.json
  def create
    @example_translation = ExampleTranslation.new(example_translation_params)

    respond_to do |format|
      if @example_translation.save
        format.html { redirect_to @example_translation, notice: 'Example translation was successfully created.' }
        format.json { render :show, status: :created, location: @example_translation }
      else
        format.html { render :new }
        format.json { render json: @example_translation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /example_translations/1
  # PATCH/PUT /example_translations/1.json
  def update
    respond_to do |format|
      if @example_translation.update(example_translation_params)
        format.html { redirect_to @example_translation, notice: 'Example translation was successfully updated.' }
        format.json { render :show, status: :ok, location: @example_translation }
      else
        format.html { render :edit }
        format.json { render json: @example_translation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /example_translations/1
  # DELETE /example_translations/1.json
  def destroy
    @example_translation.destroy
    respond_to do |format|
      format.html { redirect_to example_translations_url, notice: 'Example translation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_example_translation
      @example_translation = ExampleTranslation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def example_translation_params
      params.fetch(:example_translation, {})
    end
end
