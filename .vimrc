"==========================================================================u"---------------------------------------------------------------------------

"基本设置

"---------------------------------------------------------------------------

set lines=80				 "初始行数

"set columns = 24			 "初始列数

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"防止乱码

if has("win32")
	if has("gui")
		set encoding=utf-8
		lang messages zh_CN.UTF-8
		set guifont=Consolas:h10
		set guifontwide=YaHei_Mono:h10
	endif
else
	set guifont=Consolas
	set guifontwide=微软雅黑
	"set guifontwide=YaHei\ Consolas\ Hybrid:h10
endif
							"设置字体、字体名称、字号
set t_Co=256				"256色方案

colo Sirius					"配色方案

set nocompatible			"关闭兼容模式

set history=1000 			"记录历史的行数

set wrap 					"自动换行

set linebreak				"整词换行

"当vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声
"set vb t_vb=

"set list					"显示制表符

"set listchars = tab:>-,trail:- "将制表符显示为'>---',将行尾空格显示为'-'

set autochdir               "自动设置目录为正在编辑的文件所在的目录

"set scrolloff=5

"修改一个文件后，自动进行备份，备份的文件名为原文件名加“~“后缀
"if has(“vms”)
"set nobackup
"else
" set backup
"endif

"---------------------------------------------------------------------------

"查找／替换相关的设置

"---------------------------------------------------------------------------

"set hlsearch				"匹配高亮

"查询时非常方便，如要查找book单词，当输入到/b时，会自动找到第一
"个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的单词，依
"次类推，进行查找时，使用此设置会快速找到答案，当你找要匹配的单词
"时，别忘记回车

set incsearch

"set gdefault				"替换时所有的行内匹配都被替换，而不是只有第一个

"---------------------------------------------------------------------------

"状态相关设置

"---------------------------------------------------------------------------

set ruler					"在编辑过程中，在右下角显示光标位置的状态行

set showcmd					"在下方显示命令计数

set number					"显示行号

"set guioptions-=T			"去除vim的GUI版本中的toolbar

"---------------------------------------------------------------------------

"编程相关设置

"---------------------------------------------------------------------------

filetype plugin indent on 	"检测文件的类型 使用插件 缩进

syntax on 					"语法高亮度显示

set autoindent				"自动缩进

set cindent					"c语言方式缩进

set smartindent				"智能缩进

set tabstop=4				"tab长度

set shiftwidth=4			"换行时行间交错使用长度

set showmatch				"插入括号时短暂的跳转到匹配的对应括号

"set matchtime=5			"短暂跳转到匹配括号的时间


"---------------------------------------------------------------------------

" 代码折叠

"---------------------------------------------------------------------------

"set foldmethod=marker

set foldmethod=indent

"set foldmethod=syntax

set foldlevel=100       " Don't autofold anything (but I can still fold manually)

"set foldopen-=search   " don't open folds when you search into them

"set foldopen-=undo     " don't open folds when you undo stuff

"set foldcolumn=4

"===========================================================================




"###########################################################################

"插件设置 

"###########################################################################

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

"tags

set tags=/home/program/tags	"加载ctag，每次更新需ctags -R 刷新

"支持结构与类成员的详细参数：ctags -R -I --c++-kinds=+p --fields=+iaS --extra=+q

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

"---------------------------------------------------------------------------

"TagList :Tlist

"---------------------------------------------------------------------------

":help taglist.txt  启动命令Tlist

let Tlist_Show_One_File=1		"只显示当前buffer内容

let Tlist_Exit_OnlyWindow=1		"在只有taglist的时候关闭vim

":helptags  ~/.vim/doc

"---------------------------------------------------------------------------

"netrw 文件浏览器	:e <PATH>

"---------------------------------------------------------------------------

"在打开的界面上可以用下面的一些命令来进行常用的目录和文件操作:

"<F1> 	显示帮助

"<cr> 	如果光标下是目录, 则进入该目录; 如果光标下文件, 则打开该文件

"-		返回上级目录

"c		切换vim 当前工作目录正在浏览的目录

"d		创建目录

"D		删除目录或文件

"i		切换显示方式

"R		文件或目录重命名

"s		选择排序方式

"x		定制浏览方式, 使用你指定的程序打开该文件



