%% Script for generating the places on the game

close all
clear all

places(1).name = 'Lecture hall U1';
places(1).location.x = [4050, 4275, 4275, 4050];
places(1).location.y = [1560, 1560, 1720, 1720];
places(1).description = 'This is a lecture hall, by atteding the lecture you can gain intelligence, but it costs you energy.';
places(1).action = 'lecture_function(150)';


places(2).name = 'Lecture hall U2';
places(2).location.x = [4140, 4600, 4600, 4140];
places(2).location.y = [1785, 1785, 2130, 2130];
places(2).description = places(1).description;
places(2).action = 'lecture_function(400)';


places(3).name = 'Lecture hall U3';
places(3).location.x = [4003, 4147, 4171, 4066];
places(3).location.y = [2266, 2222, 2388, 2420];
places(3).description = places(1).description;
places(3).action = 'lecture_function(100)';


places(4).name = 'Lecture hall U4';
places(4).location.x = [4000, 3970, 3787, 3826];
places(4).location.y = [2259, 2503, 2468, 2234];
places(4).description = places(1).description;
places(4).action = 'lecture_function(200)';


places(5).name = 'Lecture hall E';
places(5).location.x = [2580, 2580, 2290, 2290];
places(5).location.y = [1594, 1424, 1424, 1594];
places(5).description = places(1).description;
places(5).action = 'lecture_function(200)';


places(6).name = 'Lecture hall D';
places(6).location.x = [2220, 1930, 1930, 2220];
places(6).location.y = [1422, 1422, 1595, 1595];
places(6).description = places(1).description;
places(6).action = 'lecture_function(250)';


places(7).name = 'Alvari Food & Co.';
places(7).location.x = [1360, 850, 850, 1360];
places(7).location.y = [1235, 1235, 1460, 1460];
places(7).description = 'This is a student restaurant, here you can gain energy, but it costs you money.';
places(7).action = 'restaurant_function(status, ceil(rand()*8))';


places(8).name = 'Alvari square';
places(8).location.x = [1910, 1910, 70, 70];
places(8).location.y = [2270, 3960, 3960, 2270];
places(8).description = 'This is outside area where you can enjoy the Finnish weather, but the mosquitoes might give you rough times some days...';
places(8).action = 'outdoor_function(n_visits)';


places(9).name = 'M-wing';
places(9).location.x = [1930, 3080, 3080, 1930];
places(9).location.y = [2485, 2485, 2700, 2700];
places(9).description = 'This is the math department, you can earn money by being a TA, but be careful of not becoming a PhD slave.';
places(9).action = 'job_function(status, "Math")';


places(10).name = 'Bomb shelter';
places(10).location.x = [2515, 2515, 1935, 1935];
places(10).location.y = [1660, 2090, 2090, 1660];
places(10).description = 'This is the a secret place of which nobody talks or knows much. Do you dare to enter?';
places(10).action = 'shelter_function(n_visits)';


places(11).name = 'Inkubio guild room';
places(11).location.x = [2920, 2625, 2625, 2920];
places(11).location.y = [1730, 1730, 1615, 1615];
places(11).description = 'This is a guild room, you can drink coffee, tea or hot chocolate and chat with your friends.';
places(11).action = 'guild_function("Inkubio")';

places(12).name = 'FK guild room';
places(12).location.x = [2975, 3290, 3290, 2975];
places(12).location.y = [1730, 1730, 1615, 1615];
places(12).description = 'This is a guild room, you can drink coffee, tea or hot chocolate and chat with your friends.';
places(12).action = 'guild_function("FK")';


places(13).name = 'The HUB';
places(13).location.x = [2625, 3150, 3150, 2625];
places(13).location.y = [1775, 1775, 2090, 2090];
places(13).description = 'This is a self-study place, you will gain intelligence by studying, but remember to spend `reasonable` amount of time here.';
places(13).action = 'study_function(n_visits)';


places(14).name = 'Kvarkki';
places(14).location.x = [5150, 5555, 5555, 5150];
places(14).location.y = [1150, 1150, 1360, 1360];
places(14).description = 'This is a student restaurant, here you can gain energy, but it costs you money.';
places(14).action = 'restaurant_function(status, ceil(rand()*6))';


places(15).name = 'Studio kipsari';
places(15).location.x = [5215, 5690, 5690, 5215];
places(15).location.y = [3475, 3475, 3845, 3845];
places(15).description = 'This is a student restaurant, here you can gain energy, but it costs you money.';
places(15).action = 'restaurant_function(status, 10)';


places(16).name = 'Täffä';
places(16).location.x = [3470, 3830, 3830, 3470];
places(16).location.y = [3660, 3660, 3995, 3995];
places(16).description = 'This is a student restaurant, here you can gain energy, but it costs you money.';
places(16).action = 'restaurant_function(status, -1)';

places(17).name = 'Nanotalo';
places(17).location.x = [2260, 2700, 2700, 2260];
places(17).location.y = [19, 19, 620, 620];
places(17).description = 'This is the physics department, you can earn money by being a reserach assistant, but be careful of not becoming a PhD slave or just getting stuck in a lab.';
places(17).action = 'job_function(status, "Physics")';


places(18).name = 'The metro station';
places(18).location.x = [1, 320, 320, 1];
places(18).location.y = [90, 90, 470, 470];
places(18).description = 'This is an exit point, by taking the metro you quit the game.';
places(18).action = 'end_game()';

places(19).name = 'The invisible tree trunk';
places(19).location.x = [4490, 4718, 4562, 4388];
places(19).location.y = [3283, 3361, 3685, 3517];
places(19).description = 'This is a place where you can try to solve a mistery';
places(19).action = 'solve_mystery(int, energy, loc_history, keys)';

save('places.mat', "places");