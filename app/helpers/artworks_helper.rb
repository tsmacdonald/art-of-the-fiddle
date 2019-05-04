module ArtworksHelper
  def format_date_range(min, max)
    if min == max || min.nil? || max.nil?
      min || max || ""
    else
      "#{min}-#{max}"
    end
  end
end
