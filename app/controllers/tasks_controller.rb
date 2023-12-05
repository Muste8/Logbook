require "google/apis/calendar_v3"
require "google/api_client/client_secrets.rb"

class TasksController < ApplicationController
  before_action :authenticate_user!
  CALENDAR_ID = 'primary'

  def new
    @task = Task.new
  end

  def create
    client = get_google_calendar_client(current_user)
    task_params = params[:task]

    #variables for start and end date
          event_start = Time.new(
        task_params['start_date(1i)'],
        task_params['start_date(2i)'],
        task_params['start_date(3i)'],
        task_params['start_date(4i)'],
        task_params['start_date(5i)']
      ).to_datetime.rfc3339
      
      event_end = Time.new(
        task_params['end_date(1i)'],
        task_params['end_date(2i)'],
        task_params['end_date(3i)'],
        task_params['end_date(4i)'],
        task_params['end_date(5i)']
      ).to_datetime.rfc3339
    
    # Create a new Task object
    @task = current_user.tasks.build(
        title: task_params[:title],
        description: task_params[:description],
        start_date: event_start,
        end_date: event_end,
        members: task_params[:members]
        # Add other attributes as needed
      )

    # Save the Task to the database
    if @task.save
      # Now you can associate the Task with the event or perform any additional logic

      # Insert the event into Google Calendar
      event = get_event(task_params)
      client.insert_event(CALENDAR_ID, event)

      flash[:notice] = 'Task was successfully added.'
      redirect_to tasks_path
    else
      flash[:error] = 'Failed to save the task.'
      Rails.logger.error(@task.errors.full_messages.join(', '))
      render :new
    end
  end
  
  def get_google_calendar_client(current_user)
    client = Google::Apis::CalendarV3::CalendarService.new
    return unless (current_user.present? && current_user.access_token.present? && current_user.refresh_token.present?)
    secrets = Google::APIClient::ClientSecrets.new({
      "web" => {
        "access_token" => current_user.access_token,
        "refresh_token" => current_user.refresh_token,
        "client_id" => ENV["GOOGLE_API_KEY"],
        "client_secret" => ENV["GOOGLE_API_SECRET"]
      }
    })
    begin
      client.authorization = secrets.to_authorization
      client.authorization.grant_type = "refresh_token"

      if !current_user.present?
        client.authorization.refresh!
        current_user.update_attributes(
          access_token: client.authorization.access_token,
          refresh_token: client.authorization.refresh_token,
          expires_at: client.authorization.expires_at.to_i
        )
      end
    rescue => e
      flash[:error] = 'Your token has been expired. Please login again with google.'
      redirect_to :back
    end
    client
  end
  
  private
 
  def get_event(task_params)
    attendees = task_params[:members].split(',').map { |t| { email: t.strip } }
  
    event_start = Time.new(
      task_params['start_date(1i)'],
      task_params['start_date(2i)'],
      task_params['start_date(3i)'],
      task_params['start_date(4i)'],
      task_params['start_date(5i)']
    ).to_datetime.rfc3339
    
    event_end = Time.new(
      task_params['end_date(1i)'],
      task_params['end_date(2i)'],
      task_params['end_date(3i)'],
      task_params['end_date(4i)'],
      task_params['end_date(5i)']
    ).to_datetime.rfc3339
  
    Google::Apis::CalendarV3::Event.new(
      summary: task_params[:title],
      description: task_params[:description],
      start: { date_time: event_start, time_zone: "America/Chicago" },
      end: { date_time: event_end, time_zone: "America/Chicago" },
      attendees: attendees,
      reminders: {
        use_default: false,
        overrides: [
          { reminder_method: "popup", minutes: 10 },
          { reminder_method: "email", minutes: 20 }
        ]
      },
      notification_settings: {
        notifications: [
          { type: 'event_creation', method: 'email' },
          { type: 'event_change', method: 'email' },
          { type: 'event_cancellation', method: 'email' },
          { type: 'event_response', method: 'email' }
        ]
      },
      primary: true
    )
  end
end