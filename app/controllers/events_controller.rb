class EventsController < ApplicationController



  def show


    @event = Event.find(params[:id])
    @students = @event.students.paginate(page: params[:page])
  end

  def transfer_data_from_ics

      @event_file = File.open("calendar2.ics")
      @events = Icalendar::Event.parse(@event_file)

      @events.each do |event|
        current_student.events.create(
          name: event.summary,
          location: event.location,
          lecturer: event.description,
          start_time: event.dtstart,
          end_time: event.dtend,
          MD5_digest: Digest::MD5.hexdigest(event.summary + event.location + event.description + event.dtstart.to_s + event.dtend.to_s) )
      end


    redirect_to current_student
  end



end
