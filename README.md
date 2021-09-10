# Reformat Snowsql
Reformats SQL with SnowSQL specific syntaxes, using the [Snowsql-formatter](https://github.com/Snowflake-Labs/snowsql-formatter), a version of the [SQL-Formatter](https://github.com/zeroturnaround/sql-formatter) with specifications for Snowflake.


# Usage
1. Checkout the action on the main branch: erevear/snowsql-formatter-action@main
2. Commit files
on: [push]

```jobs:
  custom_test:
    runs-on: ubuntu-latest
    steps:
      - name: checkout repo
        uses: actions/checkout@v2.3.4
        with:
          repository: ${{ github.repository }}
          token: ${{ github.token }}
      - name: Testing
        uses: erevear/snowsql-formatter-action@main
      - name: Commit files
        run: |
          git config --local user.email "<githubusername>@users.noreply.github.com"
          git config --local user.name "SnowSQL Formatter Action"
          git commit --all -m"Reformatted to SnowSQL syntaxes" || true
      - name: Push
        run: git push "https://${{github.actor}}:${{secrets.SOURCE_PUSH_TOKEN}}@github.com/${{github.repository}}.git" "HEAD:${{ github.ref }}"```
