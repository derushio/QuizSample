require "Game"

Stage1 = {
    new = function()
        local this = Game.new()

        this.questions = {
            {question = "トンカチザメとは、\nシュモクザメのことである"; answer = true},
            {question = "むかしは、サメのことを\nワニとよんでいた"; answer = true},
            {question = "サメの口の中には、\n予備の歯が何列も生えている"; answer = true},
            {question = "サメが本気を出すと、\n時速100kmの早さで泳げる"; answer = false},
            {question = "サメの鼻には、\n電気を感じ取るセンサーがついている"; answer = true}
        }

        return this
    end
}
