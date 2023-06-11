# クエストのテストデータ作成
9.times do |n|
    Quest.create(
      title: "Sample Quest #{n+1}",
      description: "This is the sample quest number #{n+1}.",
      quest_category: 1,
      difficulty: 2,
      status: 0,
      reward: 100,
      user_id: 1
    )
  end

  # ユーザーのテストデータ作成
3.times do |n|
    User.create(
      email: "user#{n+1}@example.com",
      encrypted_password: "password",
      name: "User #{n+1}"
    )
  end
  
  puts "ユーザーのテストデータの作成が完了しました。"
  puts "クエストのテストデータの作成が完了しました。"
  