require_relative '../models/address_book'
 
 RSpec.describe AddressBook do # closed on ln 57
	describe "attributes" do
		it "responds to entries" do
			book = AddressBook.new
			expect(book).to respond_to(:entries)
		end # it .. do
     
		it "initializes entries as an array" do
			book = AddressBook.new
			expect(book.entries).to be_an(Array)
		end # it .. do
     
		it "initializes entries as empty" do
			book = AddressBook.new
			expect(book.entries.size).to eq(0)
		end # it .. do
	end # describe do ln 4
    
    
	describe "remove_entry" do # closed on ln 37
		it "removes an entry from the address book using name, phone, and email." do # ln36
			book = AddressBook.new
			book.add_entry("Sean Bode", "918.867.5309", "seanbode@msn.com")
 	
			name = 'Ada Lovelace'
			phone_number = '010.012.1815'
			email = 'augusta.king@lovelace.com'
			book.add_entry(name, phone_number, email)
 	
			expect(book.entries.size).to eq(2)
			book.remove_entry(name, phone_number, email)
			expect(book.entries.size).to eq(1)
			expect(book.entries.first.name).to eq("Sean Bode")
		end # it .. do
	end #describe .. do
    
	describe "#add_entry" do
		it "adds only one entry to the address book" do
        	book = AddressBook.new
        	book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
 
 			expect(book.entries.size).to eq(1)
		end # it .. do

		it "adds the correct information to entries" do
			book = AddressBook.new
			book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
			new_entry = book.entries[0]
 		
 			expect(new_entry.name).to eq('Ada Lovelace')
    	    expect(new_entry.phone_number).to eq('010.012.1815')
    	    expect(new_entry.email).to eq('augusta.king@lovelace.com')
   		end #it .. do
	end #describe #add_entry
end #Rspec describe
