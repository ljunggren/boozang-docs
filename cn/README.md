#Couscous Mintlook

！[]（https://static.mo-mar.de/couscous-mintlook-mockup.jpg）

[实例]（https://moqmar.github.io/shell-setup/）


＃＃ 介绍
###为什么要使用Boozang？
###有什么不同？
###它涵盖了什么？
###何时不使用
＃＃ 入门
＃＃＃ 报名
###创建一个项目
###启动该工具
###安装Chrome扩展程序/片段
###设置环境
###记录您的第一个测试
###工具内帮助
＃＃ 工具
###顶栏
###侧边栏
###创建模块和测试
###动作列表
###录制/播放
###工具栏
###行动细节
##元素选择
### Boozang选择器语言
###元素栏
###重新挑选一个元素
###使用DOM选择器编辑元素
###深入研究DOM选择器
###元素政策
### AI test在找不到元素时进行修复
##录制和播放模式
###记录测试
###数据绑定
###参加考试
###演示模式
###自动播放模式
##动作类型
###鼠标事件
###键盘事件
###验证
###提取数据
### Javascript
###评论
###刷新
##数据类型
###财产
### JSON
###数组
### CSV
### Javascript
###外部文件
##高级操作类型
###访问链接
##数据绑定
###从表单绑定到变量
###从变量绑定到表单
##高级数据功能
### Boozang正则表达式引擎
###设置正则表达式
###使用自动填充功能
###使用数据绑定绑定自动填充
##设置
＃＃＃ 环境
###内容政策
＃＃＃ 喜好
###通知
##报告
###报告视图
##团队
###添加团队成员
###访问政策
### CI用户
##同步
##工具
###导入
＃＃＃ 出口
###搜索
##循环，矩阵测试和bz-skip关键字
###设置一个简单的数据循环
###矩阵测试
###关键字：bz-skip和bz-stop
## API测试
###验证API调用
###提取数据API调用
## AI构建登录/注销案例


＃＃ 特征

 - 搜索功能
 - 语言选择
 - 分页（上一个/下一个）
 - 语法高亮显示
 - 可自定义的侧边栏和页脚
 - 可配置的强调色

##用法

要使用该模板，请在`couscous.yml`配置文件中进行设置：

```YAML
模板：
    网址：https：//github.com/moqmar/mintlook-couscous
```

您还应该将文件[`404.md`]（https://github.com/moqmar/mintlook-couscous/blob/master/404.md）添加到您的文档中，并将您的网络服务器配置为指向`/ 404。丢失页面上的html`

项目根目录（`baseUrl`）中的文件`icon.png`将用作favicon。

##配置
```YAML
标题：古斯古斯#Page Title
logo：https：//cdn0.iconfinder.com/data/icons/ie_Shine/128/shine_19.png#Icon URL
颜色：“＃d21”#Atcent颜色

languages：[“en”，“de”]＃支持的语言列表。注释以禁用语言选择。
defaultLanguage：world＃默认语言图标，以及html lang属性的值。如果您不使用语言选择，建议设置均匀（尤其是）。

search：true＃启用搜索
脚本：
    后：
         -  php .couscous / generated / .scripts / generate-search-index.php＃搜索需要
         -  rm -rf .couscous / generated / .scripts＃清理不必要的文件

边栏：
     - 标题：关于mintlook
     - 副标题：链接
     - 文字：主页
      链接：https：//moqmar.github.io/mintlook＃absolute link
     - 文字：Mintlook和Couscous
      页面：/＃相对链接
     -  line：true
     -  html：|
            <p>在<a href=""> Facebook </a>，<a href=""> Twitter </a>和其他<a href="">社交网络</a>上关注我们。</ p>
＃您还可以定义每种语言的侧边栏
边栏：
  德：
     - 标题：Überminlelook
  默认值：所有其他语言的＃fallback
     - 标题：关于mintlook

页脚：|
    您好<strong>世界</ strong>
＃您还可以定义每种语言的页脚
页脚：所有其他语言的#backback
  de：你好<strong>世界</ strong>
  默认值：Hello <strong> World </ strong>
```

###语言选择
如果设置了`languages`配置选项，你应该有一个`/ <language> / <...>`形式的目录结构，`defaultLanguage`中的页面只位于`/ <... >` - 例如** / de / something.html **为德语版本，** / something.html **为英文版本。

将`defaultLanguage`设置为`world`，对所有站点强制执行`/ <language> / <...>`结构，并在不遵守该结构的页面上显示世界地图而不是标记。

您还可以使用`pageLanguage`元数据字段覆盖单个文件的显示语言。

如果要自动转到用户的浏览器语言，可以在存储库中使用以下`index.html`文件：

```HTML
<！doctype html>
<！ - 默认语言 - >
<meta http-equiv =“refresh”content =“1; URL = en /”>
<！ - 浏览器语言 - >
<SCRIPT>
var supportedLanguages = [“en”，“de”]; //应与couscous.yml中的相同
for（var i in navigator.languages）if（supportedLanguages.indexOf（navigator.languages [i]）> -1）{
    LOCA