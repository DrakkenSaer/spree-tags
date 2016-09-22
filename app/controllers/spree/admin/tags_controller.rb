class Spree::Admin::TagsController < Spree::Admin::ResourceController
  def index
    @tags = @tags.ransack({ name: params[:q] }).result if params[:q]
    @tags = @tags.where(id: params[:ids].split(',')) if params[:ids]

    respond_with(@tags) do |format|
      format.html
      format.json
    end
  end
end