# Enabling authentication using Gitlab OAuth Application.
Instructions for creating a [GitLab OAuth application](https://docs.gitlab.com/ee/integration/oauth_provider.html).

`NOTE - Please replace your corresponding URLs for WikiJS and GitLab instance.`

## Configure the following settings in the OAuth application.
- Name - WikiJS
- Redirect URL -  https://wikijs.mydomain.com/login/RANDOM_UUID/callback 
    - NOTE - `This URL can be found in the Configuration Reference section.`
- Scopes - read_user

After saving the application, in the application page we can find Application ID and Secret.

## Add OAuth provider in WikiJS Admin Panel.
- Name - GitLab Login
- `Enable` Active for Are users able to login using this strategy?.
- Client ID - Application ID from OAuth application.
- Client Secret - Secret from OAuth application.
- Base URL - https://gitlab.mydomain.com
- Authorization endpoint - https://gitlab.mydomain.com/oauth/authorize
- Token endpoint - https://gitlab.mydomain.com/oauth/token

### Registration.
- `Enable` Allow self-registration.
- Assign to Group.
    - `Add` internal-wiki-group that created earlier.
