class AttachmentsController < ApplicationController

  def index
  end

  def show
    @attachment = Attachment.find(params[:id])
    send_data @attachment.data, :filename => @attachment.filename, :type => @attachment.content_type
  end

    def create
    return if params[:file].blank?
    @attachment = Attachment.new

    @attachment.uploaded_file = params[:file]

    if @attachment.save
        flash[:notice] = "Thank you for your submission..."
        redirect_to
    else
        flash[:error] = "There was a problem submitting your attachment."

    end
  end
end