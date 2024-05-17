fun main(){
    fun sort(arr: List<Int>){
        println(arr.sorted())
    }

    fun fac(num: Int): Int{
        if (num == 1){
            return 1
        }
        return num * fac(num-1)

    }
    fun unique(word: String): Boolean {
        return word.toSet().size == word.length
    }
    sort(listOf(3,4,5,2,3))
    println(fac(5))
    println(unique("yiyi"))
}
 
