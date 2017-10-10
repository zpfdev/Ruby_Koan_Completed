arr = [1,1,1,1,1]

total = 0
dups = arr.select {|x| arr.count(x) >= 3}
if dups[0] == 1
	total = total + 1000 * dups[0]
else
	total = total + 100 * dups[0]
end
arr = arr.drop(3)
puts arr
total = arr.inject(total) {|sum,x|
	if x != 1 and x!=5
		sum + 0
	elsif x == 1
		sum + 100
	else
		sum + 50
	end
}
puts total


