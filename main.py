from pyswip import Prolog
from random import choice

prolog = Prolog()

prolog.consult("main.pl")

roles_synonyms = {
    "tank": ["танк", "танки", "tank", "tanks"],
    "damage": ["урон", "урона", "дд", "дпс", "damage", "dd", "dps"],
    "support": ["поддержка", "поддержки", "саппорты", "сапорты", "support", "healers", "heal"]
}

def get_all_heroes() -> list[str]:
    query = "findall(Hero, hero(Hero), Heroes)"
    return list(prolog.query(query))[0]["Heroes"]

all_heroes = get_all_heroes()


def parse_role(input: str) -> str:
    tokens = list(map(lambda token: token.lower().strip() , input.split(" ")))
    for token in tokens:
        for role, synonyms in roles_synonyms.items():
            if token in synonyms:
                return role
    return ""

def parse_hero(input: str) -> str:
    tokens = list(map(lambda token: token.lower().strip() , input.split(" ")))
    for token in tokens:
        if token in all_heroes:
            return token
    return ""

def get_heroes_for_role(role: str) -> list[str]:
    all_heroes_query = f"findall(Hero, (hero(Hero),hero_role(Hero, {role})), Heroes)"
    heroes = prolog.query(all_heroes_query)
    return list(heroes)[0]["Heroes"]

def find_tactic(hero: str) -> dict:
    tactic_name_query = f"tactics(Tactic, Heroes), member({hero}, Heroes), findall(Tactic, (tactics(Tactic, H), member({hero}, H)), TacticsList), random_member(Tactic, TacticsList)"
    available_tactics = list(prolog.query(tactic_name_query))
    tactic = choice(available_tactics)
    return {
        "name": tactic["Tactic"],
        "heroes": tactic["Heroes"]
    }


def main():

    running = True
    while running:
        user_input = input("> ")
        target_role = parse_role(user_input)
        if target_role != "":
            print("Доступные герои:", ", ".join(get_heroes_for_role(target_role)))
            continue
        target_hero = parse_hero(user_input)
        if target_hero == "":
            print("Персонаж не найден")
            continue

        tactics = find_tactic(target_hero)
        print(f"Можешь воспользоваться тактикой {tactics["name"]}")
        print("Доступные персонажи:", ", ".join(tactics["heroes"]))
        

if __name__ == "__main__":
    main()
