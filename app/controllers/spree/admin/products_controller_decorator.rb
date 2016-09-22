Spree::Admin::ProductsController.class_eval do
  update.before :set_tags

  def update
    tag_ids = params[:product][:tag_ids]
    if tag_ids.present?
      params[:product][:tag_ids] = tag_ids.split(',')
    end
    super
  end

  private

  def set_tags
    @product.tag_ids = nil unless params[:product].key? :tag_ids
  end
end