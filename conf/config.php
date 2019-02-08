<?php if (!defined('APPLICATION')) exit();

// Conversations
$Configuration['Conversations']['Version'] = '2.4.201';

// Database
$Configuration['Database']['Name'] = 'forum';
$Configuration['Database']['Host'] = 'localhost';
$Configuration['Database']['User'] = 'forum';
$Configuration['Database']['Password'] = 'forumdb25';

// EnabledApplications
$Configuration['EnabledApplications']['Conversations'] = '/applications/conversations';
$Configuration['EnabledApplications']['Vanilla'] = '/applications/vanilla';

// EnabledPlugins
$Configuration['EnabledPlugins']['recaptcha'] = true;
$Configuration['EnabledPlugins']['GettingStarted'] = 'GettingStarted';
$Configuration['EnabledPlugins']['stubcontent'] = true;
$Configuration['EnabledPlugins']['swagger-ui'] = true;
$Configuration['EnabledPlugins']['Vanilla'] = true;
$Configuration['EnabledPlugins']['ButtonBar'] = true;
$Configuration['EnabledPlugins']['editor'] = true;
$Configuration['EnabledPlugins']['AllViewed'] = true;
$Configuration['EnabledPlugins']['IndexPhotos'] = true;
$Configuration['EnabledPlugins']['EmojiExtender'] = true;
$Configuration['EnabledPlugins']['Facebook'] = false;
$Configuration['EnabledPlugins']['Flagging'] = false;
$Configuration['EnabledPlugins']['VanillaInThisDiscussion'] = true;
$Configuration['EnabledPlugins']['Gravatar'] = false;
$Configuration['EnabledPlugins']['GooglePlus'] = false;
$Configuration['EnabledPlugins']['oauth2'] = true;
$Configuration['EnabledPlugins']['OpenID'] = false;
$Configuration['EnabledPlugins']['ProfileExtender'] = false;
$Configuration['EnabledPlugins']['Quotes'] = true;
$Configuration['EnabledPlugins']['SplitMerge'] = false;
$Configuration['EnabledPlugins']['StopForumSpam'] = true;
$Configuration['EnabledPlugins']['GooglePrettify'] = true;
$Configuration['EnabledPlugins']['Twitter'] = false;
$Configuration['EnabledPlugins']['VanillaStats'] = true;
$Configuration['EnabledPlugins']['vanillicon'] = false;

// Garden
$Configuration['Garden']['Title'] = 'Forums';
$Configuration['Garden']['Cookie']['Salt'] = 'i4OhB0kPADYDaFuH';
$Configuration['Garden']['Cookie']['Domain'] = '';
$Configuration['Garden']['Registration']['ConfirmEmail'] = true;
$Configuration['Garden']['Email']['SupportName'] = 'Forums';
$Configuration['Garden']['Email']['Format'] = 'text';
$Configuration['Garden']['SystemUserID'] = 1;
$Configuration['Garden']['InputFormatter'] = 'Markdown';
$Configuration['Garden']['Version'] = 'Undefined';
$Configuration['Garden']['CanProcessImages'] = true;
$Configuration['Garden']['Installed'] = true;
$Configuration['Garden']['MobileInputFormatter'] = 'TextEx';
$Configuration['Garden']['AllowFileUploads'] = true;
$Configuration['Garden']['Theme'] = 'EmbedFriendly';
$Configuration['Garden']['Embed']['Allow'] = true;
$Configuration['Garden']['Embed']['RemoteUrl'] = 'http://localhost/ProjectS2/user/forum';

// Plugins
$Configuration['Plugins']['GettingStarted']['Dashboard'] = '1';
$Configuration['Plugins']['GettingStarted']['Plugins'] = '1';
$Configuration['Plugins']['editor']['ForceWysiwyg'] = false;
$Configuration['Plugins']['StopForumSpam']['UserID'] = '7';
$Configuration['Plugins']['Vanillicon']['Type'] = 'v2';

// Routes
$Configuration['Routes']['YXBwbGUtdG91Y2gtaWNvbi5wbmc='] = array (
  0 => 'utility/showtouchicon',
  1 => 'Internal',
);
$Configuration['Routes']['DefaultController'] = 'discussions';

// Vanilla
$Configuration['Vanilla']['Version'] = '2.4.201';
$Configuration['Vanilla']['AdminCheckboxes']['Use'] = true;

// Last edited by admin (127.0.0.1) 2019-02-07 11:58:20