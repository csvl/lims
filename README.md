<!--
SPDX-FileCopyrightText: 2024 Gerald Wiese <wiese@gnuhealth.org>
SPDX-FileCopyrightText: 2024 Leibniz University Hannover

SPDX-License-Identifier: GPL-3.0-or-later
-->

# What is GNUHealth


The GNU Health project provides the tools for individuals, health professionals, institutions and governments to proactively assess and improve the underlying determinants of health, from the socioeconomic agents to the molecular basis of disease. From primary health care to precision medicine. The following are the main components that make up the GNU Health ecosystem:

* Social Medicine and Public Health
* Hospital Management (HMIS)
* Laboratory Management (Occhiolino)
* Personal Health Record (MyGNUHealth)
* Bioinformatics and Medical Genetics
* Thalamus and Federated health networks
* GNU Health embedded on Single Board devices

More details on https://www.gnuhealth.org/

# How to use the images

## Run GNU Health with Docker Compose

You can use this repository to set up a local GNU Health server using Docker Compose. Therefor follow the following instructions:
- [Install Docker](https://docs.docker.com/engine/install/)
- Run docker compose up -d --build
- Install & run GNU Health client using [Ansible](https://docs.gnuhealth.org/ansible/examples/gnuhealth_client.html) or [Vanilla](https://docs.gnuhealth.org/hmis/techguide/installation/vanilla.html#installation-of-the-gnu-health-client) installation
- Connect to localhost:8080, use 'health' for empty database and 'ghdemo44' for demo database. Username is 'admin' and password 'gnusolidario'.
- Run 'python3 test.py' for non interactive connection test

This is intended for developing and testing purposes - not for productive use!

For further information check the [GNU Health documentation portal](https://docs.gnuhealth.org/).

## Environment Variables

Docker image can be run with a number of environment variables, allowing to configure images. Please see [env template file](/gnuhealth/env.template) for an example. This section explains every variable with a default value.

**GNUHEALTH_DB_HOST**

Hostname for PostgreSQL instance to be used - will be set automatically in Docker compose.

    GNUHEALTH_DB_HOST="db"

**GNUHEALTH_DB_PORT**

Port for PostgreSQL instance to be used - will be set automatically in Docker compose.

    GNUHEALTH_DB_PORT=5432

**GNUHEALTH_DB_USERNAME**

User name for PostgreSQL instance to be used - will be set automatically in Docker compose.

    GNUHEALTH_DB_USERNAME=gnuhealth

**GNUHEALTH_DB_PW**

Password for PostgreSQL instance to be used - will be set automatically in Docker compose.

    GNUHEALTH_DB_PW=gnusolidario

**GNUHEALTH_DB_NAME**

Name of database for PostgreSQL instance to be used - will be set automatically in Docker compose.

    GNUHEALTH_DB_NAME=health

**GNUHEALTH_ADMIN_MAIL**
Admin user for GNUHealth instance - will be set automatically in Docker compose.

    GNUHEALTH_ADMIN_MAIL=example@example.com

**GNUHEALTH_ADMIN_PW**

Password for admin user for GNUHealth instance - will be set automatically in Docker compose.

    GNUHEALTH_ADMIN_PW=gnusolidario

## Adding HTTPS

If you want to add HTTPS, follow this steps:

- Add your certificate and key

- Uncomment Option B in web-site/reverse_proxy.conf and insert your paths (or leave A & B)

- Uncomment the line "- 8443:443" on the bottom of docker-compose.yml
