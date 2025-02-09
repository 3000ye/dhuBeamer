# dhuBeamer

## Install

### MacOS

将模板添加到 TeX 的全局目录中：

```shell
sudo mkdir -p /usr/local/texlive/texmf-local/tex/latex/custom/dhuBeamer/
sudo cp -r resume/ /usr/local/texlive/texmf-local/tex/latex/custom/dhuBeamer/
sudo cp -r static/ /usr/local/texlive/texmf-local/tex/latex/custom/dhuBeamer/

sudo mktexlsr
```

即可在任意位置，使用 `\usepackage{dhuBeamer}` 调用此模板。

## LaTeX辅助工具

LaTeX官方中文文档：https://gcore.jsdelivr.net/gh/herotiga/cdn/pdf/lshort-zh-cn.pdf

妈咪叔LaTeX帮助文档：https://latexlive.com/help

mactex官网：https://www.tug.org/mactex/

LaTeX公式编辑器：https://latexlive.com/

xFormula（mac）：https://apps.apple.com/cn/app/id1477136751

LaTeX表格代码生成器：https://www.tablesgenerator.com/

网页版LaTeX：https://www.overleaf.com/

## TODO List

- [x] Title Page
- [x] Frame title 和 Frame subtitle
- [x] 背景图
- [x] Footline
- [x] Block
- [ ] Code Space
- [x] 目录页