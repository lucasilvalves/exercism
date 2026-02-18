isnegative(x) = x < 0
ispositive(x) = x >= 0

function score(x, y)
    flag = (isnegative(x) && isnegative(y)) || (ispositive(x) && ispositive(y)) ? abs(y + x) : abs(y - x)
    # return flag
    if flag ≥ 0 && flag < 1.5
        return 10
    elseif flag ≥ 1.5 && flag ≤ 7
        return 5
    elseif flag > 7 && flag ≤ 14
        return 1
    else
        return 0
    end
end
