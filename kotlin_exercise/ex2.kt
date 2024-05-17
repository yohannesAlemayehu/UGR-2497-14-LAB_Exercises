fun main(){

    fun triagle(){
        val A:Int = 3
        val B:Int = 3
        val C:Int = 3
        if (A == B && B== C){
            println("The triangele is equilateral")}
        else if(A==B || B == C || A == C){
            println("The triagle is isocels")
        }
        else{
            println("The triangel is Scalene")
        }
    }
    fun salary() {
        
        val hoursWorked: Double = 45.0  
        val hourlyRate: Double = 20.0  
        
    
        val regularHours = 40.0
        val overtimeMultiplier = 1.5

    
        val regularPay = if (hoursWorked > regularHours) regularHours * hourlyRate else hoursWorked * hourlyRate
        val overtimeHours = if (hoursWorked > regularHours) hoursWorked - regularHours else 0.0
        val overtimePay = overtimeHours * hourlyRate * overtimeMultiplier
        val totalSalary = regularPay + overtimePay

        
        println("Total Salary: $$totalSalary")
        
    }
    fun season(month: Int, day: Int) {
        
        val season = when {
            (month == 12 && day >= 21) || (month == 1) || (month == 2) || (month == 3 && day < 20) -> "Winter"
            (month == 3 && day >= 20) || (month == 4) || (month == 5) || (month == 6 && day < 21) -> "Spring"
            (month == 6 && day >= 21) || (month == 7) || (month == 8) || (month == 9 && day < 23) -> "Summer"
            (month == 9 && day >= 23) || (month == 10) || (month == 11) || (month == 12 && day < 21) -> "Fall"
            else -> "Invalid date"
        }
        println("The season on is $season")
    }
    fun largest_number() {
        val num1 = 10
        val num2 = 25
        val num3 = 15
        val largest: Int
        if (num1 > num2) {
            if (num1 > num3) {
                largest = num1
            } else {
                largest = num3
            }
        } else {
            if (num2 > num3) {
                largest = num2
            } else {
                largest = num3
            }
        }
        println("The largest number among $num1, $num2, and $num3 is $largest")
    }
    triagle()
    salary()
    season(11,4)
    largest_number()
}




 