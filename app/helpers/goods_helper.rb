module GoodsHelper
  def render_good_status
    if job.is_hidden
    "(Hidden)"
    else
    "(Public)"
    end
  end
end
