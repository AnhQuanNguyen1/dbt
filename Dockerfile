FROM ghcr.io/dbt-labs/dbt-core:1.11.2

WORKDIR /dbt

# Cài adapter ClickHouse
RUN pip install --no-cache-dir dbt-clickhouse==1.7.1

COPY . .

# Install dependencies
RUN dbt deps