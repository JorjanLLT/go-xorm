package {{.Model}}

// 该文件由工具自动生成，不要手工修改!!

{{$ilen := len .Imports}}
{{if gt $ilen 0}}
import (
	{{range .Imports}}"{{.}}"{{end}}
)
{{end}}

{{$doObjSuffix:=.DoObjSuffix}}

{{range .Tables}}
type {{Mapper .Name}}{{$doObjSuffix}} struct {
{{$table := .}}
{{range .ColumnsSeq}}{{$col := $table.GetColumn .}}	{{Mapper $col.Name}}	{{Type $col}} {{Tag $table $col}}
{{end}}
}

{{end}}