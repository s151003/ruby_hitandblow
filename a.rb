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
	return num
end
ans = genAns().to_s

def judge(input,ans)
	input = input.split(/\s*/)
	ans = ans.split(/\s*/)
	#hit判定
	hit = 0
	for num in 0..3 do
		if input[num] == ans[num] then
			hit += 1
		end
	end
end
judge("2453",ans)
