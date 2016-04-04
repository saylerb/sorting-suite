module TestHelpers

  def generate_alpha_arr(start, finish)
    (start..finish).to_a.shuffle
  end

  def generate_num_arr(start, finish)
    (start..finish).to_a.shuffle
  end

end