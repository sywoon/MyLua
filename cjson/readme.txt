
lua-cjson-2.1.0.zip
https://github.com/mpx/lua-cjson/tags

��bug��
����decode�� ����С�� ��� .0
 ["excel"] = 41286.0,



ͨ��window lua5.1����  ����û�������
�汾��ͬ��
["_VERSION"] = "2.1.0-luapower",
�ҵ��޸İ�
https://github.com/luapower/cjson
һ�� ���������  ���ܺ�lua�����




https://github.com/openresty/lua-cjson
ǿ���汾 
-- cjson��ȱ�㣺decode���/����Ϊ\/����  encodeû���� 
--      "<html>title</html>" => "<html>title<\/html>"
--      "path":"src/bin/test/" => "path":"src\/bin\/test\/"

-- ԭ��cjson ���һ��Ĭ����Ϊ encodeʱ ���</������ </html>) ת��Ϊ <\/���Ӷ���� "<\/html>"
--      ���ڰ�ȫ�Կ��� ��ֹ��ĳЩ Web ������Ƕ�� JSON �� HTML ҳ��ʱ������������ɱ�ǩ����

OpenResty��lua-cjson fork ��ַ 
����
cjson.encode_escape_forward_slash(false) �رն� / ��ת�壨�� \/ ��� /
cjson.encode_empty_table_as_object(true|false|"on"|"off")
cjson.empty_array  ������  encode�� �ɵõ���ȷ��tableת����ʽ{}=>[]
cjson.encode_number_precision(precision)  ���ȴ�14��ߵ�16λ
cjson.encode_escape_forward_slash(enabled)  forward slash '/' will be encoded as '\/'.




















