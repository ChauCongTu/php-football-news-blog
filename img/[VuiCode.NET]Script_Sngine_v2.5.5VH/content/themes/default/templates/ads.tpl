{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page content -->
<div class="container mt20">

    <!-- navbar -->
    <div class="navbar forum-navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#forum-navbar" aria-expanded="false">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <div class="collapse navbar-collapse" id="forum-navbar">
                <ul class="nav navbar-nav">
                    <li {if $view == ""}class="active"{/if}>
                        <a href="{$system['system_url']}/ads"><i class="fa fa-chart-area"></i> {__("Ads Manager")}</a>
                    </li>
                    <li {if $view == "wallet"}class="active"{/if}>
                        <a href="{$system['system_url']}/wallet"><i class="fa fa-wallet"></i> {__("Wallet")}</a>
                    </li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li {if $view == "new"}class="active"{/if}>
                        <a href="{$system['system_url']}/ads/new"><i class="fa fa-plus-circle"></i> {__("New Campaign")}</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- navbar -->

    {if $view == ""}
        
        <!-- ads manager -->
        <div class="panel panel-default mt20">
            <div class="panel-heading with-icon">
                <!-- panel title -->
                <i class="fa fa-chart-area pr5 panel-icon"></i>
                <strong>{__("Ads Manager")}</strong>
                <!-- panel title -->
            </div>
            <div class="panel-body">
                {if $campaigns}
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>{__("Title")}</th>
                                    <th>{__("Start - End Date")}</th>
                                    <th>{__("Budget")}</th>
                                    <th>{__("Spend")}</th>
                                    <th>{__("Bidding")}</th>
                                    <th>{__("Clicks/Views")}</th>
                                    <th>{__("Status")}</th>
                                    <th>{__("Created")}</th>
                                    <th>{__("Actions")}</th>
                                </tr>
                            </thead>
                            <tbody>
                                {foreach $campaigns as $campaign}
                                    <tr>
                                        <td>{$campaign['campaign_title']}</td>
                                        <td>
                                            {$campaign['campaign_start_date']|date_format:"%e %B %Y"} - {$campaign['campaign_end_date']|date_format:"%e %B %Y"}
                                        </td>
                                        <td>{$system['system_currency_symbol']}{$campaign['campaign_budget']|number_format:2}</td>
                                        <td>{$system['system_currency_symbol']}{$campaign['campaign_spend']|number_format:2}</td>
                                        <td>
                                            <span class="label label-default">
                                                {if $campaign['campaign_bidding'] == "click"}
                                                    <i class="fa fa-hand-pointer"></i> {__("Click")}
                                                {else}
                                                    <i class="fa fa-eye"></i> {__("View")}
                                                {/if}
                                            </span>
                                        </td>
                                        <td>
                                            {if $campaign['campaign_bidding'] == "click"}
                                                {$campaign['campaign_clicks']} {__("Clicks")}
                                            {else}
                                                {$campaign['campaign_views']} {__("Views")}
                                            {/if}
                                        </td>
                                        <td>
                                            {if $campaign['campaign_is_active']}
                                                <span class="label label-success">{__("Active")}</span>
                                            {else}
                                                <span class="label label-danger">{__("Not Active")}</span>
                                            {/if}
                                        </td>
                                        <td>
                                            <span class="js_moment" data-time="{$campaign['campaign_created_date']}">{$campaign['campaign_created_date']}</span>
                                        </td>
                                        <td>
                                            <button data-toggle="tooltip" data-placement="top" title='{__("Delete")}' class="btn btn-xs btn-danger js_ads-delete-campaign" data-id="{$campaign['campaign_id']}">
                                                <i class="fas fa-trash"></i>
                                            </button>
                                            <a data-toggle="tooltip" data-placement="top" title='{__("Edit")}' href="{$system['system_url']}/ads/edit/{$campaign['campaign_id']}" class="btn btn-xs btn-primary">
                                                <i class="fa fa-pencil-alt"></i>
                                            </a>
                                            {if $campaign['campaign_is_active']}
                                                <button data-toggle="tooltip" data-placement="top" title='{__("Stop")}' class="btn btn-xs btn-warning js_ads-stop-campaign" data-id="{$campaign['campaign_id']}">
                                                    <i class="fas fa-stop-circle"></i>
                                                </button>
                                            {else}
                                                <button data-toggle="tooltip" data-placement="top" title='{__("Resume")}' class="btn btn-xs btn-success js_ads-resume-campaign" data-id="{$campaign['campaign_id']}">
                                                    <i class="fas fa-play-circle"></i>
                                                </button>
                                            {/if}
                                        </td>
                                    </tr>
                                {/foreach}
                            </tbody>
                        </table>
                    </div>
                {else}
                    <p class="text-center text-muted">
                        {__("No campaigns to show")}
                    </p>
                {/if}
            </div>
        </div>
        <!-- ads manager -->

    {elseif $view == "new"}

        <!-- new campaign -->
        <div class="panel panel-default mt20">
            <div class="panel-heading with-icon">
                <!-- panel title -->
                <i class="fa fa-plus-circle pr5 panel-icon"></i>
                <strong>{__("New Campaign")}</strong>
                <!-- panel title -->
            </div>
            <form class="js_ajax-forms" data-url="ads/campaign.php?do=create">
                <div class="panel-body">
                    {if $user->_data['user_wallet_balance'] == 0}
                        <div class="bs-callout bs-callout-warning mt0">
                            {__("Your current wallet credit is")}: <strong>{$system['system_currency_symbol']}{$user->_data['user_wallet_balance']|number_format:2}</strong> {__("You need to")} <a href="{$system['system_url']}/wallet">{__("Replenish your wallet credit")}</a>
                        </div>
                    {/if}

                    <div class="row">
                        <!-- campaign details & target audience -->
                        <div class="col-sm-6">
                            <!-- campaign details -->
                            <div class="panel-sub-title mb20"><i class="fa fa-cog"></i> {__("Campaign Details")}</div>
                            <div class="form-group">
                                <label for="campaign_title">{__("Campaign Title")}</label>
                                <input type="text" class="form-control" name="campaign_title" id="campaign_title">
                                <span class="help-block">
                                    {__("Set a title for your campaign")}
                                </span>
                            </div>
                            <div class="form-group">
                                <label for="campaign_start_date">{__("Campaign Start Date")}</label>
                                <div class='input-group date js_datetimepicker'>
                                    <input type='text' class="form-control" name="campaign_start_date" />
                                    <span class="input-group-addon">
                                        <span class="fa fa-calendar"></span>
                                    </span>
                                </div>
                                <span class="help-block">
                                    {__("Set Campaign start datetime (UTC)")}
                                </span>
                            </div>
                            <div class="form-group">
                                <label for="campaign_end_date">{__("Campaign End Date")}</label>
                                <div class='input-group date js_datetimepicker'>
                                    <input type='text' class="form-control" name="campaign_end_date" />
                                    <span class="input-group-addon">
                                        <span class="fa fa-calendar"></span>
                                    </span>
                                </div>
                                <span class="help-block">
                                    {__("Set Campaign end datetime (UTC)")}
                                </span>
                            </div>
                            <div class="form-group">
                                <label for="campaign_budget">{__("Campaign Budget")}</label>
                                <div class="input-money">
                                    <span>{$system['system_currency_symbol']}</span>
                                    <input type="text" class="form-control" placeholder="0.00" min="1.00" max="1000" name="campaign_budget">
                                </div>
                                <span class="help-block">
                                    {__("Set a budget for your campaign, campaign will be paused if reached its limit")}
                                </span>
                            </div>
                            <div class="form-group">
                                <label for="campaign_bidding">{__("Campaign Bidding")}</label>
                                <select class="form-control" name="campaign_bidding">
                                    <option value="click">{__("Pay Per Click")} ({$system['system_currency_symbol']}{$system['ads_cost_click']})</option>
                                    <option value="view">{__("Pay Per View")} ({$system['system_currency_symbol']}{$system['ads_cost_view']})</option>
                                </select>
                            </div>
                            <!-- campaign details -->

                            <!-- target audience -->
                            <div class="panel-sub-title mb20"><i class="fa fa-crosshairs"></i> {__("Target Audience")}</div>
                            <div class="form-group">
                                <label for="audience_countries">{__("Audience Country")}</label>
                                <select class="form-control selectpicker" multiple data-actions-box="true" name="audience_countries[]" id="js_ads-audience-countries">
                                    {foreach $countries as $country}
                                        <option value="{$country['country_id']}">{$country['country_name']}</option>
                                    {/foreach}
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="audience_gender">{__("Audience Gender")}</label>
                                <select class="form-control" name="audience_gender" id="js_ads-audience-gender">
                                    <option value="all">{__("All")}</option>
                                    <option value="male">{__("Male")}</option>
                                    <option value="female">{__("Female")}</option>
                                    <option value="other">{__("Other")}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="audience_relationship">{__("Audience Relationship")}</label>
                                <select class="form-control" name="audience_relationship" id="js_ads-audience-relationship">
                                    <option value="all">{__("All")}</option>
                                    <option value="single">{__("Single")}</option>
                                    <option value="relationship">{__("In a relationship")}</option>
                                    <option value="married">{__("Married")}</option>
                                    <option value="complicated">{__("It's complicated")}</option>
                                    <option value="separated">{__("Separated")}</option>
                                    <option value="divorced">{__("Divorced")}</option>
                                    <option value="widowed">{__("Widowed")}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="potential_reach">{__("Potential Reach")}</label>
                                <div class="text-lg">
                                    <div class="pull-right flip x-hidden" id="js_ads-potential-reach-loader">
                                        <div class="loader loader_small"></div>
                                    </div>
                                    <i class="fa fa-users"></i> <span class="text-primary" id="js_ads-potential-reach">{$potential_reach}</span> {__("People")}
                                </div>
                            </div>
                            <!-- target audience -->
                        </div>
                        <!-- campaign details & target audience -->

                        <!-- ads details -->
                        <div class="col-sm-6">
                            <div class="panel-sub-title mb20"><i class="fa fa-bullhorn"></i> {__("Ads Details")}</div>
                            <div class="form-group">
                                <label for="ads_title">{__("Ads Title")}</label>
                                <input type="text" class="form-control" name="ads_title" id="ads_title">
                                <span class="help-block">
                                    {__("Set a title for your ads")}
                                </span>
                            </div>
                            <div class="form-group">
                                <label for="ads_description">{__("Ads Description")}</label>
                                <textarea class="form-control" name="ads_description" rows="5"></textarea>
                                <span class="help-block">
                                    {__("Set a description for your ads (maximum 200 characters)")}
                                </span>
                            </div>
                            <div class="form-group">
                                <label for="ads_type">{__("Advertise For")}</label>
                                <select class="form-control" name="ads_type" id="js_campaign-type">
                                    <option value="url">{__("URL")}</option>
                                    <option value="page">{__("Page")}</option>
                                    <option value="group">{__("Group")}</option>
                                    <option value="event">{__("Event")}</option>
                                </select>
                                <span class="help-block">
                                    {__("You can advertise for a URL or one of your pages, groups or events")}
                                </span>
                            </div>
                            <div class="form-group" id="js_campaign-type-url">
                                <label for="ads_url">{__("Target URL")}</label>
                                <input type="text" class="form-control" name="ads_url">
                                <span class="help-block">
                                    {__("Enter your URL you want to advertise for")}
                                </span>
                            </div>
                            <div class="form-group x-hidden" id="js_campaign-type-page">
                                <label for="ads_page">{__("Target Page")}</label>
                                <select class="form-control" name="ads_page">
                                    <option value="none">{__("Select Page")}</option>
                                    {foreach $pages as $page}
                                    <option value="{$page['page_id']}">{__($page['page_title'])}</option>
                                    {/foreach}
                                </select>
                                <span class="help-block">
                                    {__("Select one of your pages you want to advertise for")}
                                </span>
                            </div>
                            <div class="form-group x-hidden" id="js_campaign-type-group">
                                <label for="ads_group">{__("Target Group")}</label>
                                <select class="form-control" name="ads_group">
                                    <option value="none">{__("Select Group")}</option>
                                    {foreach $groups as $group}
                                    <option value="{$group['group_id']}">{__($group['group_title'])}</option>
                                    {/foreach}
                                </select>
                                <span class="help-block">
                                    {__("Select one of your groups you want to advertise for")}
                                </span>
                            </div>
                            <div class="form-group x-hidden" id="js_campaign-type-event">
                                <label for="ads_event">{__("Target Event")}</label>
                                <select class="form-control" name="ads_event">
                                    <option value="none">{__("Select Event")}</option>
                                    {foreach $events as $event}
                                    <option value="{$event['event_id']}">{__($event['event_title'])}</option>
                                    {/foreach}
                                </select>
                                <span class="help-block">
                                    {__("Select one of your events you want to advertise for")}
                                </span>
                            </div>
                            <div class="form-group">
                                <label for="ads_placement">{__("Ads Placement")}</label>
                                <select class="form-control" name="ads_placement">
                                    <option value="newsfeed">{__("Newsfeed")}</option>
                                    <option value="sidebar">{__("Sidebar")}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="ads_image">{__("Ads Image")}</label>
                                <div class="x-image">
                                    <button type="button" class="close x-hidden js_x-image-remover" title='{__("Remove")}'>
                                        <span>×</span>
                                    </button>
                                    <div class="loader loader_small x-hidden"></div>
                                    <i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
                                    <input type="hidden" class="js_x-image-input" name="ads_image">
                                </div>
                                <span class="help-block">
                                    {__("The image of your ads, supported formats (JPG, PNG, GIF)")}
                                </span>
                            </div>
                        </div>
                        <!-- ads details -->
                    </div>

                    <!-- error -->
                    <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                    <!-- error -->
                </div>
                <div class="panel-footer text-right">
                    <button type="submit" class="btn btn-primary"><i class="fas fa-plus"></i> {__("Publish")}</button>
                </div>
            </form>
        </div>
        <!-- new campaign -->

    {elseif $view == "edit"}

        <!-- edit campaign -->
        <div class="panel panel-default mt20">
            <div class="panel-heading with-icon">
                <!-- panel title -->
                <i class="fa fa-edit pr5 panel-icon"></i>
                <strong>{__("Edit Campaign")}</strong>
                <!-- panel title -->
            </div>
            <form class="js_ajax-forms" data-url="ads/campaign.php?do=edit&id={$campaign['campaign_id']}">
                <div class="panel-body">
                    {if $user->_data['user_wallet_balance'] == 0}
                        <div class="bs-callout bs-callout-warning mt0">
                            {__("Your current wallet credit is")}: <strong>{$system['system_currency_symbol']}{$user->_data['user_wallet_balance']|number_format:2}</strong> {__("You need to")} <a href="{$system['system_url']}/wallet">{__("Replenish your wallet credit")}</a>
                        </div>
                    {/if}

                    <div class="row">
                        <!-- campaign details & target audience -->
                        <div class="col-sm-6">
                            <!-- campaign details -->
                            <div class="panel-sub-title mb20"><i class="fa fa-cog"></i> {__("Campaign Details")}</div>
                            <div class="form-group">
                                <label for="campaign_title">{__("Campaign Title")}</label>
                                <input type="text" class="form-control" name="campaign_title" value="{$campaign['campaign_title']}">
                                <span class="help-block">
                                    {__("Set a title for your campaign")}
                                </span>
                            </div>
                            <div class="form-group">
                                <label for="campaign_start_date">{__("Campaign Start Date")}</label>
                                <div class='input-group date js_datetimepicker'>
                                    <input type='text' class="form-control" name="campaign_start_date" value="{get_datetime($campaign['campaign_start_date'])}" />
                                    <span class="input-group-addon">
                                        <span class="fa fa-calendar"></span>
                                    </span>
                                </div>
                                <span class="help-block">
                                    {__("Set Campaign start datetime (UTC)")}
                                </span>
                            </div>
                            <div class="form-group">
                                <label for="campaign_end_date">{__("Campaign End Date")}</label>
                                <div class='input-group date js_datetimepicker'>
                                    <input type='text' class="form-control" name="campaign_end_date" value="{get_datetime($campaign['campaign_end_date'])}" />
                                    <span class="input-group-addon">
                                        <span class="fa fa-calendar"></span>
                                    </span>
                                </div>
                                <span class="help-block">
                                    {__("Set Campaign end datetime (UTC)")}
                                </span>
                            </div>
                            <div class="form-group">
                                <label for="campaign_budget">{__("Campaign Budget")}</label>
                                <div class="input-money">
                                    <span>{$system['system_currency_symbol']}</span>
                                    <input type="text" class="form-control" placeholder="0.00" min="1.00" max="1000" name="campaign_budget" value="{$campaign['campaign_budget']}">
                                </div>
                                <span class="help-block">
                                    {__("Set a budget for your campaign, campaign will be paused if reached its limit")}
                                </span>
                            </div>
                            <div class="form-group">
                                <label for="campaign_bidding">{__("Campaign Bidding")}</label>
                                <select class="form-control" name="campaign_bidding">
                                    <option {if $campaign['campaign_bidding'] == "click"}selected{/if} value="click">{__("Pay Per Click")} ({$system['system_currency_symbol']}{$system['ads_cost_click']})</option>
                                    <option {if $campaign['campaign_bidding'] == "view"}selected{/if} value="view">{__("Pay Per View")} ({$system['system_currency_symbol']}{$system['ads_cost_view']})</option>
                                </select>
                            </div>
                            <!-- campaign details -->

                            <!-- target audience -->
                            <div class="panel-sub-title mb20"><i class="fa fa-crosshairs"></i> {__("Target Audience")}</div>
                            <div class="form-group">
                                <label for="audience_countries">{__("Audience Country")}</label>
                                <select class="form-control selectpicker" multiple data-actions-box="true" name="audience_countries[]" id="js_ads-audience-countries">
                                    {foreach $countries as $country}
                                        <option {if in_array($country['country_id'], $campaign['audience_countries'])}selected{/if} value="{$country['country_id']}">{$country['country_name']}</option>
                                    {/foreach}
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="audience_gender">{__("Audience Gender")}</label>
                                <select class="form-control" name="audience_gender" id="js_ads-audience-gender">
                                    <option {if $campaign['audience_gender'] == "all"}selected{/if} value="all">{__("All")}</option>
                                    <option {if $campaign['audience_gender'] == "male"}selected{/if} value="male">{__("Male")}</option>
                                    <option {if $campaign['audience_gender'] == "female"}selected{/if} value="female">{__("Female")}</option>
                                    <option {if $campaign['audience_gender'] == "other"}selected{/if} value="other">{__("Other")}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="audience_relationship">{__("Audience Relationship")}</label>
                                <select class="form-control" name="audience_relationship" id="js_ads-audience-relationship">
                                    <option {if $campaign['audience_relationship'] == "all"}selected{/if} value="all">{__("All")}</option>
                                    <option {if $campaign['audience_relationship'] == "single"}selected{/if} value="single">{__("Single")}</option>
                                    <option {if $campaign['audience_relationship'] == "relationship"}selected{/if} value="relationship">{__("In a relationship")}</option>
                                    <option {if $campaign['audience_relationship'] == "married"}selected{/if} value="married">{__("Married")}</option>
                                    <option {if $campaign['audience_relationship'] == "complicated"}selected{/if} value="complicated">{__("It's complicated")}</option>
                                    <option {if $campaign['audience_relationship'] == "separated"}selected{/if} value="separated">{__("Separated")}</option>
                                    <option {if $campaign['audience_relationship'] == "divorced"}selected{/if} value="divorced">{__("Divorced")}</option>
                                    <option {if $campaign['audience_relationship'] == "widowed"}selected{/if} value="widowed">{__("Widowed")}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="potential_reach">{__("Potential Reach")}</label>
                                <div class="text-lg">
                                    <div class="pull-right flip x-hidden" id="js_ads-potential-reach-loader">
                                        <div class="loader loader_small"></div>
                                    </div>
                                    <i class="fa fa-users"></i> <span class="text-primary" id="js_ads-potential-reach">{$campaign['campaign_potential_reach']}</span> {__("People")}
                                </div>
                            </div>
                            <!-- target audience -->
                        </div>
                        <!-- campaign details & target audience -->

                        <!-- ads details -->
                        <div class="col-sm-6">
                            <div class="panel-sub-title mb20"><i class="fa fa-bullhorn"></i> {__("Ads Details")}</div>
                            <div class="form-group">
                                <label for="ads_title">{__("Ads Title")}</label>
                                <input type="text" class="form-control" name="ads_title" id="ads_title" value="{$campaign['ads_title']}">
                                <span class="help-block">
                                    {__("Set a title for your ads")}
                                </span>
                            </div>
                            <div class="form-group">
                                <label for="ads_description">{__("Ads Description")}</label>
                                <textarea class="form-control" name="ads_description" rows="5">{$campaign['ads_description']}</textarea>
                                <span class="help-block">
                                    {__("Set a description for your ads (maximum 200 characters)")}
                                </span>
                            </div>
                            <div class="form-group">
                                <label for="ads_type">{__("Advertise For")}</label>
                                <select class="form-control" name="ads_type" id="js_campaign-type">
                                    <option {if $campaign['ads_type'] == "url"}selected{/if} value="url">{__("URL")}</option>
                                    <option {if $campaign['ads_type'] == "page"}selected{/if} value="page">{__("Page")}</option>
                                    <option {if $campaign['ads_type'] == "group"}selected{/if} value="group">{__("Group")}</option>
                                    <option {if $campaign['ads_type'] == "event"}selected{/if} value="event">{__("Event")}</option>
                                </select>
                                <span class="help-block">
                                    {__("You can advertise for a URL or one of your pages, groups or events")}
                                </span>
                            </div>
                            <div class="form-group {if $campaign['ads_type'] != 'url'}x-hidden{/if}" id="js_campaign-type-url">
                                <label for="ads_url">{__("Target URL")}</label>
                                <input type="text" class="form-control" name="ads_url" value="{$campaign['ads_url']}">
                                <span class="help-block">
                                    {__("Enter your URL you want to advertise for")}
                                </span>
                            </div>
                            <div class="form-group {if $campaign['ads_type'] != 'page'}x-hidden{/if}" id="js_campaign-type-page">
                                <label for="ads_page">{__("Target Page")}</label>
                                <select class="form-control" name="ads_page">
                                    <option value="none">{__("Select Page")}</option>
                                    {foreach $pages as $page}
                                    <option {if $campaign['ads_page'] == $page['page_id']}selected{/if} value="{$page['page_id']}">{__($page['page_title'])}</option>
                                    {/foreach}
                                </select>
                                <span class="help-block">
                                    {__("Select one of your pages you want to advertise for")}
                                </span>
                            </div>
                            <div class="form-group {if $campaign['ads_type'] != 'group'}x-hidden{/if}" id="js_campaign-type-group">
                                <label for="ads_group">{__("Target Group")}</label>
                                <select class="form-control" name="ads_group">
                                    <option value="none">{__("Select Group")}</option>
                                    {foreach $groups as $group}
                                    <option {if $campaign['ads_group'] == $group['group_id']}selected{/if} value="{$group['group_id']}">{__($group['group_title'])}</option>
                                    {/foreach}
                                </select>
                                <span class="help-block">
                                    {__("Select one of your groups you want to advertise for")}
                                </span>
                            </div>
                            <div class="form-group {if $campaign['ads_type'] != 'event'}x-hidden{/if}" id="js_campaign-type-event">
                                <label for="ads_event">{__("Target Event")}</label>
                                <select class="form-control" name="ads_event">
                                    <option value="none">{__("Select Event")}</option>
                                    {foreach $events as $event}
                                    <option {if $campaign['ads_event'] == $event['event_id']}selected{/if} value="{$event['event_id']}">{__($event['event_title'])}</option>
                                    {/foreach}
                                </select>
                                <span class="help-block">
                                    {__("Select one of your events you want to advertise for")}
                                </span>
                            </div>
                            <div class="form-group">
                                <label for="ads_placement">{__("Ads Placement")}</label>
                                <select class="form-control" name="ads_placement">
                                    <option {if $campaign['ads_placement'] == "newsfeed"}selected{/if} value="newsfeed">{__("Newsfeed")}</option>
                                    <option {if $campaign['ads_placement'] == "sidebar"}selected{/if} value="sidebar">{__("Sidebar")}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="ads_image">{__("Ads Image")}</label>
                                {if $campaign['ads_image'] == ''}
                                    <div class="x-image">
                                        <button type="button" class="close x-hidden js_x-image-remover" title='{__("Remove")}'>
                                            <span>×</span>
                                        </button>
                                        <div class="loader loader_small x-hidden"></div>
                                        <i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
                                        <input type="hidden" class="js_x-image-input" name="ads_image">
                                    </div>
                                {else}
                                    <div class="x-image" style="background-image: url('{$system['system_uploads']}/{$campaign['ads_image']}')">
                                        <button type="button" class="close js_x-image-remover" title='{__("Remove")}'>
                                            <span>×</span>
                                        </button>
                                        <div class="loader loader_small x-hidden"></div>
                                        <i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
                                        <input type="hidden" class="js_x-image-input" name="ads_image" value="{$campaign['ads_image']}">
                                    </div>
                                {/if}
                                <span class="help-block">
                                    {__("The image of your ads, supported formats (JPG, PNG, GIF)")}
                                </span>
                            </div>
                        </div>
                        <!-- ads details -->
                    </div>

                    <!-- success -->
                    <div class="alert alert-success mb0 mt10 x-hidden" role="alert"></div>
                    <!-- success -->

                    <!-- error -->
                    <div class="alert alert-danger mb0 mt10 x-hidden" role="alert"></div>
                    <!-- error -->
                </div>
                <div class="panel-footer text-right">
                    <button type="submit" class="btn btn-primary">{__("Save Changes")}</button>
                </div>
            </form>
        </div>
        <!-- edit campaign -->

    {elseif $view == "wallet"}

        <!-- wallet -->
        <div class="panel panel-default mt20">
            <div class="panel-heading with-icon">
                <!-- panel title -->
                <i class="fa fa-wallet pr5 panel-icon"></i>
                <strong>{__("Wallet")}</strong>
                <!-- panel title -->
            </div>
            <div class="panel-body">
                {if $wallet_transfer_amount}
                    <div class="alert alert-success mb20">
                        <i class="fas fa-check-circle mr5"></i>
                        {__("Your")} {$system['system_currency_symbol']}{$wallet_transfer_amount|number_format:2} {__("transfer transaction successfuly sent")}
                    </div>
                {/if}
                {if $wallet_replenish_amount}
                    <div class="alert alert-success mb20">
                        <i class="fas fa-check-circle mr5"></i>
                        {__("Congratulation! Your wallet credit replenished successfully with")} {$system['system_currency_symbol']}{$wallet_replenish_amount|number_format:2}
                    </div>
                {/if}
                {if $wallet_withdraw_amount}
                    <div class="alert alert-success mb20">
                        <i class="fas fa-check-circle mr5"></i>
                        {__("Congratulation! Your wallet credit replenished successfully with")} {$system['system_currency_symbol']}{$wallet_withdraw_amount|number_format:2} {__("from your affiliates credit")}
                    </div>
                {/if}

                <div class="row">
                    <!-- credit -->
                    <div class="col-sm-5">
                        <div class="panel-sub-title mb20"><i class="fa fa-money-bill-alt"></i> {__("Your Credit")}</div>
                        <div class="stat-panel info">
                            <div class="stat-cell small">
                                <i class="fa fa-wallet bg-icon"></i>
                                <span class="text-xlg" style="font-weight: normal; line-height: 40px;">
                                    {$system['system_currency_symbol']}{$user->_data['user_wallet_balance']|number_format:2}
                                </span>
                            </div>
                        </div>
                    </div>
                    <!-- credit -->

                    <!-- send & recieve money -->
                    <div class="col-sm-7">
                        <div class="panel-sub-title mb20"><i class="fas fa-donate"></i> {__("Send & Recieve Money")}</div>
                        <button class="btn btn-success btn-block mb10" data-toggle="modal" data-url="#wallet-transfer">
                            <i class="fa fa-gift"></i> {__("Send Money")}
                        </button>
                        {if $system['affiliates_enabled']}
                            <div class="row">
                                <div class="col-xs-12 col-sm-6">
                                    <button class="btn btn-primary btn-block mb10" data-toggle="modal" data-url="#wallet-replenish">
                                        <i class="fab fa-paypal"></i> {__("Replenish Credit")}
                                    </button>
                                </div>
                                <div class="col-xs-12 col-sm-6">
                                    <button class="btn btn-primary btn-block mb20" data-toggle="modal" data-url="#wallet-withdraw-affiliate">
                                        <i class="fa fa-exchange-alt"></i> {__("Withdraw Affiliates Credit")}
                                    </button>
                                </div>
                            </div>
                        {else}
                            <button class="btn btn-primary btn-block mb20" data-toggle="modal" data-url="#wallet-replenish">
                                <i class="fab fa-paypal"></i> {__("Replenish Credit")}
                            </button>
                        {/if}
                    </div>
                    <!-- send & recieve money -->

                    <!-- wallet transactions -->
                    <div class="col-sm-12">
                        <div class="panel-sub-title mb20"><i class="fas fa-file-alt"></i> {__("Wallet Transactions")}</div>
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover js_dataTable">
                                <thead>
                                    <tr>
                                        <th>{__("ID")}</th>
                                        <th>{__("Amount")}</th>
                                        <th>{__("From / To")}</th>
                                        <th>{__("Time")}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {foreach $transactions as $transaction}
                                        <tr>
                                            <td>{$transaction['transaction_id']}</td>
                                            <td>
                                                {if $transaction['type'] == "out"}
                                                    <span class="label label-danger mr5"><i class="far fa-arrow-alt-circle-down"></i></span>
                                                    <strong class="text-danger">{$system['system_currency_symbol']}{$transaction['amount']|number_format:2}</strong>
                                                {else}
                                                    <span class="label label-success mr5"><i class="far fa-arrow-alt-circle-up"></i></span>
                                                    <strong class="text-success">{$system['system_currency_symbol']}{$transaction['amount']|number_format:2}</strong>
                                                {/if}
                                            </td>
                                            <td>
                                                {if $transaction['type'] == "out"}
                                                    <span class="label label-danger mr10">{__("To")}</span>
                                                {else}
                                                    <span class="label label-success mr10">{__("From")}</span>
                                                {/if}
                                                {if $transaction['node_type'] == "user"}
                                                    <a  target="_blank" href="{$system['system_url']}/{$transaction['user_name']}">
                                                        <img class="tbl-image" src="{$transaction['user_picture']}" style="float: none;">
                                                        {$transaction['user_firstname']} {$transaction['user_lastname']}
                                                    </a>
                                                {/if}
                                                {if $transaction['node_type'] == "recharge"}
                                                    {__("Replenish Credit")}
                                                {/if}
                                                {if $transaction['node_type'] == "withdraw"}
                                                    {__("Affiliates Credit")}
                                                {/if}
                                            </td>
                                            <td><span class="js_moment" data-time="{$transaction['date']}">{$transaction['date']}</span></td>
                                        </tr>
                                    {/foreach}
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- wallet transactions -->
                </div>
            </div>
        </div>
        <!-- wallet -->

    {/if}
        
</div>
<!-- page content -->

{include file='_footer.tpl'}