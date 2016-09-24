Deface::Override.new(
  virtual_path: 'spree/products/show',
  name: "display_tags_on_products",
  insert_top: "[data-hook='product_right_part_wrap']",
  partial: "spree/shared/tags",
  disabled: false)