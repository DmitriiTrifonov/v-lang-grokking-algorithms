fn main() {
	//pos    0  1  2  3  4  5  6  7  8   9
	nums := [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	number := 7
	println(binary_search(nums, number)?) // 6 
	println(binary_search(nums, -2)) // error

	//pos      0    1    2    3    4    5    6  
	runes := [`a`, `b`, `c`, `d`, `e`, `f`, `g`]
	rune := `b`
	println(binary_search(runes, rune)?) // 1
	println(binary_search(runes, `z`)) // error

	//pos      0       1      2      3 
	strs := ['bird', 'cat', 'dog', 'fish']
	str := 'dog'
	println(binary_search(strs, str)?) // 2
	println(binary_search(strs, 'apple')) // error
}

fn binary_search<T>(array []T, item T) ?int {
	mut low := 0
	mut high := array.len - 1

	for low <= high {
		mut mid := (low + high) / 2
		guess := array[mid]

		if guess == item {
			return mid
		}

		if guess > item {
			high = mid - 1
		} else {
			low = mid + 1
		}

	}
	return error('$item not found')
}