json.extract! ticket, :id, :issue, :description, :priority, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)