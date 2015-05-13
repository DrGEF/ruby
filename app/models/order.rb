class Order < ActiveRecord::Base
	PAYMENT_TYPES = %w{Check Credit\ card Purchase\ order}
end
