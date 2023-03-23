<ul>
    {foreach $online_friends as $_user}
        <li class="feeds-item">
            <div class="data-container clickable small js_chat-start" data-uid="{$_user['user_id']}" data-name="{$_user['user_firstname']} {$_user['user_lastname']}" data-link="{$_user['user_name']}">
                <img class="data-avatar rounded" src="{$_user['user_picture']}" alt="{$_user['user_firstname']} {$_user['user_lastname']}">
                <div class="data-content">
                    <div>
                        <strong>{$_user['user_firstname']} {$_user['user_lastname']}</strong>
                    </div>
                </div>
            </div>
        </li>
    {/foreach}
</ul>