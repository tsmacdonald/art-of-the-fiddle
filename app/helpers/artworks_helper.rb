module ArtworksHelper
  def format_date_range(min, max)
    if min == max
      min
    else
      "#{min}-#{max}"
    end
  end
end
