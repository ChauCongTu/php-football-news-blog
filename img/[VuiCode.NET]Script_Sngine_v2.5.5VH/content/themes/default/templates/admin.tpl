{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page content -->
<div class="container mt20 offcanvas">
    <div class="row">

        <!-- left panel -->
        <div class="col-sm-3 offcanvas-sidebar">
            <div class="panel panel-default">
                <div class="panel-body with-nav">
                    <ul class="side-nav metismenu js_metisMenu">

                        <!-- Dashboard -->
                        <li {if $view == "dashboard"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp">
                                <i class="fa fa-tachometer-alt fa-fw fa-lg pr30"></i>{__("Dashboard")}
                            </a>
                        </li>
                        <!-- Dashboard -->

                        <!-- Settings -->
                        <li {if $view == "settings"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/settings">
                                <i class="fa fa-cog fa-fw fa-lg pr30"></i>{__("Settings")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "settings" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/settings">
                                        <i class="fa fa-cogs fa-fw pr20"></i>{__("System Settings")}
                                    </a>
                                </li>
                                <li {if $view == "settings" && $sub_view == "posts"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/settings/posts">
                                        <i class="fa fa-comment-alt fa-fw pr20"></i>{__("Posts Settings")}
                                    </a>
                                </li>
                                <li {if $view == "settings" && $sub_view == "registration"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/settings/registration">
                                        <i class="fa fa-sign-in-alt fa-fw pr20"></i>{__("Registration Settings")}
                                    </a>
                                </li>
                                <li {if $view == "settings" && $sub_view == "emails"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/settings/emails">
                                        <i class="fa fa-envelope-open fa-fw pr20"></i>{__("Emails Settings")}
                                    </a>
                                </li>
                                <li {if $view == "settings" && $sub_view == "sms"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/settings/sms">
                                        <i class="fa fa-mobile fa-fw pr20"></i>{__("SMS Settings")}
                                    </a>
                                </li>
                                <li {if $view == "settings" && $sub_view == "chat"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/settings/chat">
                                        <i class="fa fa-comments fa-fw pr20"></i>{__("Chat Settings")}
                                    </a>
                                </li>
                                <li {if $view == "settings" && $sub_view == "uploads"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/settings/uploads">
                                        <i class="fa fa-upload fa-fw pr20"></i>{__("Uploads Settings")}
                                    </a>
                                </li>
                                <li {if $view == "settings" && $sub_view == "security"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/settings/security">
                                        <i class="fa fa-shield-alt fa-fw pr20"></i>{__("Security Settings")}
                                    </a>
                                </li>
                                <li {if $view == "settings" && $sub_view == "payments"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/settings/payments">
                                        <i class="fa fa-money-bill-alt fa-fw pr20"></i>{__("Payments Settings")}
                                    </a>
                                </li>
                                <li {if $view == "settings" && $sub_view == "limits"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/settings/limits">
                                        <i class="fa fa-tachometer-alt fa-fw pr20"></i>{__("Limits Settings")}
                                    </a>
                                </li>
                                <li {if $view == "settings" && $sub_view == "analytics"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/settings/analytics">
                                        <i class="fa fa-chart-pie fa-fw pr20"></i>{__("Analytics Settings")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Settings -->

                        <!-- Themes -->
                        <li {if $view == "themes"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/themes" class="no-border">
                                <i class="fa fa-desktop fa-fw fa-lg pr30"></i>{__("Themes")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "themes" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/themes">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Themes")}
                                    </a>
                                </li>
                                <li {if $view == "themes" && $sub_view == "add"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/themes/add">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("Add New Theme")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Themes -->

                        <!-- Design -->
                        <li {if $view == "design"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/design">
                                <i class="fa fa-paint-brush fa-fw fa-lg pr30"></i>{__("Design")}
                            </a>
                        </li>
                        <!-- Design -->

                        <!-- Languages -->
                        <li {if $view == "languages"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/languages">
                                <i class="fa fa-language fa-fw fa-lg pr30"></i>{__("Languages")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "languages" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/languages">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Languages")}
                                    </a>
                                </li>
                                <li {if $view == "languages" && $sub_view == "add"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/languages/add">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("Add New Language")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Languages -->

                        <!-- Users -->
                        <li {if $view == "users"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/users" class="no-border">
                                <i class="fa fa-user fa-fw fa-lg pr30"></i>{__("Users")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "users" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/users">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Users")}
                                    </a>
                                </li>
                                <li {if $view == "users" && $sub_view == "admins"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/users/admins">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Admins")}
                                    </a>
                                </li>
                                <li {if $view == "users" && $sub_view == "moderators"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/users/moderators">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Moderators")}
                                    </a>
                                </li>
                                <li {if $view == "users" && $sub_view == "online"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/users/online">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Online")}
                                    </a>
                                </li>
                                <li {if $view == "users" && $sub_view == "banned"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/users/banned">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Banned")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Users -->

                        <!-- Pages -->
                        <li {if $view == "pages"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/pages" class="no-border">
                                <i class="fa fa-flag fa-fw fa-lg pr30"></i>{__("Pages")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "pages" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/pages">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Pages")}
                                    </a>
                                </li>
                                <li {if $view == "pages" && $sub_view == "categories"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/pages/categories">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Categories")}
                                    </a>
                                </li>
                                <li {if $view == "pages" && $sub_view == "add_category"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/pages/add_category">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("Add New Category")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Pages -->

                        <!-- Groups -->
                        <li {if $view == "groups"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/groups" class="no-border">
                                <i class="fa fa-users fa-fw fa-lg pr30"></i>{__("Groups")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "groups" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/groups">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Groups")}
                                    </a>
                                </li>
                                <li {if $view == "groups" && $sub_view == "categories"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/groups/categories">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Categories")}
                                    </a>
                                </li>
                                <li {if $view == "groups" && $sub_view == "add_category"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/groups/add_category">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("Add New Category")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Groups -->

                        <!-- Events -->
                        <li {if $view == "events"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/events" class="no-border">
                                <i class="fa fa-calendar fa-fw fa-lg pr30"></i>{__("Events")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "events" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/events">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Events")}
                                    </a>
                                </li>
                                <li {if $view == "events" && $sub_view == "categories"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/events/categories">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Categories")}
                                    </a>
                                </li>
                                <li {if $view == "events" && $sub_view == "add_category"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/events/add_category">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("Add New Category")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Events -->

                        <!-- Games -->
                        <li {if $view == "games"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/games">
                                <i class="fa fa-gamepad fa-fw fa-lg pr30"></i>{__("Games")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "games" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/games">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Games")}
                                    </a>
                                </li>
                                <li {if $view == "games" && $sub_view == "add"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/games/add">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("Add New Game")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Games -->

                        <!-- Forums -->
                        <li {if $view == "forums"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/forums/settings">
                                <i class="fa fa-comments fa-fw fa-lg pr30"></i>{__("Forums")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "forums" && $sub_view == "settings"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/forums/settings">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("Forums Settings")}
                                    </a>
                                </li>
                                <li {if $view == "forums" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/forums">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Forums")}
                                    </a>
                                </li>
                                <li {if $view == "forums" && $sub_view == "add_forum"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/forums/add_forum">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("Add New Forum")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Forums -->

                        <!-- Blogs -->
                        <li {if $view == "blogs"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/blogs/categories">
                                <i class="fab fa-blogger-b fa-fw fa-lg pr30"></i>{__("Blogs")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "blogs" && $sub_view == "categories"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/blogs/categories">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Categories")}
                                    </a>
                                </li>
                                <li {if $view == "blogs" && $sub_view == "add_category"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/blogs/add_category">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("Add New Category")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Blogs -->

                        <!-- Market -->
                        <li {if $view == "market"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/market/categories">
                                <i class="fa fa-shopping-bag fa-fw fa-lg pr30"></i>{__("Market")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "market" && $sub_view == "categories"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/market/categories">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Categories")}
                                    </a>
                                </li>
                                <li {if $view == "market" && $sub_view == "add_category"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/market/add_category">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("Add New Category")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Market -->

                        <!-- Packages -->
                        <li {if $view == "packages"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/packages" class="no-border">
                                <i class="fa fa-cubes fa-fw fa-lg pr30"></i>{__("Pro Packages")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "packages" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/packages">
                                        <i class="fa fa-cubes fa-fw pr20"></i>{__("List Packages")}
                                    </a>
                                </li>
                                <li {if $view == "packages" && $sub_view == "add"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/packages/add">
                                        <i class="fa fa-cube fa-fw pr20"></i>{__("Add New Package")}
                                    </a>
                                </li>
                                <li {if $view == "packages" && $sub_view == "subscribers"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/packages/subscribers">
                                        <i class="fa fa-users fa-fw pr20"></i>{__("List Subscribers")}
                                    </a>
                                </li>
                                <li {if $view == "packages" && $sub_view == "earnings"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/packages/earnings">
                                        <i class="fa fa-dollar-sign fa-fw pr20"></i>{__("Earnings")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Packages -->

                        <!-- Affiliates -->
                        <li {if $view == "affiliates"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/affiliates" class="no-border">
                                <i class="fa fa-exchange-alt fa-fw fa-lg pr30"></i>{__("Affiliates")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "affiliates" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/affiliates">
                                        <i class="fa fa-wrench fa-fw pr20"></i>{__("Affiliates Settings")}
                                    </a>
                                </li>
                                <li {if $view == "affiliates" && $sub_view == "payments"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/affiliates/payments">
                                        <i class="fab fa-paypal fa-fw pr20"></i>{__("Payment Requests")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Affiliates -->

                        <!-- Ads -->
                        <li {if $view == "ads"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/ads">
                                <i class="fa fa-dollar-sign fa-fw fa-lg pr30"></i>{__("Ads")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "ads" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/ads">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("Ads Settings")}
                                    </a>
                                </li>
                                <li {if $view == "ads" && $sub_view == "system_ads"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/ads/system_ads">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List System Ads")}
                                    </a>
                                </li>
                                <li {if $view == "ads" && $sub_view == "users_ads"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/ads/users_ads">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Users Ads")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Ads -->

                        <!-- Reports -->
                        <li {if $view == "reports"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/reports" class="no-border">
                                <i class="fa fa-exclamation-triangle fa-fw fa-lg pr30"></i>{__("Reports")}
                            </a>
                        </li>
                        <!-- Reports -->

                        <!-- Banned IPs -->
                        <li {if $view == "banned_ips"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/banned_ips" class="no-border">
                                <i class="fa fa-minus-circle fa-fw fa-lg pr30"></i>{__("Banned IPs")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "banned_ips" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/banned_ips">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List IPs")}
                                    </a>
                                </li>
                                <li {if $view == "banned_ips" && $sub_view == "add"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/banned_ips/add">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("Add New IP")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Banned IPs -->

                        <!-- Verification -->
                        <li {if $view == "verification"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/verification">
                                <i class="fa fa-check-circle fa-fw fa-lg pr30"></i>{__("Verification")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "verification" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/verification">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Requests")}
                                    </a>
                                </li>
                                <li {if $view == "verification" && $sub_view == "users"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/verification/users">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Verified Users")}
                                    </a>
                                </li>
                                <li {if $view == "verification" && $sub_view == "pages"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/verification/pages">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Verified Pages")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Verification -->

                        <!-- Custom Fields -->
                        <li {if $view == "custom_fields"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/custom_fields" class="no-border">
                                <i class="fa fa-bars fa-fw fa-lg pr30"></i>{__("Custom Fields")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "custom_fields" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/custom_fields">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Fields")}
                                    </a>
                                </li>
                                <li {if $view == "custom_fields" && $sub_view == "add"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/custom_fields/add">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("Add New Field")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Custom Fields -->
                        
                        <!-- Static Pages -->
                        <li {if $view == "static"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/static">
                                <i class="fa fa-file fa-fw fa-lg pr30"></i>{__("Static Pages")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "static" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/static">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Pages")}
                                    </a>
                                </li>
                                <li {if $view == "static" && $sub_view == "add"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/static/add">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("Add New page")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Static Pages -->

                        <!-- Emojis -->
                        <li {if $view == "emojis"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/emojis" class="no-border">
                                <i class="fa fa-smile fa-fw fa-lg pr30"></i>{__("Emojis")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "emojis" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/emojis">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Emojis")}
                                    </a>
                                </li>
                                <li {if $view == "emojis" && $sub_view == "add"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/emojis/add">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("Add New Emoji")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Emojis -->

                        <!-- Stickers -->
                        <li {if $view == "stickers"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/stickers">
                                <i class="fa fa-hand-peace fa-fw fa-lg pr30"></i>{__("Stickers")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "stickers" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/stickers">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Stickers")}
                                    </a>
                                </li>
                                <li {if $view == "stickers" && $sub_view == "add"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/stickers/add">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("Add New Sticker")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Stickers -->

                        <!-- Announcements -->
                        <li {if $view == "announcements"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/announcements" class="no-border">
                                <i class="fa fa-bullhorn fa-fw fa-lg pr30"></i>{__("Announcements")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "announcements" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/announcements">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Announcements")}
                                    </a>
                                </li>
                                <li {if $view == "announcements" && $sub_view == "add"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/announcements/add">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("Add New Announcement")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Announcements -->

                        <!-- Notifications -->
                        <li {if $view == "notifications"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/notifications" class="no-border">
                                <i class="fa fa-bell fa-fw fa-lg pr30"></i>{__("Mass Notifications")}
                            </a>
                        </li>
                        <!-- Notifications -->

                        <!-- Newsletter -->
                        <li {if $view == "newsletter"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/newsletter">
                                <i class="fa fa-paper-plane fa-fw fa-lg pr30"></i>{__("Newsletter")}
                            </a>
                        </li>
                        <!-- Newsletter -->
                        
                        <!-- Widgets -->
                        <li {if $view == "widgets"}class="active"{/if}>
                            <a href="{$system['system_url']}/admincp/widgets">
                                <i class="fa fa-puzzle-piece fa-fw fa-lg pr30"></i>{__("Widgets")}
                                <span class="fa arrow"></span>
                            </a>
                            <ul>
                                <li {if $view == "widgets" && $sub_view == ""}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/widgets">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("List Widgets")}
                                    </a>
                                </li>
                                <li {if $view == "widgets" && $sub_view == "add"}class="active"{/if}>
                                    <a href="{$system['system_url']}/admincp/widgets/add">
                                        <i class="fa fa-caret-right fa-fw pr10"></i>{__("Add New Widget")}
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- Widgets -->

                        <!-- Build -->
                        <li>
                            <div class="static">
                                <i class="fa fa-copyright fa-fw fa-lg pr30"></i>{__("Build")} v{$system['system_version']}
                            </div>
                        </li>
                        <!-- Build -->
                        
                    </ul>
                </div>
            </div>
        </div>
        <!-- left panel -->
        
        <!-- right panel -->
        <div class="col-sm-9 offcanvas-mainbar">
            {include file="admin.$view.tpl"}
        </div>
        <!-- right panel -->
        
    </div>
</div>
<!-- page content -->

{include file='_footer.tpl'}