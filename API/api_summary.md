# API Integration Summary

## 1. What is a REST API?

A REST API (Representational State Transfer Application Programming Interface) allows different software applications to communicate over the internet using HTTP methods. It helps applications exchange data in formats such as JSON.

## 2. HTTP Status Codes

- **200 OK:** The request was successful, and the server returned the requested data.
- **404 Not Found:** The requested resource could not be found on the server.

## 3. Understanding the jq Command

Command used:

```bash
cat API/github_profile.json | jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'
```

Explanation:

- `cat API/github_profile.json`: Reads the GitHub profile JSON file.
- `|`: Sends the output to the next command.
- `jq`: Processes and formats JSON data.
- `{ }`: Creates a new JSON object containing selected fields.
- `.name`: Extracts the user's name.
- `.public_repos`: Extracts the number of public repositories.
- `.followers`: Extracts the number of followers.
- `.created_at`: Extracts the account creation date.
