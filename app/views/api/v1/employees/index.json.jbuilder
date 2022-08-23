json.employees @employees do |employee|
    json.(employee,:id,:name,:phone_no,:email,:age,:address)
end