fun main(){
    fun even(){
        var total:Int = 0
        for (i in 1 .. 50){
            if (i%2 == 0){
                total+=i
            }
        }
        println(total)
    }
    fun prime() {
        
        val start = 10
        val end = 50
        
        println("Prime numbers between $start and $end are:")
        
        var num = start
        while (num <= end) {
            var isPrime = true
            var i = 2
            while (i <= num / 2) {
                if (num % i == 0) {
                    isPrime = false
                    break
                }
                i++
            }
            if (isPrime && num > 1) {
                println(num)
            }
            num++
        }
    }
    fun main() {
        val number = 12321 
    
        var originalNumber = number
        var reversedNumber = 0
    
        var remainder: Int
        while (originalNumber != 0) {
            remainder = originalNumber % 10
            reversedNumber = reversedNumber * 10 + remainder
            originalNumber /= 10
        }
    
        if (number == reversedNumber) {
            println("$number is a palindrome")
        } else {
            println("$number is not a palindrome")
        }
    }
    
    
    even()
    prime()
    pali()

}