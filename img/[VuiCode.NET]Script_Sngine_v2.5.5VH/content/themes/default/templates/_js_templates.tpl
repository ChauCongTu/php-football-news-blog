{strip}
<!-- Modals -->
<div id="modal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="loader pt10 pb10"></div>
            </div>
        </div>
    </div>
</div>

<script id="modal-login" type="text/template">
    <div class="modal-header">
        <h5 class="modal-title">{__("Not Logged In")}</h5>
    </div>
    <div class="modal-body">
        <p>{__("Please log in to continue")}</p>
    </div>
    <div class="modal-footer">
        <a class="btn btn-primary" href="{$system['system_url']}/signin">{__("Login")}</a>
    </div>
</script>

<script id="modal-message" type="text/template">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h5 class="modal-title">{literal}{{title}}{/literal}</h5>
    </div>
    <div class="modal-body">
        <p>{literal}{{message}}{/literal}</p>
    </div>
</script>

<script id="modal-success" type="text/template">
    <div class="modal-body text-center">
        <div class="big-icon success">
            <i class="fa fa-thumbs-up fa-3x"></i>
        </div>
        <h4>{literal}{{title}}{/literal}</h4>
        <p class="mt20">{literal}{{message}}{/literal}</p>
    </div>
</script>

<script id="modal-error" type="text/template">
    <div class="modal-body text-center">
        <div class="big-icon error">
            <i class="fa fa-times fa-3x"></i>
        </div>
        <h4>{literal}{{title}}{/literal}</h4>
        <p class="mt20">{literal}{{message}}{/literal}</p>
    </div>
</script>

<script id="modal-confirm" type="text/template">
    <div class="modal-header">
        <h5 class="modal-title">{literal}{{title}}{/literal}</h5>
    </div>
    <div class="modal-body">
        <p>{literal}{{message}}{/literal}</p>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">{__("Cancel")}</button>
        <button type="button" class="btn btn-primary" id="modal-confirm-ok">{__("Confirm")}</button>
    </div>
</script>
<!-- Modals -->


<!-- Translator -->
<script id="translator" type="text/template">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">×</button>
        <h5 class="modal-title">{__("Select Your Language")}</h5>
    </div>
    <div class="modal-body">
        <ul>
            {foreach $system['languages'] as $language}
                <li style="width: 18.7%; display: inline-block; text-align: center; margin: 30px 2px 5px;">
                    <a style="display: table; text-decoration: none; font-weight: 700; font-size: 13px; width: 100%;" href="?lang={$language['code']}">
                        {$language['title']}
                        <div style="display: table-caption; width: 50px; height: 50px; background: 0 0; margin: 0 auto 8px; box-shadow: 0 1px 3px rgba(0,0,0,.24); border-radius: 50%; transition: all .2s ease-in-out;">
                            <img width="50" src="{$language['flag']}">
                        </div>
                    </a>
                </li>
            {/foreach}
        </ul>
    </div>
</script>
<!-- Translator -->


