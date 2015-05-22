module ProductsHelper

  def top_ten(product)
    if product.views >= 100
      "Top-ten product!"
    end
  end

end
