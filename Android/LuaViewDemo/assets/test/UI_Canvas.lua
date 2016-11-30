view = View()
view.frame(100, 100, 100, 100)
view.backgroundColor(0x000000, 0.3)
view.onDraw(function(canvas)

    print(canvas)

    -- drawLine
    canvas.drawLine(0, 50, 100, 50)
    canvas.drawLine(50, 0, 50, 100)

    canvas.drawLine({
        {0, 0, 100, 0},
        {100, 0, 100, 100},
        {100, 100, 0, 100},
        {0, 100, 0, 0},
        {0, 0, 100, 100},
        {100, 0, 0, 100}
    })

    -- drawPoint
    canvas.drawPoint(1, 3)
    canvas.drawPoint(99, 97)

    canvas.drawPoint({
        {3, 1},
        {97, 99},
        {1, 97 },
        {97, 1}
    })


    -- drawRect
    canvas.drawRect(5, 5, 10, 10)
    canvas.drawRect(10, 10, 15, 15)

    canvas.drawRect({
        {15, 15, 20, 20},
        {20, 20, 25, 25},
        {26, 26, 30, 30},
    })

    -- drawRoundRects
    canvas.drawRoundRect(45, 1, 55, 5, 2, 2)
    canvas.drawRoundRect(45, 5, 55, 10, 2, 2)

    canvas.drawRoundRect({
        {45, 10, 55, 15, 2, 2},
        {45, 16, 65, 20, 1, 1},
    })

    -- drawCircle
    canvas.drawCircle(80, 0, 5)
    canvas.drawCircle(80, 15, 5)

    canvas.drawCircle({
        {80, 30, 5},
        {80, 45, 2},
    })

    -- drawText

    canvas.drawText("x", 20, 55)
    canvas.drawText("y", 20, 65)

    canvas.drawText({
        {"xx", 20, 75},
        {"yy", 20, 85},
    })

    -- drawOval
    canvas.drawOval(45, 50, 70, 60)
    canvas.drawOval(45, 60, 70, 70)

    canvas.drawOval({
        {45, 70, 70, 75},
        {45, 80, 70, 85}
    })

    -- draw Arc
    canvas.drawArc(30, 30, 50, 50, 0, 90, true)

    canvas.drawArc({
        {10, 30, 30, 40, 91, 180, true},
        {30, 30, 50, 50, 182, 100, false}
    })


    -- drawColor
    canvas.drawColor(0x00ff00, 0.5)

    print(canvas.nativeObj())
end)