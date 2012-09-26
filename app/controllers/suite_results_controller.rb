class SuiteResultsController < ApplicationController
  # GET /suite_results
  # GET /suite_results.json
  def index
    @suite_results = SuiteResult.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @suite_results }
    end
  end

  # GET /suite_results/1
  # GET /suite_results/1.json
  def show
    @suite_result = SuiteResult.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @suite_result }
    end
  end

  # GET /suite_results/new
  # GET /suite_results/new.json
  def new
    @suite_result = SuiteResult.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @suite_result }
    end
  end

  # GET /suite_results/1/edit
  def edit
    @suite_result = SuiteResult.find(params[:id])
  end

  # POST /suite_results
  # POST /suite_results.json
  def create
    @suite_result = SuiteResult.new(params[:suite_result])

    respond_to do |format|
      if @suite_result.save
        format.html { redirect_to @suite_result, notice: 'Suite result was successfully created.' }
        format.json { render json: @suite_result, status: :created, location: @suite_result }
      else
        format.html { render action: "new" }
        format.json { render json: @suite_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /suite_results/1
  # PUT /suite_results/1.json
  def update
    @suite_result = SuiteResult.find(params[:id])

    respond_to do |format|
      if @suite_result.update_attributes(params[:suite_result])
        format.html { redirect_to @suite_result, notice: 'Suite result was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @suite_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suite_results/1
  # DELETE /suite_results/1.json
  def destroy
    @suite_result = SuiteResult.find(params[:id])
    @suite_result.destroy

    respond_to do |format|
      format.html { redirect_to suite_results_url }
      format.json { head :no_content }
    end
  end
end
