function n = get_location(places, x, y)
    % Takes in the clicked position (x,y) and returns the place's index
    % that was clicked, if a known place wasn't clicked returns -1
    n = -1;
    for i = 1:length(places)
        res = inpolygon(x,y,places(i).location.x, places(i).location.y);
        if(res)
            n = i;
            break;
        end
    end
end