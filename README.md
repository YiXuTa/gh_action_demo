# gh_action_demo
action使用示例


# 使用限制 
+ https://docs.github.com/zh/actions/administering-github-actions/usage-limits-billing-and-administration
+ 公开的仓库是免费的
+ vm没有公网ip，但是可以访问公网
+ 每次(publish可以生成)生成的机器可以用35天，1个job可以用6小数
+ 每个账号限制并发作业数量是20
+ 若要更多作业，就需要更多账号
+ 目前不能指定ip所在的地区
+ 使用sudo:  echo "$PASSWORD" | sudo -S make
+ 默认的root密码是空的


# 教程 
+ 开始用 https://www.ruanyifeng.com/blog/2019/09/getting-started-with-github-actions.html
+ 添加脚本运行 https://docs.github.com/zh/enterprise-cloud@latest/actions/writing-workflows/choosing-what-your-workflow-does/adding-scripts-to-your-workflow



## 正向代理.方案一(无效)
+ 使用 tinyproxy 或 squid
+ 在github actions的vm上启动正向代理服务
+ 但是github提供的vm没有公网ip，哪怕能curl到，也无法开启端口

## 内网穿透.方案二(麻烦)
+ 需要公网机器(如阿里云)
+ 将vm穿透到该公网机器
+ 使用该公网机器进行请求

## 直接多次push
+ 将爬虫代码直接提交进vm
+ 通过push提交待处理的请求
+ 比如100个请求，每5个使用一个vm， 产生20个push来使用。结果存到远程数据库
+ 使用github小号进行，防止封号



