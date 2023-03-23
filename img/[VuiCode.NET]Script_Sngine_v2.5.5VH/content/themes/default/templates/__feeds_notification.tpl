<li class="feeds-item {if !$notification['seen']}unread{/if}" data-id="{$notification['notification_id']}">
    <a class="data-container" href="{$notification['url']}">
        <img class="data-avatar" src="{$notification['user_picture']}" alt="">
        <div class="data-content">
            <div>
            	<span class="name">{$notification['user_firstname']} {$notification['user_lastname']}</span>
            	{if $notification['user_verified']}
                    <i data-toggle="tooltip" data-placement="top" title='{__("Verified User")}' class="fa fa-check-circle fa-fw verified-badge"></i>
                {/if}
                {if $notification['user_subscribed']}
                    <i data-toggle="tooltip" data-placement="top" title='{__("Pro User")}' class="fa fa-bolt fa-fw pro-badge"></i>
                {/if}
           	</div>
            <div><i class="fa {$notification['icon']} pr5"></i> {$notification['message']}</div>
            <div class="time js_moment" data-time="{$notification['time']}">{$notification['time']}</div>
        </div>
    </a>
</li>