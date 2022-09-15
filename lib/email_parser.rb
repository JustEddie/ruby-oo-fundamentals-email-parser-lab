# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_accessor :email



    def initialize (email)
        @email = email.split
        @email.map {|x| if x[x.length-1]=="," 
            x[x.length-1]="" 
        end}
        @email = @email.uniq

    end

    def parse
        @email
    end
end