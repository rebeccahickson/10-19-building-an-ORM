
class Seed
    def self.seed_data
        mike = Author.new(name: 'Michael Scott').save
        yoda = Author.new(name: 'Yoda').save
        mat = Author.new(name: 'Matz').save
        10.times do
            Tweet.new({content: Faker::TvShows::MichaelScott.quote, author: mike}).save
        end

        5.times do
            Tweet.new({content: Faker::Quote.yoda, author: yoda}).save
        end

        5.times do
            mat.create_tweet({content: Faker::Quote.matz})
        end
    end
end