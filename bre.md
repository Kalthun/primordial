# Bresenham's Algorithm

function plotLine(x0, x1, y0, y1)
    dx = abs(x1 - x0)
    sx = x0 < x1 ? 1 : -1
    dy = -abs(y1 - y0)
    sy = y0 < y1 ? 1 : -1
    error = dx + dy

    while true:
        plot(x0, y0)
        e2 = 2 * error
        
        if e2 >= dy
            if x0 == x1
                break
            else
                error = error + dy 
                x0 = x0 + sx
            end if
        end if

        if e2 <= dx
            if y0 == y1
                break
            else
                error = error + dx
                y0 = y0 + sy
            end if
        end if
    end while

end function
