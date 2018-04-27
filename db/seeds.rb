User.create!([
  {email: "zyiu@berkeley.edu", encrypted_password: "$2a$11$RfdwpdDasfCHCA6ZaFN6m.s05fsemJiDwUIvab5vTH4Rjp9wlW9Li", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2018-04-27 00:11:20", last_sign_in_at: "2018-04-26 23:16:01", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "dpao@berkeley.edu", encrypted_password: "$2a$11$0JZ00.BzY6UdLUd5Xd2jauqUKlw6mLqFHoJw5jX0XadTi/b78tJ5u", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2018-04-27 00:12:47", last_sign_in_at: "2018-04-27 00:05:27", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "rails@berkeley.edu", encrypted_password: "$2a$11$P4gnxU9PU848Qdr8Df600.XQLb8Q6YSKRu7zfYl6R1FsjZiL57tS.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2018-04-27 00:23:36", last_sign_in_at: "2018-04-27 00:23:36", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Comment.create!([
  {body: "adsa", listing_id: "1", user_id: "1"},
  {body: "asdfas", listing_id: "1", user_id: "1"},
  {body: "Solid place to be", listing_id: "1", user_id: "1"},
  {body: "Trusted!", listing_id: "1", user_id: "1"},
  {body: "hello world!", listing_id: "1", user_id: "1"},
  {body: "hello world!", listing_id: "1", user_id: "1"},
  {body: "hello world!", listing_id: "1", user_id: "1"},
  {body: "hello world!", listing_id: "1", user_id: "1"},
  {body: "comment", listing_id: "1", user_id: "1"},
  {body: "comment", listing_id: "1", user_id: "1"},
  {body: "ok", listing_id: "1", user_id: "1"},
  {body: "asd", listing_id: "1", user_id: "1"},
  {body: "Wow Cool!", listing_id: "2", user_id: "2"},
  {body: "Stop spamming", listing_id: "1", user_id: "2"},
  {body: "Looks great! Definitely Interested!", listing_id: "1", user_id: "3"},
  {body: "trusted sublessor!", listing_id: "4", user_id: "3"}
])
Listing.create!([
  {price: 100, description: "Unit 2", topic: "Car", user_id: "1", address: "2650 Haste St, Berkeley, CA 94720", latitude: 37.8662205, longitude: -122.2548416, num_favorites: 1, favorites_user_id: "#<User:0x007f8050aa3bb0>"},
  {price: 100, description: "Next to People's Park! Very convenient.", topic: "Car", user_id: "1", address: "2533 Hillegass Ave, Berkeley, CA 94704", latitude: 37.8642093, longitude: -122.2559039, num_favorites: 1, favorites_user_id: "#<User:0x007f80522a8170>"},
  {price: 1000, description: "Prime Real Estate", topic: "Bike", user_id: "2", address: "Soda Hall, Berkeley, CA 94709", latitude: 37.8755939, longitude: -122.2587865, num_favorites: 1, favorites_user_id: "#<User:0x007f80522e2bb8>"},
  {price: 100, description: "Some very nice place!", topic: "Car", user_id: "3", address: "2450 Durant Ave, Berkeley, CA 94704", latitude: 37.8673612, longitude: -122.2595088, num_favorites: 1, favorites_user_id: "#<User:0x007f805257b938>"}
])
