class WordTranslationsController < ApplicationController
  before_action :set_word_translation, only: [:show, :edit, :update, :destroy]

  # GET /word_translations
  # GET /word_translations.json
  def index
    @word_translations = WordTranslation.all
  end

  # GET /word_translations/1
  # GET /word_translations/1.json
  def show
  end

  # GET /word_translations/new
  def new
    @word_translation = WordTranslation.new
  end

  # GET /word_translations/1/edit
  def edit
  end

  # POST /word_translations
  # POST /word_translations.json
  def create
    @word_translation = WordTranslation.new(word_translation_params)

    respond_to do |format|
      if @word_translation.save
        format.html { redirect_to @word_translation, notice: 'Word translation was successfully created.' }
        format.json { render :show, status: :created, location: @word_translation }
      else
        format.html { render :new }
        format.json { render json: @word_translation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /word_translations/1
  # PATCH/PUT /word_translations/1.json
  def update
    respond_to do |format|
      if @word_translation.update(word_translation_params)
        format.html { redirect_to @word_translation, notice: 'Word translation was successfully updated.' }
        format.json { render :show, status: :ok, location: @word_translation }
      else
        format.html { render :edit }
        format.json { render json: @word_translation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /word_translations/1
  # DELETE /word_translations/1.json
  def destroy
    @word_translation.destroy
    respond_to do |format|
      format.html { redirect_to word_translations_url, notice: 'Word translation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_translation
      @word_translation = WordTranslation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_translation_params
      params.fetch(:word_translation, {})
    end
end