<!-- Search -->
<script id="search-for" type="text/template">
    <div class="ptb10 plr10">
        <a href="{$system['system_url']}/search/{literal}{{#hashtag}}hashtag/{{/hashtag}}{/literal}{literal}{{query}}{/literal}">
            <i class="fa fa-search pr5"></i> {__("Search for")} {literal}{{#hashtag}}#{{/hashtag}}{/literal}{literal}{{query}}{/literal}
        </a>
    </div>
</script>
<!-- Search -->


<!-- Lightbox -->
<script id="lightbox" type="text/template">
    <div class="lightbox">
        <div class="container lightbox-container">
            <div class="lightbox-preview">
                <div class="lightbox-next js_lightbox-slider">
                    <i class="fa fa-chevron-right fa-3x"></i>
                </div>
                <div class="lightbox-prev js_lightbox-slider">
                    <i class="fa fa-chevron-left fa-3x"></i>
                </div>
                <img alt="" class="img-responsive" src="{literal}{{image}}{/literal}">
            </div>
            <div class="lightbox-data">
                <div class="clearfix">
                    <div class="pt5 pr5 pull-right flip">
                        <button data-toggle="tooltip" data-placement="bottom" title='{__("Press Esc to close")}' type="button" class="close lightbox-close js_lightbox-close"><span aria-hidden="true">&times;</span></button>
                    </div>
                </div>
                <div class="lightbox-post">
                    <div class="js_scroller js_scroller-lightbox" data-slimScroll-height="100%">
                        <div class="loader mtb10"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</script>

<script id="lightbox-nodata" type="text/template">
    <div class="lightbox">
        <div class="container lightbox-container">
            <div class="lightbox-preview nodata">
                <img alt="" class="img-responsive" src="{literal}{{image}}{/literal}">
            </div>
        </div>
    </div>
</script>
<!-- Lightbox -->


<!-- Payments -->
<script id="payment" type="text/template">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h5 class="modal-title">{__("Select Your Payment Method")}</h5>
    </div>
    <div class="modal-body text-center">
        {if $system['paypal_enabled']}
            <button class="js_payment-paypal btn btn-default btn-lg mr10" 
            data-handle="{literal}{{handle}}{/literal}" 
            {literal}{{#id}}{/literal} data-id="{literal}{{id}}{/literal}" {literal}{{/id}}{/literal} 
            {literal}{{#price}}{/literal} data-price="{literal}{{price}}{/literal}" {literal}{{/price}}{/literal} 
            {literal}{{#name}}{/literal} data-name="{literal}{{name}}{/literal}" {literal}{{/name}}{/literal} 
            {literal}{{#img}}{/literal} data-img="{literal}{{img}}{/literal}" {literal}{{/img}}{/literal} 
            data-loading-text="<i class='fa fa-circle-o-notch fa-spin'></i> {__("Loading")}">
                <i class="fab fa-paypal"></i> {__("Paypal")}
            </button>
        {/if}
        {if $system['creditcard_enabled']}
            <button class="js_payment-stripe btn btn-default btn-lg mr10" 
            data-handle="{literal}{{handle}}{/literal}" 
            {literal}{{#id}}{/literal} data-id="{literal}{{id}}{/literal}" {literal}{{/id}}{/literal} 
            {literal}{{#price}}{/literal} data-price="{literal}{{price}}{/literal}" {literal}{{/price}}{/literal} 
            {literal}{{#name}}{/literal} data-name="{literal}{{name}}{/literal}" {literal}{{/name}}{/literal} 
            {literal}{{#img}}{/literal} data-img="{literal}{{img}}{/literal}" {literal}{{/img}}{/literal} 
            data-loading-text="<i class='fa fa-circle-o-notch fa-spin'></i> {__("Loading")}" data-method="credit"> 
                <i class="fa fa-credit-card"></i> {__("Credit Card")}
            </button>
        {/if}
        {if $system['alipay_enabled']}
            <button class="js_payment-stripe btn btn-default btn-lg mr10" 
            data-handle="{literal}{{handle}}{/literal}" 
            {literal}{{#id}}{/literal} data-id="{literal}{{id}}{/literal}" {literal}{{/id}}{/literal} 
            {literal}{{#price}}{/literal} data-price="{literal}{{price}}{/literal}" {literal}{{/price}}{/literal} 
            {literal}{{#name}}{/literal} data-name="{literal}{{name}}{/literal}" {literal}{{/name}}{/literal} 
            {literal}{{#img}}{/literal} data-img="{literal}{{img}}{/literal}" {literal}{{/img}}{/literal} 
            data-loading-text="<i class='fa fa-circle-o-notch fa-spin'></i> {__("Loading")}" data-method="alipay">
                <i class="fa fa-credit-card"></i> {__("Alipay")}
            </button>
        {/if}
    </div>
</script>
<!-- Payments -->

{if !$user->_logged_in}
    
    <!-- Forget Password -->
    <script id="forget-password-confirm" type="text/template">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">×</button>
            <h5 class="modal-title">{__("Check Your Email")}</h5>
        </div>
        <form class="js_ajax-forms" data-url="core/forget_password_confirm.php">
            <div class="modal-body">
                <div class="mb20">
                    {__("Check your email")} - {__("We sent you an email with a six-digit confirmation code. Enter it below to continue to reset your password")}.
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input name="reset_key" type="text" class="form-control" placeholder="######" required autofocus>
                        </div>

                        <!-- error -->
                        <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                        <!-- error -->
                    </div>
                    <div class="col-md-6">
                        <label class="mb0">{__("We sent your code to")}</label> {literal}{{email}}{/literal}
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <input name="email" type="hidden" value="{literal}{{email}}{/literal}">
                <button type="submit" class="btn btn-primary">{__("Continue")}</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">{__("Cancel")}</button>
            </div>
        </form>
    </script>
    
    <script id="forget-password-reset" type="text/template">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h5 class="modal-title">{__("Change Your Password!")}</h5>
        </div>
        <form class="js_ajax-forms" data-url="core/forget_password_reset.php">
            <div class="modal-body">
                <div class="form-group">
                    <label for="password">{__("New Password")}</label>
                    <input name="password" id="password" type="password" class="form-control" required autofocus>
                </div>
                <div class="form-group">
                    <label for="confirm">{__("Confirm Password")}</label>
                    <input name="confirm" id="confirm" type="password" class="form-control" required>
                </div>
                <!-- error -->
                <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                <!-- error -->
            </div>
            <div class="modal-footer">
                <input name="email" type="hidden" value="{literal}{{email}}{/literal}">
                <input name="reset_key" type="hidden" value="{literal}{{reset_key}}{/literal}">
                <button type="submit" class="btn btn-primary">{__("Continue")}</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">{__("Cancel")}</button>
            </div>
        </form>
    </script>
    <!-- Forget Password -->

{else}
    
    <!-- Email Activation -->
    <script id="activation-email-reset" type="text/template">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h5 class="modal-title">{__("Change Email Address")}</h5>
        </div>
        <form class="js_ajax-forms" data-url="core/activation_email_reset.php">
            <div class="modal-body">
                <div class="form-group">
                    <label>{__("Current Email")}</label>
                    <p class="form-control-static">{$user->_data['user_email']}</p>
                    
                </div>
                <div class="form-group">
                    <label for="email">{__("New Email")}</label>
                    <input name="email" id="email" type="email" class="form-control" required autofocus>
                </div>
                <!-- error -->
                <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                <!-- error -->
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">{__("Continue")}</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">{__("Cancel")}</button>
            </div>
        </form>
    </script>
    <!-- Email Activation -->


    <!-- Phone Activation -->
    <script id="activation-phone" type="text/template">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h5 class="modal-title">{__("Enter the code from the SMS message")}</h5>
        </div>
        <form class="js_ajax-forms" data-url="core/activation_phone_confirm.php">
            <div class="modal-body">
                <div class="mb20">
                    {__("Let us know if this mobile number belongs to you. Enter the code in the SMS")}
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input name="token" type="text" class="form-control" placeholder="######" required autofocus>
                            {if $user->_data['user_phone']}
                                <span class="help-block">
                                    <span class="text-link" data-toggle="modal" data-url="core/activation_phone_resend.php">{__("Resend SMS")}</span>
                                </span>
                            {/if}
                        </div>

                        <!-- error -->
                        <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                        <!-- error -->
                    </div>
                    <div class="col-md-6">
                        {if $user->_data['user_phone']}
                            <label class="mb0">{__("We sent your code to")}</label> {$user->_data['user_phone']}
                        {/if}
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">{__("Continue")}</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">{__("Cancel")}</button>
            </div>
        </form>
    </script>

    <script id="activation-phone-reset" type="text/template">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h5 class="modal-title">{__("Change Phone Number")}</h5>
        </div>
        <form class="js_ajax-forms" data-url="core/activation_phone_reset.php">
            <div class="modal-body">
                {if $user->_data['user_phone']}
                    <div class="form-group">
                        <label>{__("Current Phone")}</label>
                        <p class="form-control-static">{$user->_data['user_phone']}</p>
                        
                    </div>
                {/if}
                <div class="form-group">
                    <label for="phone">{__("New Phone")}</label>
                    <input name="phone" id="phone" type="text" class="form-control" required autofocus>
                    <span class="help-block">
                        {__("For example")}: +12344567890
                    </span>
                </div>
                <!-- error -->
                <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                <!-- error -->
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">{__("Continue")}</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">{__("Cancel")}</button>
            </div>
        </form>
    </script>
    <!-- Phone Activation -->


    <!-- x-uploader -->
    {/strip}
    <script id="x-uploader" type="text/template">
        <form class="x-uploader" action="{literal}{{url}}{/literal}" method="post" enctype="multipart/form-data">
            {literal}{{#multiple}}{/literal}
            <input name="file[]" type="file" multiple="multiple">
            {literal}{{/multiple}}{/literal}
            {literal}{{^multiple}}{/literal}
            <input name="file" type="file">
            {literal}{{/multiple}}{/literal}
            <input type="hidden" name="secret" value="{literal}{{secret}}{/literal}">
        </form>
    </script>
    {strip}
    <!-- x-uploader -->


    <!-- Publisher -->
    <script id="publisher-attachments-item" type="text/template">
        <li class="item deletable" data-src="{literal}{{src}}{/literal}">
            <img alt="" src="{literal}{{image_path}}{/literal}">
            <button type="button" class="close js_publisher-attachment-remover" title='{__("Remove")}'><span>&times;</span></button>
        </li>
    </script>

    <script id="comment-attachments-item" type="text/template">
        <li class="item deletable" data-src="{literal}{{src}}{/literal}">
            <img alt="" src="{literal}{{image_path}}{/literal}">
            <button type="button" class="close js_comment-attachment-remover" title='{__("Remove")}'><span>&times;</span></button>
        </li>
    </script>

    <script id="chat-attachments-item" type="text/template">
        <li class="item deletable" data-src="{literal}{{src}}{/literal}">
            <img alt="" src="{literal}{{image_path}}{/literal}">
            <button type="button" class="close js_chat-attachment-remover" title='{__("Remove")}'><span>&times;</span></button>
        </li>
    </script>

    <script id="scraper-media" type="text/template">
        <div class="publisher-scraper-remover js_publisher-scraper-remover">
            <button type="button" class="close"><span>&times;</span></button>
        </div>
        <div class="post-media">
            <div class="embed-responsive embed-responsive-16by9">
                {literal}{{{html}}}{/literal}
            </div>
            <div class="post-media-meta">
                <a class="title mb5" href="{literal}{{url}}{/literal}" target="_blank">{literal}{{title}}{/literal}</a>
                <div class="text mb5">{literal}{{text}}{/literal}</div>
                <div class="source">{literal}{{provider}}{/literal}</div>
            </div>
        </div>
    </script>

    <script id="scraper-photo" type="text/template">
        <div class="publisher-scraper-remover js_publisher-scraper-remover">
            <button type="button" class="close"><span>&times;</span></button>
        </div>
        <div class="post-media">
            <div class="post-media-image">
                <div style="background-image:url('{literal}{{url}}{/literal}');"></div>
            </div>
            <div class="post-media-meta">
                <div class="source">{literal}{{provider}}{/literal}</div>
            </div>
        </div>
    </script>

    <script id="scraper-link" type="text/template">
        <div class="publisher-scraper-remover js_publisher-scraper-remover">
            <button type="button" class="close"><span>&times;</span></button>
        </div>
        <div class="post-media">
            {literal}{{#thumbnail}}{/literal}
            <div class="post-media-image">
                <div style="background-image:url('{literal}{{thumbnail}}{/literal}');"></div>
            </div>
            {literal}{{/thumbnail}}{/literal}
            <div class="post-media-meta">
                <a class="title mb5" href="{literal}{{url}}{/literal}" target="_blank">{literal}{{title}}{/literal}</a>
                <div class="text mb5">{literal}{{text}}{/literal}</div>
                <div class="source">{literal}{{host}}{/literal}</div>
            </div>
        </div>
    </script>

    <script id="poll-option" type="text/template">
        <div class="publisher-meta" data-meta="poll">
            <i class="fa fa-plus fa-fw"></i>
            <input type="text" placeholder='{__("Add an option")}...'>
        </div>
    </script>
    <!-- Publisher -->


    <!-- Edit (Posts|Comments) -->
    <script id="edit-post" type="text/template">
        <div class="post-edit">
            <div class="x-form comment-form">
                <textarea rows="2" class="js_autosize js_mention js_update-post">{literal}{{text}}{/literal}</textarea>
                <div class="x-form-tools">
                    <div class="x-form-tools-emoji js_emoji-menu-toggle">
                        <i class="fa fa-smile"></i>
                    </div>
                    {include file='_emoji-menu.tpl'}
                </div>
            </div>
            <small class="text-link js_unedit-post">{__("Cancel")}</small>
        </div>
    </script>
    
    <script id="edit-comment" type="text/template">
        <div class="comment-edit">
            <div class="x-form comment-form">
                <textarea rows="1" class="js_autosize js_mention js_update-comment">{literal}{{text}}{/literal}</textarea>
                <div class="x-form-tools">
                    <div class="x-form-tools-attach">
                        <i class="fa fa-camera js_x-uploader" data-handle="comment"></i>
                    </div>
                    <div class="x-form-tools-emoji js_emoji-menu-toggle">
                        <i class="fa fa-smile"></i>
                    </div>
                    {include file='_emoji-menu.tpl'}
                </div>
            </div>
            <div class="comment-attachments attachments clearfix x-hidden">
                <ul>
                    <li class="loading">
                        <div class="loader loader_small"></div>
                    </li>
                </ul>
            </div>
            <small class="text-link js_unedit-comment">{__("Cancel")}</small>
        </div>
    </script>
    <!-- Edit (Posts|Comments) -->


    <!-- Hidden (Posts|Authors) -->
    <script id="hidden-post" type="text/template">
        <div class="post flagged" data-id="{literal}{{id}}{/literal}">
            <div class="text-semibold mb5">{__("Post Hidden")}</div>
            {__("This post will no longer appear to you")} <span class="text-link js_unhide-post">{__("Undo")}</span>
        </div>
    </script>

    <script id="hidden-author" type="text/template">
        <div class="post flagged" data-id="{literal}{{id}}{/literal}">
            {__("You won't see posts from")} {literal}{{name}}{/literal} {__("in News Feed anymore")}. <span class="text-link js_unhide-author" data-author-id="{literal}{{uid}}{/literal}" data-author-name="{literal}{{name}}{/literal}">{__("Undo")}</span>
        </div>
    </script>
    <!-- Hidden (Posts|Authors) -->


    <!-- Chat -->
    {if $system['chat_enabled']}
        <!-- Desktop Chat Sidebar -->
        <div class="chat-sidebar js_chat-widget-master {if !$user->_data['user_chat_enabled']}disabled{/if}">
            <div class="chat-sidebar-header">
                <div class="pull-right flip">
                    <a class="js_chat-new mr5" href="{$system['system_url']}/messages/new">
                        <i class="fa fa-edit"></i>
                    </a>
                    <i class="fa fa-cog" data-toggle="dropdown"></i>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="{$system['system_url']}/settings/blocking">{__("Manage Blocking")}</a>
                        </li>
                        <li>
                            <a href="{$system['system_url']}/settings/privacy">{__("Privacy Settings")}</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            {if $user->_data['user_chat_enabled']}
                                <a href="#" class="js_chat-toggle" data-status="on">{__("Turn Off Chat")}</a>
                            {else}
                                <a href="#" class="js_chat-toggle" data-status="off">{__("Turn On Chat")}</a>
                            {/if}
                        </li>
                    </ul>
                </div>
                {__("Chat")} (<span class="js_chat-online-users">{$online_friends_count}</span>)
            </div>
            <div class="chat-sidebar-content">
                <div class="js_scroller" data-slimScroll-height="100%">
                    <ul>
                        {foreach $online_friends as $_user}
                            <li class="feeds-item">
                                <div class="data-container clickable small js_chat-start" data-uid="{$_user['user_id']}" data-name="{$_user['user_firstname']} {$_user['user_lastname']}" data-link="{$_user['user_name']}">
                                    <img class="data-avatar rounded" src="{$_user['user_picture']}" alt="{$_user['user_firstname']} {$_user['user_lastname']}">
                                    <div class="data-content">
                                        <div class="pull-right flip">
                                            <i class="fa fa-circle online"></i>
                                        </div>
                                        <div><strong>{$_user['user_firstname']} {$_user['user_lastname']}</strong></div>
                                    </div>
                                </div>
                            </li>
                        {/foreach}
                    </ul>
                </div>
            </div>
            <div class="chat-sidebar-footer">
                <input type="text" class="form-control js_chat-search" placeholder='{__("Search")}'>
            </div>
        </div>
        <!-- Desktop Chat Sidebar -->
        
        <!-- Mobile Chat Sidebar -->
        <div class="chat-widget js_chat-widget-master">
            {if $user->_data['user_chat_enabled']}
                <div class="chat-widget-head">
                    <div class="chat-head-title">
                        <i class="fa fa-circle"></i>
                        {__("Chat")} ({count($online_friends)})
                    </div>
                </div>
                <div class="chat-widget-content">
                    <div class="js_scroller">
                        <ul>
                            {foreach $online_friends as $_user}
                                <li class="feeds-item">
                                    <div class="data-container clickable small js_chat-start" data-uid="{$_user['user_id']}" data-name="{$_user['user_firstname']} {$_user['user_lastname']}" data-link="{$_user['user_name']}">
                                        <img class="data-avatar" src="{$_user['user_picture']}" alt="{$_user['user_firstname']} {$_user['user_lastname']}">
                                        <div class="data-content">
                                            <div><strong>{$_user['user_firstname']} {$_user['user_lastname']}</strong></div>
                                        </div>
                                    </div>
                                </li>
                            {/foreach}
                        </ul>
                    </div>
                    <div class="x-form chat-form">
                        <div class="chat-form-message">
                            <input type="text" class="form-control" placeholder='{__("Search")}'>
                        </div>
                    </div>
                </div>
            {else}
                <div class="chat-widget-content">
                    <div class="js_scroller"></div>
                </div>
                <div class="chat-widget-head">
                    <div class="chat-head-title">
                        <i class="fa fa-user-secret"></i>
                        {__("Offline")}
                    </div>
                </div>
            {/if}
        </div>
        <!-- Mobile Chat Sidebar -->
    {/if}

    <script id="chat-box-new" type="text/template">
        <div class="chat-widget chat-box opened fresh">
            <!-- head -->
            <div class="chat-widget-head">
                {__("New Message")}
                <!-- buttons-->
                <div class="pull-right flip">
                    <i class="fa fa-times-circle js_chat-box-close"></i>
                </div>
                <!-- buttons-->
            </div>
            <!-- head -->
            <!-- content -->
            <div class="chat-widget-content">
                <div class="chat-conversations js_scroller"></div>
                <div class="chat-to clearfix js_autocomplete-tags">
                    <div class="to">{__("To")}:</div>
                    <ul class="tags"></ul>
                    <div class="typeahead">
                        <input type="text" size="1" autofocus>
                    </div>
                </div>
                <div class="chat-attachments attachments clearfix x-hidden">
                    <ul>
                        <li class="loading">
                            <div class="loader loader_small"></div>
                        </li>
                    </ul>
                </div>
                <div class="x-form chat-form x-visible">
                    <div class="chat-form-message">
                        <textarea class="js_autosize js_post-message" dir="auto" rows="1" placeholder='{__("Write a message")}'></textarea>
                    </div>
                    <ul class="x-form-tools clearfix">
                        <li class="x-form-tools-attach">
                            <i class="fa fa-camera fa-fw js_x-uploader" data-handle="chat"></i>
                        </li>
                        <li class="x-form-tools-emoji js_emoji-menu-toggle">
                            <i class="fa fa-smile fa-fw"></i>
                        </li>
                        {include file='_emoji-menu.tpl'}
                    </ul>
                </div>
            </div>
            <!-- content -->
        </div>
    </script>

    <script id="chat-box" type="text/template">
        <div class="chat-widget chat-box opened" id="{literal}{{chat_key_value}}{/literal}" 
        {literal}{{#user_id}}{/literal}data-uid="{literal}{{user_id}}{/literal}"{literal}{{/user_id}}{/literal}
        {literal}{{#conversation_id}}{/literal}data-cid="{literal}{{conversation_id}}{/literal}"{literal}{{/conversation_id}}{/literal}>
            <!-- head -->
            <div class="chat-widget-head js_chat-color-me">
                {literal}{{^multiple}}{/literal}
                <i class="fa fa-user-secret mr5 js_chat-box-status"></i>
                <a href="{$system['system_url']}/{literal}{{link}}{/literal}" title="{literal}{{name_list}}{/literal}">{literal}{{name}}{/literal}</a>
                {literal}{{/multiple}}{/literal}
                {literal}{{#multiple}}{/literal}
                <a href="{$system['system_url']}/messages/{literal}{{link}}{/literal}" title="{literal}{{name_list}}{/literal}">{literal}{{name}}{/literal}</a>
                {literal}{{/multiple}}{/literal}
                <!-- label -->
                <div class="chat-head-label"><span class="label label-danger js_chat-box-label"></span></div>
                <!-- label -->
                <!-- buttons-->
                <div class="pull-right flip">
                    <i class="fa fa-times-circle js_chat-box-close"></i>
                </div>
                <!-- buttons-->
            </div>
            <!-- head -->
            <!-- content -->
            <div class="chat-widget-content">
                <div class="chat-conversations js_scroller"><ul></ul></div>
                <div class="chat-attachments attachments clearfix x-hidden">
                    <ul>
                        <li class="loading">
                            <div class="loader loader_small"></div>
                        </li>
                    </ul>
                </div>
                <div class="x-form chat-form">
                    <div class="chat-form-message">
                        <textarea class="js_autosize js_post-message" dir="auto" rows="1" placeholder='{__("Write a message")}'></textarea>
                    </div>
                    <ul class="x-form-tools clearfix">
                        <li class="x-form-tools-attach">
                            <i class="fa fa-camera fa-fw js_x-uploader" data-handle="chat"></i>
                        </li>
                        <li class="x-form-tools-emoji js_emoji-menu-toggle">
                            <i class="fa fa-smile fa-fw"></i>
                        </li>
                        {include file='_emoji-menu.tpl'}
                        <li class="x-form-tools-colors js_chat-colors-menu-toggle js_chat-color-me {literal}{{#user_id}}{/literal}x-hidden{literal}{{/user_id}}{/literal}">
                            <i class="fa fa-circle fa-fw"></i>
                        </li>
                        {include file='_chat-colors-menu.tpl'}
                    </ul>
                </div>
            </div>
            <!-- content -->
        </div>
    </script>

    <script id="chat-message" type="text/template">
        <li>
            <div class="conversation clearfix right" id="{literal}{{id}}{/literal}">
                <div class="conversation-body">
                    <div class="text js_chat-color-me" {literal}{{#color}}{/literal}style="background-color: {literal}{{color}}{/literal}"{literal}{{/color}}{/literal}>
                        {literal}{{{message}}}{/literal}
                        {literal}{{#image}}{/literal}
                            <span class="text-link js_lightbox-nodata {literal}{{#message}}{/literal}mt5{literal}{{/message}}{/literal}" data-image="{$system['system_uploads']}/{literal}{{image}}{/literal}">
                                <img alt="" class="img-responsive" src="{$system['system_uploads']}/{literal}{{image}}{/literal}">
                            </span>
                        {literal}{{/image}}{/literal}
                    </div>
                    <div class="time js_moment" data-time="{literal}{{time}}{/literal}">
                        {literal}{{time}}{/literal}
                    </div>
                </div>
            </div>
        </li>
    </script>

    <script id="chat-voice-calling" type="text/template">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h5 class="modal-title"><i class="fa fa-phone-volume mr5"></i>{__("Calling")}</h5>
        </div>
        <form class="js_ajax-forms" data-url="ads/wallet.php?do=wallet_transfer">
            <div class="modal-body">
                {__("Please wait for answer")}
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">{__("Cancel")}</button>
            </div>
        </form>
    </script>
    <!-- Chat -->

    <!-- DayTime Messages -->
    <script id="message-morning" type="text/template">
        <div class="panel daytime_message">
            <button type="button" class="close pull-right flip js_daytime-remover"><span>&times;</span></button>
            <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/good_morning.png">
            <strong>{__("Good Morning")}, {$user->_data['user_firstname']}</strong>
        </div>
    </script>

    <script id="message-afternoon" type="text/template">
        <div class="panel daytime_message">
            <button type="button" class="close pull-right flip js_daytime-remover"><span>&times;</span></button>
            <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/good_afternoon.png">
            <strong>{__("Good Afternoon")}, {$user->_data['user_firstname']}</strong>
        </div>
    </script>
    
    <script id="message-evening" type="text/template">
        <div class="panel daytime_message">
            <button type="button" class="close pull-right flip js_daytime-remover"><span>&times;</span></button>
            <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/good_night.png">
            <strong>{__("Good Evening")}, {$user->_data['user_firstname']}</strong>
        </div>
    </script>
    <!-- DayTime Messages -->


    <!-- Pages & Groups & Events -->
    <script id="create-page" type="text/template">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h5 class="modal-title">{__("Create New Page")}</h5>
        </div>
        <form class="js_ajax-forms" data-url="pages_groups_events/create.php?type=page&do=create">
            <div class="modal-body">
                <div class="form-group">
                    <label for="title">{__("Name Your Page")}</label>
                    <input type="text" class="form-control" name="title" id="title">
                </div>
                <div class="form-group">
                    <label for="username">{__("Web Address")}</label>
                    <div class="input-group">
                        <span class="input-group-addon">{$system['system_url']}/pages/</span>
                        <input type="text" class="form-control" name="username" id="username">
                    </div>
                </div>
                <div class="form-group">
                    <label for="category">{__("Category")}</label>
                    <select class="form-control" name="category" id="category">
                        <option>{__("Select Category")}</option>
                        {foreach $categories as $category}
                        <option value="{$category['category_id']}">{__($category['category_name'])}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="form-group">
                    <label for="description">{__("About")}</label>
                    <textarea class="form-control" name="description" name="description"></textarea>
                </div>
                <!-- custom fields -->
                {if $custom_fields}
                {include file='__custom_fields.tpl' _custom_fields=$custom_fields _registration=true}
                {/if}
                <!-- custom fields -->
                <!-- error -->
                <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                <!-- error -->
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">{__("Create")}</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">{__("Cancel")}</button>
            </div>
        </form>
    </script>

    <script id="create-group" type="text/template">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h5 class="modal-title">{__("Create New Group")}</h5>
        </div>
        <form class="js_ajax-forms" data-url="pages_groups_events/create.php?type=group&do=create">
            <div class="modal-body">
                <div class="form-group">
                    <label for="title">{__("Name Your Group")}</label>
                    <input type="text" class="form-control" name="title" id="title">
                </div>
                <div class="form-group">
                    <label for="username">{__("Web Address")}</label>
                    <div class="input-group">
                        <span class="input-group-addon">{$system['system_url']}/groups/</span>
                        <input type="text" class="form-control" name="username" id="username">
                    </div>
                </div>
                <div class="form-group">
                    <label for="privacy">{__("Select Privacy")}</label>
                    <select class="form-control selectpicker" name="privacy">
                        <option value="public" data-content="<div class='option'><div class='icon'><i class='fa fa-globe fa-2x'></i></div><div class='text'><b>{__("Public Group")}</b><br>{__("Anyone can see the group, its members and their posts")}.
                        </div></div>">{__("Public Group")}</option>
                        <option value="closed" data-content="<div class='option'><div class='icon'><i class='fa fa-unlock-alt fa-2x'></i></div><div class='text'><b>{__("Closed Group")}</b><br>{__("Only members can see posts")}.
                        </div></div>">{__("Closed Group")}</option>
                        <option value="secret" data-content="<div class='option'><div class='icon'><i class='fa fa-lock fa-2x'></i></div><div class='text'><b>{__("Secret Group")}</b><br>{__("Only members can find the group and see posts")}.
                        </div></div>">{__("Secret Group")}</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="category">{__("Category")}</label>
                    <select class="form-control" name="category" id="category">
                        <option>{__("Select Category")}</option>
                        {foreach $categories as $category}
                        <option value="{$category['category_id']}">{__($category['category_name'])}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="form-group">
                    <label for="description">{__("About")}</label>
                    <textarea class="form-control" name="description"></textarea>
                </div>
                <!-- custom fields -->
                {if $custom_fields}
                {include file='__custom_fields.tpl' _custom_fields=$custom_fields _registration=true}
                {/if}
                <!-- custom fields -->
                <!-- error -->
                <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                <!-- error -->
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">{__("Create")}</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">{__("Cancel")}</button>
            </div>
        </form>
    </script>

    <script id="create-event" type="text/template">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h5 class="modal-title">{__("Create New Event")}</h5>
        </div>
        <form class="js_ajax-forms" data-url="pages_groups_events/create.php?type=event&do=create">
            <div class="modal-body">
                <div class="form-group">
                    <label for="title">{__("Name Your Event")}</label>
                    <input type="text" class="form-control" name="title" id="title">
                </div>
                <div class="form-group">
                    <label for="location">{__("Location")}</label>
                    <input type="text" class="form-control js_geocomplete" name="location" id="location">
                </div>
                <div class="form-group">
                    <label>{__("Start Date")}</label>
                    <div class='input-group date js_datetimepicker'>
                        <input type='text' class="form-control" name="start_date" />
                        <span class="input-group-addon">
                            <span class="fa fa-calendar"></span>
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label>{__("End Date")}</label>
                    <div class='input-group date js_datetimepicker'>
                        <input type='text' class="form-control" name="end_date" />
                        <span class="input-group-addon">
                            <span class="fa fa-calendar"></span>
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="privacy">{__("Select Privacy")}</label>
                    <select class="form-control selectpicker" name="privacy">
                        <option value="public" data-content="<div class='option'><div class='icon'><i class='fa fa-globe fa-2x'></i></div><div class='text'><b>{__("Public Event")}</b><br>{__("Anyone can see the event, its users and posts")}.
                        </div></div>">{__("Public Event")}</option>
                        <option value="closed" data-content="<div class='option'><div class='icon'><i class='fa fa-unlock-alt fa-2x'></i></div><div class='text'><b>{__("Closed Event")}</b><br>{__("Only event users can see posts")}.
                        </div></div>">{__("Closed Event")}</option>
                        <option value="secret" data-content="<div class='option'><div class='icon'><i class='fa fa-lock fa-2x'></i></div><div class='text'><b>{__("Secret Event")}</b><br>{__("Only invited users and event users can find the event")}.
                        </div></div>">{__("Secret Event")}</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="category">{__("Category")}</label>
                    <select class="form-control" name="category" id="category">
                        <option>{__("Select Category")}</option>
                        {foreach $categories as $category}
                        <option value="{$category['category_id']}">{__($category['category_name'])}</option>
                        {/foreach}
                    </select>
                </div>
                <div class="form-group">
                    <label for="description">{__("About")}</label>
                    <textarea class="form-control" name="description"></textarea>
                </div>
                <!-- custom fields -->
                {if $custom_fields}
                {include file='__custom_fields.tpl' _custom_fields=$custom_fields _registration=true}
                {/if}
                <!-- custom fields -->
                <!-- error -->
                <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                <!-- error -->
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">{__("Create")}</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">{__("Cancel")}</button>
            </div>
        </form>
    </script>
    <!-- Pages & Groups & Events -->


    <!-- Noty Notification -->
    <script id="noty-notification" type="text/template">
        <div class="data-container small">
            <img class="data-avatar" src="{literal}{{image}}{/literal}">
            <div class="data-content">{literal}{{message}}{/literal}</div>
        </div>
    </script>
    <!-- Noty Notification -->


    <!-- Wallet -->
    <script id="wallet-transfer" type="text/template">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h5 class="modal-title"><i class="fa fa-gift mr5"></i>{__("Send Money")}</h5>
        </div>
        <form class="js_ajax-forms" data-url="ads/wallet.php?do=wallet_transfer">
            <div class="modal-body">
                <div class="form-group">
                    <label>{__("Amount")}</label>
                    <div class="input-money">
                        <span>{$system['system_currency_symbol']}</span>
                        <input type="text" class="form-control" placeholder="0.00" min="1.00" max="1000" name="amount">
                    </div>
                </div>
                <div class="form-group">
                    <label for="send_to">{__("Send To")}</label>
                    <div class="relative js_autocomplete">
                        <input type="text" class="form-control" placeholder="{__("Search for user name or email")}" name="send_to" id="send_to" autocomplete="off">
                        <input type="hidden" name="send_to_id">
                    </div>
                </div>
                <!-- error -->
                <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                <!-- error -->
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">{__("Send")}</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">{__("Cancel")}</button>
            </div>
        </form>
    </script>

    <script id="wallet-replenish" type="text/template">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h5 class="modal-title"><i class="fab fa-paypal mr5"></i>{__("Replenish Credit")}</h5>
        </div>
        <form class="js_ajax-forms" data-url="ads/wallet.php?do=wallet_replenish">
            <div class="modal-body">
                <div class="form-group">
                    <label for="amount">{__("Amount")}</label>
                    <div class="input-money">
                        <span>{$system['system_currency_symbol']}</span>
                        <input type="text" class="form-control" placeholder="0.00" min="1.00" max="1000" name="amount">
                    </div>
                </div>
                <!-- error -->
                <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                <!-- error -->
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">{__("Continue")}</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">{__("Cancel")}</button>
            </div>
        </form>
    </script>
    
    <script id="wallet-withdraw-affiliate" type="text/template">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h5 class="modal-title"><i class="fa fa-exchange-alt mr5"></i>{__("Withdraw Affiliates Credit")}</h5>
        </div>
        <form class="js_ajax-forms" data-url="ads/wallet.php?do=wallet_withdraw_affiliate">
            <div class="modal-body">
                <div class="form-group">
                    <label for="amount">{__("Your Affiliates Credit")}</label>
                    <div class="text-lg">
                        {$system['system_currency_symbol']}{$user->_data['user_affiliate_balance']|number_format:2}
                    </div>
                </div>
                <div class="form-group">
                    <label for="amount">{__("Amount")}</label>
                    <div class="input-money">
                        <span>{$system['system_currency_symbol']}</span>
                        <input type="text" class="form-control" placeholder="0.00" min="1.00" max="1000" name="amount">
                    </div>
                </div>
                <!-- error -->
                <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                <!-- error -->
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">{__("Continue")}</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">{__("Cancel")}</button>
            </div>
        </form>
    </script>
    <!-- Wallet -->


    <!-- Crop Profile Picture -->
    <script id="crop-profile-picture" type="text/template">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h5 class="modal-title"><i class="fa fa-crop-alt mr5"></i>{__("Crop Picture")}</h5>
        </div>
        <div class="modal-body text-center">
            <img id="cropped-profile-picture" src="{literal}{{image}}{/literal}" style="max-width: 100%;">
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-primary js_crop-picture" data-handle="{literal}{{handle}}{/literal}" data-id="{literal}{{id}}{/literal}">{__("Save")}</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">{__("Cancel")}</button>
        </div>
    </script>
    <!-- Crop Profile Picture -->

{/if}

{/strip}