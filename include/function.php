<?php
//Hàm get_url() lấy URL trang hiện tại
if(!function_exists('get_link')){
    function get_link()
    {
        $uri = $_SERVER['REQUEST_URI'];
        $query = $_SERVER['QUERY_STRING'];
        $domain = $_SERVER['HTTP_HOST'];
        $protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
        $url = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
        return $url;
    }
}
//Hàm xác định chức vụ User
if(!function_exists('vaitro')){
    function vaitro(int $vaitro)
    {
        if($vaitro == 0)
            return "Blog Writter";
        else if($vaitro == 1)
            return "Blog Manager";
        else if($vaitro == 2)
            return "Owner";
    }
}
//Hàm kiểm tra từ khóa bị cấm
if(!function_exists('check_ban_name')){
    function check_ban_name(array $ban, string $name)
    {
        $dem = 1;
        foreach ($ban as $name_ban) {
            if(strtoupper($name_ban) === strtoupper($name))
                return 1;
        }
        return 0;
    }
}
//Hàm loại bỏ các script độc hại, tấn công XSS
if (!function_exists('check_xss')) {
    function check_xss($string)
        {
            $str = str_replace( '<', '&lt', $string );
            $str = str_replace( '>', '&gt', $str );
            $str = str_replace( '(', '&#10088', $str );
            $str = str_replace( ')', '&#10089', $str );
            $str = str_replace( '{', '&#123', $str );
            $str = str_replace( '}', '&#125', $str );
            $str = str_replace( "'", '&#39', $str );
            $str = str_replace( '"', '&#34', $str );
            $str = str_replace( ',', '&#8218', $str );
            $str = str_replace( '|', '&#124', $str );
            $str = str_replace( '/', '&#47', $str );
            $str = str_replace( ';', '&#59', $str );
            $str = str_replace( '.', '&#46', $str );
            $str = str_replace( ',', '&#44', $str );
            $str = str_replace( '!', '&#33', $str );
            $str = str_replace( '*', '&#42', $str );
            return $str;
        }
    }
// Hàm kiểm tra Email hợp lệ
if (!function_exists('emailValid')) {
    function emailValid($string) 
    { 
        if (preg_match ("/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+\.[A-Za-z]{2,6}$/", $string)) 
            return true; 
    } 
}
//Hàm tạo SLUG
if (!function_exists('create_slug')) {
    function create_slug($string)
    {
        $search = array(
            '#(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)#',
            '#(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)#',
            '#(ì|í|ị|ỉ|ĩ)#',
            '#(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)#',
            '#(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)#',
            '#(ỳ|ý|ỵ|ỷ|ỹ)#',
            '#(đ)#',
            '#(À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ)#',
            '#(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ)#',
            '#(Ì|Í|Ị|Ỉ|Ĩ)#',
            '#(Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ)#',
            '#(Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ)#',
            '#(Ỳ|Ý|Ỵ|Ỷ|Ỹ)#',
            '#(Đ)#',
            "/[^a-zA-Z0-9\-\_]/",
        );
        $replace = array(
            'a',
            'e',
            'i',
            'o',
            'u',
            'y',
            'd',
            'A',
            'E',
            'I',
            'O',
            'U',
            'Y',
            'D',
            '-',
        );
        $string = preg_replace($search, $replace, $string);
        $string = preg_replace('/(-)+/', '-', $string);
        $string = strtolower($string);
        return $string;
    }
}
?>