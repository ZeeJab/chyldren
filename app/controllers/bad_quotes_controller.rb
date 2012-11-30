class BadQuotesController < ApplicationController
  # GET /bad_quotes
  # GET /bad_quotes.json
  def index
    @bad_quotes = BadQuote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bad_quotes }
    end
  end

  # GET /bad_quotes/1
  # GET /bad_quotes/1.json
  def show
    @bad_quote = BadQuote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bad_quote }
    end
  end

  # GET /bad_quotes/new
  # GET /bad_quotes/new.json
  def new
    @bad_quote = BadQuote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bad_quote }
    end
  end

  # GET /bad_quotes/1/edit
  def edit
    @bad_quote = BadQuote.find(params[:id])
  end

  # POST /bad_quotes
  # POST /bad_quotes.json
  def create
    @bad_quote = BadQuote.new(params[:bad_quote])

    respond_to do |format|
      if @bad_quote.save
        format.html { redirect_to @bad_quote, notice: 'Bad quote was successfully created.' }
        format.json { render json: @bad_quote, status: :created, location: @bad_quote }
      else
        format.html { render action: "new" }
        format.json { render json: @bad_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bad_quotes/1
  # PUT /bad_quotes/1.json
  def update
    @bad_quote = BadQuote.find(params[:id])

    respond_to do |format|
      if @bad_quote.update_attributes(params[:bad_quote])
        format.html { redirect_to @bad_quote, notice: 'Bad quote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bad_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bad_quotes/1
  # DELETE /bad_quotes/1.json
  def destroy
    @bad_quote = BadQuote.find(params[:id])
    @bad_quote.destroy

    respond_to do |format|
      format.html { redirect_to bad_quotes_url }
      format.json { head :no_content }
    end
  end
end
