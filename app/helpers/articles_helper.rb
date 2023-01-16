module ArticlesHelper
  def similar_strings?(string_a, string_b, threshold = 0.863)
    JaroWinkler.distance(string_a, string_b, ignore_case: true) >= threshold
  end
end
