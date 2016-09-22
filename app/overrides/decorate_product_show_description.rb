Deface::Override.new(
  virtual_path: 'spree/products/show',
  name: "display_tags_on_products",
  insert_before: "[data-hook='product_description']",
  partial: "spree/shared/tags",
  disabled: false)