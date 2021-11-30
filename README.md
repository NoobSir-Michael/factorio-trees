# Factorio Trees

This is a collection of Lua scripts that parse Factorio's data files and then use GraphViz to generate trees for recipe and technology dependencies. It does not add woody perennial plants to Factorio, sorry.

![Partial screenshot](https://github.com/ingmar/factorio-trees/blob/master/screenshot.png "Example")


# Prerequisites

* Lua
* GraphViz

## Mac OS X

    brew install lua graphviz

# Run

    git clone https://github.com/ingmar/factorio-trees.git
    cd factorio-trees
    # Check FACTORIO_ROOT in the Makefile
    make
    open *.pdf

#  Michael Edition

EN

1.   Modify the source lua file to meet the structure of current version (1.1.48)
2.   Add csv output for further usage

ZH-CN:

1.   按照 1.1.48 版本的数据结构修改了数据获取函数, 使得其能正常工作于当前环境
2.   增加了CSV文件导出, 可用于其他工具
