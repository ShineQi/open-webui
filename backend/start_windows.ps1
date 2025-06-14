..\.venv\Scripts\activate.ps1
$env:ROOT_PATH="/openwebui";
$env:ENV="test"
$env:FRONTEND_BUILD_DIR="..\build"
$env:DATA_DIR="D:\open-webui\data"; 
$env:MICROSOFT_CLIENT_ID="xxxxx";
$env:MICROSOFT_CLIENT_SECRET="xxxxx";
$env:MICROSOFT_CLIENT_TENANT_ID="xxxx.onmicrosoft.com";
$env:ENABLE_OAUTH_SIGNUP=$true;
$env:OAUTH_MERGE_ACCOUNTS_BY_EMAIL=$true;
$env:OPENID_PROVIDER_URL="https://login.microsoftonline.com/xxxx.onmicrosoft.com/.well-known/openid-configuration";
$env:MICROSOFT_REDIRECT_URI="https://localhost:8443/openwebui/oauth/microsoft/callback";

uv run open-webui\backend\open_webui\__init__.py serve --host 127.0.0.1  --port 8443  --ssl-keyfile localhost.key --ssl-certfile localhost.crt
