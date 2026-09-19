val naughtyWords = Map("cloud" -> "butt", "gun" -> "rooty tooty point and shooty")

trait Censor {
    def censor(input: String): String = {
        var replacedInput = input;

        naughtyWords.keys.foreach((k) => {
            replacedInput = replacedInput.replace(k,naughtyWords(k))
        })

        return replacedInput
    }
}

class Person {

    val thoughts = "I have a gun and I'm not afraid to shoot the cloud!"

    def speak() {
        println(thoughts)
        println(s"My thoughts weigh $weightOfThoughts")
    }

    def weightOfThoughts(): Int =  {
        return thoughts.split(" ").foldLeft(0)((weight, word) => weight + word.length)
    }
}

class CensoredPerson extends Person with Censor {
    override def speak() {
        val censoredThoughts = censor(thoughts);

        println(censoredThoughts)
        println("My thoughts weigh nothing")
    }
}

var person1 = new Person()
person1.speak()

var censoredPerson1 = new CensoredPerson()
censoredPerson1.speak()