# 工具说明

## 获取

```bash
go get github.com/skyrunner2012/go-xorm/cmd/xorm
```

## 改进说明
* 针对字段名称是 update_time 的，会自动加上 updated 的xorm标签
* 针对字段名称是 create_time 的，会自动加上 created 的xorm标签
* 增强了自定义时间类型，可在配置文件的timepkg参数上配置自定义时间的包名(全路径名)，类型名还是Time，暂时不支持指定
* 为了区分是自动生成的，还是人工的文件，在文件的后缀上增加了区分，可在配置文件的filesuffix参数上配置生成文件的后缀
* 在生成文件的开头，增加了注释，提示不要修改

```go
// 该文件由工具自动生成，不要手工修改!!
```

* 基于的项目源码,不需要下载就可以运行

```bash
go get github.com/go-xorm/xorm
go get github.com/go-xorm/cmd/xorm
```

## 使用方法

```bash
打开terminal
go build -o xorm
./xorm reverse postgres "postgres://testuser:testuser123@10.200.63.120:5432/testdb?sslmode=disable" templates/goxorm packagename
```
