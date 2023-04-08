json.extract! course, :id, :course_code, :course_name, :semester, :category, :programme, :credits, :content, :references, :department, :created_at, :updated_at
json.url course_url(course, format: :json)
