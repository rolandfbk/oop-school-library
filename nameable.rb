class Nameable
  def correct_name
    "#{self.class} has not implemented method '#{__method__}'"
  end
end
