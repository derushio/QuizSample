require "AppUtil"
require "Resources"

Game = {
    new = function()
        local this = {}

        this.backGround = display.newImageRect(backGroundImage, w, h)
        this.backGround.x = w/2
        this.backGround.y = h/2

        this.swimmer = display.newImageRect(swimmerImage, w/4, w/4)
        this.swimmer.x = w/2
        this.swimmer.y = h/3 + this.swimmer.height

        this.shark = display.newImageRect(sharkImage, w/4, w/4)
        this.shark.x = w/2
        this.shark.y = h - this.shark.height/2

        this.ship = display.newImageRect(shipImage, w/5, w/10)
        this.ship.x = getLeftX(this.backGround) + this.ship.width/2
        this.ship.y = h/3

        this.island = display.newImageRect(islandImage, w/5, w/5)
        this.island.x = this.island.width/2
        this.island.y = h/3

        local count = 0
        function shipMove()
            this.ship.x = this.ship.x + (w-this.ship.width)/300 -- 20ms * 300 = 6000(6秒で画面横断)
            if (getRightX(this.ship) >= w) then
                timer.pause(this.animationTimer)
            end
        end

        function onTick()
            shipMove()
        end

        this.animationTimer = timer.performWithDelay(20, onTick, 0)

        return this
    end
}
