require('minitest/autorun')
require('minitest/rg')
require_relative('../models/word_formatter')

class TestWordFormat < Minitest::Test

    def setup
        @postcode = WordFormatter.new("e13 zqf")
        @codeclan = WordFormatter.new("code clan")
    end

    def test_all_caps
        test_result = @postcode.all_caps()
        expected_result = "E13 ZQF"
        assert_equal(expected_result,test_result)
    end

    def test_camel_case
        test_result = @codeclan.camel_case()
        expected_result = "CodeClan"
        assert_equal(expected_result, test_result)
    end

end
