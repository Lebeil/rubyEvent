class Event

    attr_accessor :start_date, :duration, :title, :attendees

    def initialize(start_date, duration, title, attendees)
        @start_date = Time.parse(start_date) #=> 2010-10-31 12:00:00 +0100
        @duration = duration #en minutes
        @title = title
        @attendees = attendees
    end

    def end_date
        return @start_date + duration*60
    end

    def is_past?
        return @start_date < Time.now
    end

    def is_future?
        !self.is_past?
    end

    def is_soon?
        return @start_date < Time.now + 60*30
    end

    def to_s
        puts ">Titre: #{@title}"
        puts ">Date de début: #{start_date}"
        puts ">Durée: #{duration}"
        print ">Invités :"
        puts @attendees.join(", ")
    end

end