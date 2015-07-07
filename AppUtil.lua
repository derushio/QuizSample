w = display.contentWidth
h = display.contentHeight

function getTopY(view)
    return (view.y - view.height/2)
end

function getBottomY(view)
    return (view.y + view.height/2)
end

function getLeftX(view)
    return (view.x - view.width/2)
end

function getRightX(view)
    return (view.x + view.width/2)
end
