class Pc < ApplicationRecord
  def total_price
    cpu_price.to_i + cpu_cooler_price.to_i + memory_price.to_i + videocard_price.to_i + storage_price.to_i \
    + drive_price.to_i + case_price.to_i + motherboard_price.to_i + power_price.to_i + system_price.to_i \
    + fan_price.to_i + other_price.to_i
  end
end
