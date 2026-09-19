import scala.collection.mutable.ArrayBuffer

class XandoGame(val board: ArrayBuffer[Char]) {

    def printGame() = {
        println("Xando")
        for (i <- 0 until 9 by 3) {
           println("|" + board(i) + "|" + board(i+1) + "|" + board(i+2) + "|") 
        }
        val status = getStatus()
        println("Status: " + status)
        println("-----------")
    }

    def getStatus(): String = {
        var (xCount, oCount) = (0,0)

        // Check rows
        for (i <- 0 until 9 by 3) {
            val row = List(board(i), board(i+1), board(i+2))

            xCount = row.count(c => c == 'x')

            if(xCount == 3) return "x_winner"

            oCount = row.count(c => c == 'o')

            if(oCount == 3) return "o_winner"
        }


        // Check columns
        for (i <- 0 until 3) {
            val column = List(board(i), board(i+3), board(i+6))

            xCount = column.count(c => c == 'x')

            if(xCount == 3) return "x_winner"

            oCount = column.count(c => c == 'o')

            if(oCount == 3) return "o_winner"
        }

        // Check diagonal 1
        val diag1 = List(board(0), board(4), board(8))

        xCount = diag1.count(c => c == 'x')

        if(xCount == 3) return "x_winner"

        oCount = diag1.count(c => c == 'o')

        if(oCount == 3) return "o_winner"

        // Check diagonal 2
        val diag2 = List(board(2), board(4), board(6))

        xCount = diag2.count(c => c == 'x')

        if(xCount == 3) return "x_winner"

        oCount = diag2.count(c => c == 'o')

        if(oCount == 3) return "o_winner"

        // No winner so far. Check if tie.
        val spaceCount = board.count(c => c == '_')

        if(spaceCount == 0) return "tie"

        return "in_progress"
    }
}

val xWinnerGame = new XandoGame(ArrayBuffer(
    'x', 'o', '_',
    '_', 'x', 'o',
    '_', '_', 'x'
    ))
xWinnerGame.printGame()


val tieGame = new XandoGame(ArrayBuffer(
    'x', 'o', 'x',
    'x', 'x', 'o',
    'o', 'x', 'o'
    ))
tieGame.printGame()

val inProgressGame = new XandoGame(ArrayBuffer(
    'x', 'o', '_',
    'x', '_', 'o',
    'o', '_', 'x'
    ))
inProgressGame.printGame()