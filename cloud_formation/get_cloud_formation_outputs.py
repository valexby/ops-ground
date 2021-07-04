#!/usr/bin/env python3
import json
import sys


def main():
    stacks = json.loads(sys.stdin.read())["Stacks"]
    if len(stacks) > 1:
        raise ValueError("Find more then one stack by request. Probably stacks filtering issue.")

    stack = stacks[0]
    if stack["StackStatus"] != "CREATE_COMPLETE":
        return
    outputs = stacks[0]["Outputs"]
    repository_name = next(variable for variable in outputs if variable["OutputKey"] == "ECRRepoUri")
    print(repository_name["OutputValue"])


if __name__ == "__main__":
    main()
