require "Game"

Stage1 = {
    new = function()
        local this = Game.new()

        local options = {}

        this.questionString = {
            "トンカチザメとは、\nシュモクザメのことである",
            "むかしは、サメのことを\nワニとよんでいた",
            "サメの口の中には、\n予備の歯が何列も生えている",
            "サメが本気を出すと、\n時速100kmの早さで泳げる",
            "サメの鼻には、\n電気を感じ取るセンサーがついている"
        }

        this.questionBG = display.newImageRect(this.viewGroup, questionImage, w, h/3)
        this.questionBG.x = w/2
        this.questionBG.y = getTopY(this.swimmer) - this.questionBG.height/2
        this.questionBG.alpha = 0.8

        options = {}
        options = {
           text = this.questionString[1],
           x = this.questionBG.x,
           y = this.questionBG.y,
           fontSize = 50,
           width = this.questionBG.width * 4/5,
           height = this.questionBG.height * 2/3,
           align = "center"
        }

        this.question = display.newText(options)
        this.question:setTextColor(0, 0, 0)
        this.viewGroup:insert(this.question)

        return this
    end
}
