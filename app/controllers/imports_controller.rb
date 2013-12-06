class ImportsController < ApplicationController
  def new
  end

  def create
    file = File.open(params[:csv_file].path)
    @purchases = PurchasesFromTabFile.call(file)
  end

end
