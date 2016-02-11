# OpenShift Keycloak Cartridge

#######################################################################################################################
# Deploying to Stage (Prod is different)
#######################################################################################################################

1. rhc app create -s keycloakstage http://cartreflect-claytondev.rhcloud.com/github/rodriguez24/openshift-keycloak-cartridge

2. add Username and Password from console to secure key storage

3. set truststore password in env: rhc env-set TRUSTSTORE_PASSWORD=<password> -a keycloakstage

3a. Verify: rhc env-list -a keycloakstage

4. upload keystore: rhc scp keycloakstage upload <keystore> wildfly/standalone/configuration/keycloak.jks

5. install MySQL cartridge: rhc cartridge-add mysql-5.5 -g small -a keycloakstage

6. add Username and Password from console to secure key storage

7. rhc restart-app keycloakstage

8. verify you can login: https://keycloakstage-whistic.rhcloud.com/auth/admin/master/console/

9. Create alias: rhc alias add keycloakstage auth-stage.whistic.com

10. Add cert: rhc alias update-cert keycloakstage auth-stage.whistic.com --certificate <fullchain.pem> --private-key <key_file>

11. Add CNAME in route 53:
11a. name: auth-stage
11b. type: CNAME
11c. value: keycloakstage-whistic.rhcloud.com

12. Login: https://auth-stage.whistic.com/auth/admin/master/console/

13. Add Realm: Hover over 'Select realm'. Click 'Add realm'

14. Import realm: Import <whistic stage realm json>

15. Update JWTs in whistic webapp


#######################################################################################################################

You can build a gear using this cartridge with the following command:

	rhc app create keycloak http://cartreflect-claytondev.rhcloud.com/github/rodriguez24/openshift-keycloak-cartridge
	
It will take a few minutes to build, so be patient.

You can also start a specific version by adding ?commit<VERSION> to the url. For example to start 1.7.0.Final run:

	rhc app create keycloak http://cartreflect-claytondev.rhcloud.com/github/rodriguez24/openshift-keycloak-cartridge?commit=1.7.0.Final

## Thanks to the following:

https://github.com/keycloak/openshift-keycloak-cartridge

https://github.com/developercorey/openshift-wildfly-cartridge
