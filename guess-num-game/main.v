import os
import strconv
import rand

fn main() {
	guessed := rand.int_in_range(1, 101)
	attempts := 6
	println('Can you guess the number between 1 and 100 with $attempts attempts?')

	for i := attempts; i > 0; i-- {
		println('\nAttempts remain: $i')
		input := os.input('Enter the number: ')
		num := strconv.atoi(input) or {
			println('NaN entered: $input!')
			continue
		}
		if num < 1 && num > 100 {
			println('Number is not valid: $num!')
			continue
		}
		if num == guessed {
			println('$num is equal to guessed number!')
			println('You won!')
			return
		}

		if num < guessed {
			println('$num is less than guessed number!')
		}

		if num > guessed {
			println('$num is more than guessed number!')
		}

		if i != 1 {
				println('Please try again!')
				continue
			}
		
	}
	println('The guessed number was $guessed!')
	println('You lose!')
}