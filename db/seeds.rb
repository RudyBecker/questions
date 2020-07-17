users = ["Abraham Lincoln", "Chris", "Zan", "Trever", "Jason"]
categories = ["food", "car", "city"]
foods = ["banana", "bread", "pizza"]

# Questions
categories.each do |category|
  Question.create!(
    question: "What is the best #{category}?",
    asker: users.sample
  )
end

# Responses
Question.all.each do |question|
  Response.create!(
    question: question,
    response: foods.sample,
    responder: 'Abraham Lincoln'
  )
end

Question.all.each do |question|
  foods.each do |food|
    Response.create!(
      question: question,
      response: "#{food} is the best",
      responder: users.sample
    )
  end
end

# Taggings
