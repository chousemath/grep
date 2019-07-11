import requests
from bs4 import BeautifulSoup


def make_url(season: int, episode: int) -> str:
    se = str(season)
    if len(se) == 1:
        se = '0' + se

    ep = str(episode)
    if len(ep) == 1:
        ep = '0' + ep
    return f'https://fangj.github.io/friends/season/{se}{ep}.html'


season_num = 2
episode_count = 24
for i in range(episode_count):
    episode_number = i + 1
    url = make_url(season_num, episode_number)
    print(url)
    page = requests.get(url)
    soup = BeautifulSoup(page.text, 'html.parser')
    lines = [x.get_text().strip() for x in soup.find_all('p')]
    lines = [x for x in lines]
    print(lines)
