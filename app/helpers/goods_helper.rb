module GoodsHelper
  def render_good_status(good)
    if good.is_hidden
      content_tag(:span, "", :class => "fa fa-remove")
    else
      content_tag(:span, "", :class => "fa fa-money")
    end
  end
end
