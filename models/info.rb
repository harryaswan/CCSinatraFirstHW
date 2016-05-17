class Info

    # def initialize
    #
    # end

    def self.name
        return "Harry"
    end

    def self.bio
        return "I have been places, done things and got corrosponding t-shirts."
    end

    def self.address
        addr = {
            address: '3 Argyle House',
            building: 'CODEBASE',
            postcode: Info.get_postcode('e13 zqf'),
            phone: '0131558030'
        }

        return addr.to_json()

    end

    def self.get_postcode(postcode)
        return WordFormatter.new(postcode).all_caps
    end
end
