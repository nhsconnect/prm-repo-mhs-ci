# Overview

The certificates in this directory are obtained from the PTL-integration environment.

> `sds-ldaps.crt` expires `Jan 26 10:26:51 2027 GMT`

In order to get newer ones:

1. SSH to a bastion host which has PTL-integration connectivity (or ask some/a team that does).

2. Get the `SMSP` certificate by running:

    ```bash
    openssl s_client -connect simple-sync.int.spine2.ncrs.nhs.uk:443 -showcerts
    ```

3. Get the `SDS` certificate by running:

    ```bash
    openssl s_client -connect ldap.nis1.national.ncrs.nhs.uk:636 -showcerts
    ```

4. Put the first certificate from each of these servers to the files in this repo.
