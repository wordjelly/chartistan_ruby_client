# frozen_string_literal: true

require "test_helper"

class ChartistanRubyApiTest < Minitest::Test

=begin
  	def test_create_dataset
	  	r = ChartistanRubyApi::Base.new
	  	#Dr4yokdwvezoksfvhNeW
	  	r.api_key = "Jcf4Y6zSatjDyQe-mwcN"
	  	r.base_url = "http://localhost:3000/"
	  	
	  	response = r.create_dataset({
			"Accept" => "application/json"
		},{
			"dataset" => {
				"license" => "cc-by-1.0: Creative Commons Attribution 1.0 Generic",
				"name" => "test_dataset",
				"description" => "first dataset",
				"blobs_attributes" => [
					{
						"file" => File.open("/home/sme_admin/Downloads/Github/chartistan_ruby_api/test/sample.csv")
					}
				]
			}
		})

	  	code = response.code.to_s
	  	puts response.body.to_s
	  	assert_equal "201", code, "the dataset is created"
  	end	
=end

  	def test_five_thirty_eight
  		r = FiveThirtyEight.new({"api_key" => "Jcf4Y6zSatjDyQe-mwcN", "base_url" => "http://localhost:3000/", "data_dir" => "/home/sme_admin/Downloads/Github/data/"})
	  	r.parse_all
  	end

end
