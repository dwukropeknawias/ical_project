class EventsController < ApplicationController



  def transfer_data_from_ics

      @event_file = File.open("calendar.ics")
      @events = Icalendar::Event.parse(@event_file)

      @events.each do |event|
        current_student.events.create(
          name: event.summary,
          location: event.location,
          lecturer: event.description,
          start_time: event.dtstart,
          end_time: event.dtend)
      end


    redirect_to current_student
  end



end
