## Additional configuration to perform after deploying the WikiJS server.

```Please note that followings configuration may not be accurate for every deployments. These settings allowed Admin to make sure the WikiJS server is configured with necessary additional configuration.```

Accessing the webui from http://IPADDR_OF_SYSTEM will leads to the Setup wizard.

## Installer Setup Wizard.
- Administrator Email.
	- `Add` administrator account email address.
- Password.
	- `Add` password for administrator account.
- Site URL.
	- `Add` https://wikijs.mydomain.com
- `Disable` Allow Telemetry.

Once the installation finishes, we can login using the above configured email address and password.  

## Navigate to the `Administration` for modifying system-wide settings.

### Site Settings.
- General Settings.
	- General.
		- Site Title.
			- Wiki.js
	- Footer Copyright.
		- `Add` information for followings in the wizard if requires.
			- `Company / Organization Name`
			- `Footer Text Override`
			- `Site Description`
	- Edit Shortcuts.
		- `Enable` FAB Quick Edit Menu.
- Local Settings.
	- Local Settings.
		- Site Local.
			- `Select` English.
		- `Disable` Update automatically for Automatically download updates to this locale as they become available.
	- Multilingual Namespacing.
		- `Disable` Multilingual Namespaces.
- Navigation Settings.
	- Navigation Mode.
		- `Select` Custom Navigation.

### Users Settings.
- Group Settings.
	- Guest Group.
		- `Edit` default Guest group and then `uncheck` all the permission associated with it.

	NOTE - We can also create an internal group `internal-wiki-group` which contains all the default new users and will have permission for managing pages.  
	Once `internal-wiki-group` group is created, edit the group to customize the settings.
	- Edit `internal-wiki-group` group.
		- Settings.
			- `Enter` internal-wiki-group in Group Name.
		- Permissions.
			- Content Permissions.
				- `read:pages`
				- `write:pages`
				- `manage:pages`
				- `write:styles`
				- `read:history`
				- `read:assets`
				- `write:assets`
				- `manage:assets`
				- `read:comments`
				- `write:comments`
				- `manage:comments`
			- Administration Permissions.
				- `manage:navigation`
				- `manage:theme`
		- Page Rules.
			- `Read Pages - read:pages`
			- `Create + Edit Pages - write:pages`
			- `Rename / Move Pages - manage:pages`
			- `View Pages History - read:history`
			- `Read / Use Assets - read:assets`
			- `Upload Assets - write:assets`
			- `Edit + Delete Assets - manage:assets`
			- `Edit Styles - write:styles`
			- `Read Comments - read:comments`
			- `Create Comments - write:comments`
			- `Edit + Delete Comments - manage:comments`

	Now during creating a user we can assign the `internal-wiki-group` group to the user.

### Modules Settings.
- Analytics Settings.
	- `Make sure all analytics are disabled.`
- Authentication Settings.
	- If requires then `Active Strategies` to provide the Single Sign On Service.
	
	NOTE - For GitLab, select `GitLab` from `ADD STRATEGY` button and then follow [GitLab Authentication Support](./gitlab-authentication-support.md).
- Comments Settings.
	- Provider.
		- `Select` Default Build-in advanced comments tool.

### System Settings.
- Mail Settings.
	- Configuration.
		- Sender Name.
			- `Enter` Email address.
		- Sender Name.
			- `Enter` Email address.
		- Host.
			- `Enter` SMTP server hostname.
		- Port.
			- `Enter` SMTP server port number.
		- `Disable` Secure (TLS).
		- `Enable` Verify SSL Certificate.
		- Username.
			- `Enter` Email address.
		- Password.
			- `Enter` Email address password.
	After applying the changes, validate with `Send a test email` to see if this configs works or not.
- Security Settings.
	- Uploads.
		- Max Upload Size.
			- `Enter` 33554432 for allowing maximum size (32MB) for a single file.
		- Max Files per Upload.
			- `Enter` 4.
		- `Enable` Scan and Sanitize SVG Uploads.
		- `Enable` For Download of Unsafe Extensions.
- Utilities Settings.
	- Telemetry.
		- `Disable` Enable Telemetry.


