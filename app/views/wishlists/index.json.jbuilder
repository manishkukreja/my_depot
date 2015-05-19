json.array!(@wishlists) do |wishlist|
  json.extract! wishlist, :id, :user_id, :product_id, :category_id, :insert_date
  json.url wishlist_url(wishlist, format: :json)
end
