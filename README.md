# README

This is the authentication project in rails in which you can login with both username-password and google login for which omniauth gem is used. 


## Initialization steps

1.Clone github repo
```bash
    git clone git@github.com:prashant676a/omniauth-rails.git
    cd omniauth-rails
```

2. install all dependencies
```bash
    bundle install
```

3.Get Credentials from Google api console
To enable Google OAuth2 login, you need to obtain credentials from the Google API Console:

-  Go to the Google API Console.
-  Create a new project or select an existing one.
-  Navigate to the "Credentials" tab and create credentials for a "OAuth client ID".
-  Set the authorized redirect URI to http://localhost:3000/auth/google_oauth2/callback.

4. Set Environment Variables
Create a `.env` file in the root directory of your project and add the following environment variables:

```plaintext
    GOOGLE_CLIENT_ID=your_google_client_id
    GOOGLE_CLIENT_SECRET=your_google_client_secret
```

Replace your_google_client_id and your_google_client_secret with the credentials obtained from the Google API Console.


5. Run your rails app
``` bash
    rails s
```

6. Access Your application
Open your web browser and visit http://localhost:3000. You should now be able to:

-  Register new users with a username and password.
-- Log in using existing credentials.
-- Log in using your Google account via OAuth2 integration.

