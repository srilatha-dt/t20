def validate_mail()
    mail = gets.chomp
    if mail =~ /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/
        p true
    else
        p false
    end
end

validate_mail()