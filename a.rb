num = rand(1..9999)


if num < 1000 and num >= 100 then
	num = num.to_s
	num = '0' + num
elsif num < 100 and num >= 10 then
	num = num.to_s
	num = '00' + num
elsif num < 10 then
	num = num.to_s
	num = '000' + num
end

puts num
