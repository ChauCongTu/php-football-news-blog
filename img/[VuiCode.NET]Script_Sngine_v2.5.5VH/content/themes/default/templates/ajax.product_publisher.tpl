<div class="modal-body plr0 ptb0">
    <div class="x-form publisher mini">

        <!-- publisher close -->
        <button type="button" class="close mr10 pull-right flip" data-dismiss="modal" aria-hidden="true">×</button>
        <!-- publisher close -->

        <!-- publisher tabs -->
        <ul class="publisher-tabs clearfix">
            <li>
                <span class="active">
                    <i class="fa fa-tag fa-fw"></i> {__("Sell Something")}
                </span>
            </li>
        </ul>
        <!-- publisher tabs -->

        <!-- post product -->
        <div class="publisher-meta top" data-meta="product" style="display: block">
            <i class="fa fa-tag fa-fw"></i>
            <input name="name" type="text" placeholder='{__("What are you selling?")}'>
        </div>
        <div class="publisher-meta top" data-meta="product" style="display: block">
            <i class="fa fa-money-bill-alt fa-fw"></i>
            <input name="price" type="text" placeholder='{__("Add price")} ({$system["system_currency"]})'>
        </div>
        <div class="publisher-meta top" data-meta="product" style="display: block">
            <i class="fa fa-shopping-basket fa-fw"></i>
            <select name="category_id">
                {foreach $market_categories as $category}
                    <option value="{$category['category_id']}">{__($category['category_name'])}</option>
                {/foreach}
            </select>
        </div>
        <div class="publisher-meta top" data-meta="product" style="display: block">
            <i class="fa fa-map-marker fa-fw"></i>
            <input name="location" class="js_geocomplete" type="text" placeholder='{__("Add Location (optional)")}'>
        </div>
        <!-- post product -->

        <!-- post message -->
        <div class="relative">
            <textarea dir="auto" class="js_autosize js_mention" placeholder='{__("Describe your item (optional)")}'></textarea>
        </div>
        <!-- post message -->

        <!-- post attachments -->
        <div class="publisher-attachments attachments clearfix x-hidden">
            <ul></ul>
        </div>
        <!-- post attachments -->

        <!-- post feelings -->
        <div class="publisher-meta feelings" data-meta="feelings">
            <div id="feelings-menu-toggle" data-init-text='{__("What are you doing?")}'>{__("What are you doing?")}</div>
            <div id="feelings-data" style="display: none">
                <input type="text" placeholder='{__("What are you doing?")}'>
                <span></span>
            </div>
            <div id="feelings-menu" class="dropdown-menu dropdown-widget">
                <div class="dropdown-widget-body ptb5">
                    <div class="js_scroller">
                        <ul class="feelings-list">
                            {foreach $feelings as $feeling}
                                <li class="feeling-item js_feelings-add" data-action="{$feeling['action']}" data-placeholder="{__($feeling['placeholder'])}">
                                    <div class="icon">
                                        <i class="twa twa-3x twa-{$feeling['icon']}"></i>
                                    </div>
                                    <div class="data">
                                        {__($feeling['text'])}
                                    </div>
                                </li>
                            {/foreach}
                        </ul>
                    </div>
                </div>
            </div>
            <div id="feelings-types" class="dropdown-menu dropdown-widget">
                <div class="dropdown-widget-body ptb5">
                    <div class="js_scroller">
                        <ul class="feelings-list">
                            {foreach $feelings_types as $type}
                                <li class="feeling-item js_feelings-type" data-type="{$type['action']}" data-icon="{$type['icon']}">
                                    <div class="icon">
                                        <i class="twa twa-3x twa-{$type['icon']}"></i>
                                    </div>
                                    <div class="data">
                                        {__($type['text'])}
                                    </div>
                                </li>
                            {/foreach}
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- post feelings -->

        <!-- publisher-footer -->
        <div class="publisher-footer clearfix">
            <!-- publisher-tools -->
            <ul class="publisher-tools">
                {if $system['photos_enabled']}
                    <li data-toggle="tooltip" data-placement="top" title='{__("Add Photos")}'>
                        <span class="publisher-tools-attach js_publisher-photos">
                            <i class="fa fa-camera fa-fw js_x-uploader" data-handle="publisher" data-multiple="true"></i>
                        </span>
                    </li>
                {/if}
                <li class="relative" data-toggle="tooltip" data-placement="top" title='{__("Add Feelings & Activity")}'>
                    <span class="js_publisher-feelings">
                        <i class="twa twa-smile"></i>
                    </span>
                </li>
                <li class="relative">
                    <span class="js_emoji-menu-toggle" data-toggle="tooltip" data-placement="top" title='{__("Insert an emoji")}'>
                        <i class="fa fa-smile fa-fw"></i>
                    </span>
                    {include file='_emoji-menu.tpl'}
                </li>
            </ul>
            <!-- publisher-tools -->

            <!-- publisher-buttons -->
            <div class="pull-right flip mt5 mr10">
                <button type="button" class="btn btn-primary js_publisher-product">{__("Post")}</button>
            </div>
            <!-- publisher-buttons -->
        </div>
        <!-- publisher-footer -->
    </div>
</div>