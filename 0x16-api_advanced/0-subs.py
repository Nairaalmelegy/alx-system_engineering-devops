#!/usr/bin/python3
import requests


def number_of_subscribers(subreddit):
        url = f"https://www.reddit.com/r/{subreddit}/about.json"
        headers = {'User-Agent': 'My-User-Agent'}
        sub_info = requests.get(url, headers=headers, allow_redirects=False)

        if sub_info.status_code >= 300:
            return 0
            
        return sub_info.json().get("data").get("subscribers")


if __name__ == "__main__":
    import sys
