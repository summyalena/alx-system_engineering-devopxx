#!/usr/bin/python3
"""Exports data in the CSV format"""

if __name__ == "__main__":

    import csv
    import requests
    import sys

    if sys.argv[1].isdigit():
        userId = sys.argv[1]
    else:
        exit(1)
    user = requests.get("https://jsonplaceholder.typicode.com/users/{}"
                        .format(userId))
    name = user.json().get('username')
    todos = requests.get('https://jsonplaceholder.typicode.com/todos')

    filename = userId + '.csv'
    with open(filename, mode='w') as f:
        writer = csv.writer(f, delimiter=',', quotechar='"',
                            quoting=csv.QUOTE_NONNUMERIC, lineterminator='\n')
        for task in todos.json():
            writer.writerow([userId, name, str(task.get('completed')),
                             task.get('title')])
