FROM ghcr.io/dbt-labs/dbt-core:1.11.2

WORKDIR /dbt

# cài adapter ClickHouse (cùng minor 1.7.x với dbt-core)
RUN pip install --no-cache-dir "dbt-clickhouse~=1.7.0"

COPY . .

#profiles.yml nằm ở /dbt
ENV DBT_PROFILES_DIR=/dbt

# deps chạy trong đúng project dir (nơi có dbt_project.yml)
RUN dbt deps --project-dir /dbt/my_project