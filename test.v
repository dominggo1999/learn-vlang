import rand
import os

fn main() {
	secret_number := rand.u32_in_range(1, 101) ?

	println(secret_number)

	for {
		mut guess := os.input('Enter your guess :').int()

		if guess > secret_number {
			println('Try Lower')
		} else if guess < secret_number {
			println('Try Higher')
		} else {
			println('You win, thank you for playing')

			break
		}
	}
}
