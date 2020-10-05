class Product < ApplicationRecord
	has_many :order_details

	has_many :product_details,dependent: :destroy
	has_many :comments, dependent: :destroy
	has_many_attached :image
  	accepts_nested_attributes_for :product_details, reject_if: :all_blank, allow_destroy: true
  	enum size: {"XS"=>0, "S"=>1, "M"=>2, "L"=>3,"XL"=>4,
	          "9-12 months (80 cm)"=>5, "12-24 months (86 cm)"=>6,
	          "2-3 years (98 cm)"=>7, "3-4 years (104 cm)"=>8, "4-5 years (110 cm)"=>9, 
	          "6 years (116 cm)"=>10, "7 years (122 cm)"=>11, "8 years (128 cm)"=>12, 
	          "9 years (134 cm)"=>13, "10 years (140 cm)"=>14, "11-12 years (152 cm)"=>15}
	enum classify: {"Thời trang nam"=> 0, "Thời trang nữ"=> 1, "Thời trang trẻ em"=> 2}
	enum product_type: {"Áo khoác"=> 0, "Áo blazer"=> 1, "Áo sơ mi"=> 2, "Áo kiểu"=> 3,"Áo phông"=> 4,"Áo nỉ chui đầu"=> 5,
	                    "Áo pholo"=> 6, "Áo len"=> 7, "Hàng dệt kim"=> 8,"Quần âu "=> 9,"Quần bò"=> 10,"Chân váy"=> 11,
	                    "Denim"=> 12,"Quần Short"=> 13,"Bộ com lê"=> 14,"Trang phục đồng bộ"=> 15,"Đầm | Jumpsuit"=> 16 }

	
end
