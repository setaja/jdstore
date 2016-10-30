module GoodsHelper
  def render_good_status(good)
    if good.is_hidden
    "(Hidden)"
    else
    "(Public)"
    end
  end
end
