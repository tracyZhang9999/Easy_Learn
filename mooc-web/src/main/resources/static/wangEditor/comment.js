
var E = window.wangEditor;
/**
 * 评论
 */
var editor = new E('#wangEditorToolbar','#wangEditorText');
// 自定义菜单配置
editor.customConfig.menus = [
    'code',  // 插入代码
    'bold',  // 粗体
    'underline',  // 下划线
    'link',  // 插入链接
    'foreColor',  // 文字颜色
    'quote',  // 引用
    'emoticon',  // 表情
    'list',  // 列表
    'justify',  // 对齐方式
    'undo',  // 撤销
    'redo'  // 重复
];

// 关闭粘贴样式的过滤
editor.customConfig.pasteFilterStyle = true;
// 忽略粘贴内容中的图片
editor.customConfig.pasteIgnoreImg = true;

editor.create();