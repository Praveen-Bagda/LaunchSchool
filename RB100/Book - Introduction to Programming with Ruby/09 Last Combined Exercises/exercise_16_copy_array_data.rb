contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

main_ary_index = 0
contacts.keys.each do |key|
  sub_ary_index = 0
    contacts[key][:email] = contact_data[main_ary_index][sub_ary_index]
    contacts[key][:address] = contact_data[main_ary_index][sub_ary_index + 1]
    contacts[key][:phone] = contact_data[main_ary_index][sub_ary_index + 2]
    main_ary_index += 1
end

p contacts