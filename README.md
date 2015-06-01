# OpenShift Keycloak Cartridge

You can build a gear using this cartridge with the following command:

	rhc app create keycloak http://cartreflect-claytondev.rhcloud.com/github/keycloak/openshift-keycloak-cartridge
	
It will take a few minutes to build, so be patient.

## Thanks to the following:

https://github.com/developercorey/openshift-wildfly-cartridge

## Updating Keycloak

To update the version of Keycloak in the cartridge follow these steps:

1. Download server-dist
2. Delete the following

    versions/9/standalone/providers
    versions/9/standalone/themes
    versions/9/standalone/configuration/configuration/keycloak-sever.json
    versions/9/modules

3. Copy the above from the server-dist


