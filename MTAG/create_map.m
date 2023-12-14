function map = create_map(fig, places, color, alpha)
    % Creates the map for the game and draws the rectangles for available
    % places
    map = figure(fig);
    hold on
    for i = 1:length(places)
        p = fill(places(i).location.x, places(i).location.y, color);
        p.FaceAlpha = alpha;
    end
    title('MATLAB text adventure game, A! edition')
end