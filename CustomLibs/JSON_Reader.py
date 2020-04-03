import json
from robot.api.deco import keyword


@keyword
def read_json_file(file_name):
    with open(file_name, 'r') as file:
        d = json.load(file)
    result = []
    for test_scenario in d:
        result.append(list(test_scenario.values()))
    return result