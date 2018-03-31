def genAns
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
	return num.to_s
end
def toArray(input)
	return input.split(/\s*/)
end

def hit(input,ans)
	input = input.split(/\s*/)
	ans = ans.split(/\s*/)

	hit = 0
	for num in 0..3 do
		if input[num] == ans[num] then
			hit += 1
		end
	end
	return hit
end

def blow(input,ans)
	input = input.split(/\s*/)
	ans = ans.split(/\s*/)
	
	blow = 0
	for num in 0..3 do
		for num1 in 0..3 do 
			if num != num1 then
				if input[num] == ans[num1] then
					blow += 1
				end
			end
		end
	end
	return blow
end
	
p '2453'
ans = "2453"
input = gets
print hit(input,ans)
print blow(input,ans)