"---------------------------------------------------------------------------

"WinManager :WMToogle

"---------------------------------------------------------------------------

":help winmanager 

let g:winManagerWindowLayout='FileExplorer|TagList'

"WinManager整合netrew与taglist

nmap wm :WMToggle<cr>		

"映射普通模式下wm启动 


"---------------------------------------------------------------------------

"MiniBufExplorer

"---------------------------------------------------------------------------

"操作

"<Tab> 		向前循环切换到每个buffer名上

"<S-Tab> 	向后循环切换到每个buffer名上

"<Enter> 	在打开光标所在的buffer

"d 			删除光标所在的buffer

"以下的两个功能需要在~/.vimrc中增加:

"let g:miniBufExplMapCTabSwitchBufs = 1

"<C-Tab> 	向前循环切换到每个buffer上,并在当前窗口打开

"<C-S-Tab> 	向后循环切换到每个buffer上,并在当前窗口打开

"如果在~/.vimrc中设置了下面这句:

let g:miniBufExplMapWindowNavVim = 1

"则可以用<C-h,j,k,l>切换到上下左右的窗口中去,就像:

"C-w,h j k l    向"左,下,上,右"切换窗口.

"在~/.vimrc中设置:

"let g:miniBufExplMapWindowNavArrows = 1

"是用<C-箭头键>切换到上下左右窗口中去


"---------------------------------------------------------------------------

"自动补全 OmniCppComplete  或者尝试下clang_complete??

"---------------------------------------------------------------------------

"生成专门的c++tags

"生成tags：ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ cpp_src  或者 参照tags项

"set tags+=~/.vim/tags/cpptags

let OmniCpp_NamespaceSearch = 1

let OmniCpp_GlobalScopeSearch = 1

let OmniCpp_ShowAccess = 1

let OmniCpp_ShowPrototypeInAbbr = 1 	"显示函数参数列表

let OmniCpp_MayCompleteDot = 1   		"输入.后自动补全

let OmniCpp_MayCompleteArrow = 1 		"输入->后自动补全

let OmniCpp_MayCompleteScope = 1 		"输入::后自动补全

let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]


"---------------------------------------------------------------------------

"clang-complete

"---------------------------------------------------------------------------

"let g:clang_snippets=1					"补全后的参数补全			

"let g:clang_snippets_engine='snipmate'	"补全引擎

"let g:clang_hl_errors = 1				"高亮错误

"let g:clang_complete_copen = 0			"出错时打开quickfix窗口

"let g:clang_periodic_quickfix = 1		"更新quickfix窗口

"let g:clang_user_options='-I/usr/include/qt4/Qtcore -I/usr/include/qt4/QtGui -I/usr/include/qt4'				"添加额外库

"---------------------------------------------------------------------------

"补全通用设置

"---------------------------------------------------------------------------

au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

"自动关闭补全窗口

set completeopt=menuone,menu,longest	"无预览、弹出菜单、单个同样弹出

"补全弹出框配色

highlight Pmenu    guibg=khaki guifg=black

highlight PmenuSel guibg=skyblue guifg=orangered

"Pmenu 是所有项的配色，PmenuSel 是选中项的配色，guibg 和 guifg 分别对应背景色和前景色。khaki一种浅黄色.skyblu,orangered

"---------------------------------------------------------------------------

"autotag 自动更新tag

"---------------------------------------------------------------------------

"source autotag

"source ~/.vim/plugin/autotag.vim 

"为使autotag出的tags可用于结构与类成员的补全需对

"cmd = "%s -f %s -a " % (self.ctags_cmd, self.tags_file) 与

"cmd = "%s -a " % (self.ctags_cmd,)进行修改。（参照tags项）

"修改成下面

"cmd = "%s -R --c++-kinds=+p --fields=+iaS --extra=+q -f %s -a " % (self.ctags_cmd, self.tags_file)

"cmd = "%s -R --c++-kinds=+p --fields=+iaS --extra=+q -a " % (self.ctags_cmd,)

"---------------------------------------------------------------------------

"snipMate 片段补全

"---------------------------------------------------------------------------

"详细简写在~/.vim/snippets

"###########################################################################

"##############################  END  ######################################

"###########################################################################
