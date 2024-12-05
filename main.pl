% Персонажи
hero(dva).
hero(doomfist).
hero(mauga).
hero(reinhardt).
hero(roadhog).
hero(sigma).
hero(winston).
hero(zarya).

hero(ashe).
hero(bastion).
hero(genji).
hero(hanzo).
hero(junkrat).
hero(mccree).
hero(pharah).
hero(sombra).
hero(tracer).
hero(widowmaker).

hero(ana).
hero(brigitte).
hero(mercy).
hero(moira).

% Популярные тактики
tactics_name(poke).
tactics(poke, [tracer, hanzo, sombra, pharah, widowmaker, ashe, junkrat, bastion, roadhog, sigma, dva, moira, brigitte]).

tactics_name(dive).
tactics(dive, [genji, tracer, sombra, pharah, winston, doomfist, dva, mauga, ana, moira, brigitte, mercy]).

tactics_name(brawl).
tactics(brawl, [genji, hanzo, mccree, bastion, tracer, reinhardt, zarya, winston, sigma, doomfist, dva, mauga, ana, moira, brigitte]).


% Карты
map(kings_row).
map(horizon_lunar_colony).
map(suravasa).
map(temple_of_anuubis).

% Макс. кол-во раундов для карты
max_rounds(kings_row, 4).
max_rounds(horizon_lunar_colony, 3).
max_rounds(suravasa, 1).
max_rounds(temple_of_anuubis, 3).

% Роли
role(tank).
role(damage).
role(support).

% Роль для каждого персонажа
hero_role(dva, tank).
hero_role(doomfist, tank).
hero_role(mauga, tank).
hero_role(reinhardt, tank).
hero_role(roadhog, tank).
hero_role(sigma, tank).
hero_role(winston, tank).
hero_role(zarya, tank).

hero_role(ashe, damage).
hero_role(bastion, damage).
hero_role(genji, damage).
hero_role(hanzo, damage).
hero_role(junkrat, damage).
hero_role(mccree, damage).
hero_role(pharah, damage).
hero_role(sombra, damage).
hero_role(tracer, damage).
hero_role(widowmaker, damage).

hero_role(ana, support).
hero_role(brigitte, support).
hero_role(mercy, support).
hero_role(moira, support).

% Способности
ability(micro_missiles).
ability(rocket_punch).
ability(overrun).
ability(fire_strike).
ability(chain_hook).
ability(kinetic_grasp).
ability(barrier_projector).
ability(particle_barrier).

ability(dynamite).
ability(reconfigure).
ability(deflect).
ability(lunge).
ability(steel_trap).
ability(flashbang).
ability(jet_dash).
ability(hack).
ability(blink).
ability(venom_mine).

ability(sleep_dart).
ability(whip_shot).
ability(resurrect).
ability(fade).

hero_ability(dva, micro_missiles).
hero_ability(doomfist, rocket_punch).
hero_ability(mauga, overrun).
hero_ability(reinhardt, fire_strike).
hero_ability(roadhog, chain_hook).
hero_ability(sigma, kinetic_grasp).
hero_ability(winston, barrier_projector).
hero_ability(zarya, particle_barrier).

hero_ability(ashe, dynamite).
hero_ability(bastion, reconfigure).
hero_ability(genji, deflect).
hero_ability(hanzo, lunge).
hero_ability(junkrat, steel_trap).
hero_ability(mccree, flashbang).
hero_ability(pharah, jet_dash).
hero_ability(sombra, hack).
hero_ability(tracer, blink).
hero_ability(widowmaker, venom_mine).

hero_ability(ana, sleep_dart).
hero_ability(brigitte, whip_shot).
hero_ability(mercy, resurrect).
hero_ability(moira, fade).
