Deface::Override.new(
  virtual_path: 'spree/products/show',
  name: "display_tags_on_product",
  insert_top: "[data-hook='product_right_part_wrap']",
  text: "<%= render 'spree/shared/tags', object: @product %>",
  disabled: false)