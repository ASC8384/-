# Linux

[TOC]

记录一下我的 Linux 使用经历。

## 相遇过程

### 初中

大概初二初三的时候，第一次接触了 Linux。当时用的是虚拟机装的 NOI Linux，感觉贼难用。平时用 DevCpp 就可以一键编译运行，但是放到 Linux 里头还得自己敲命令行，虽然很酷，但是粗略地体验了一下，就再也没开过了。

之后装了 ubuntu，照着网上的教程美化了大半天。当时的感觉，也就那样吧。尝了尝鲜，束之高阁。

至于 Vim，体验了一下，直接劝退。

### 高中

一位学长装了深度系统，机缘巧合下，我第一次使用了全盘只有 Linux 的计算机。感觉有点惊艳，比 win7 高到不知哪里去了。但是很快，在一次突然断电后，它再也开不了机了。这给了我一种感觉，Linux 很脆弱。

期间，我第一次阅读了系统介绍 Linux 的书，《Linux就是这个范儿》。狼吞虎咽啃完了大本书后，我对 Linux 有了一种全新的看法。会了一点 Vim 的使用，懂了一点 Linux 的哲学。

### 大学

到了大学，二话不说就给电脑装了双系统。

在 B 站上发现了个大佬[TheCW](https://space.bilibili.com/13081489)，看完了他的绝大多数视频。很是兴奋，我与大佬的很多观念都不约而合。在他的影响下，我将窗口管理器换成了 dwm，终端模拟器换成了 st，编辑器从 Vim 换成了 NeoVim，文件管理器从默认换成了 ranger。~~不过系统还是ubuntu（逃~~

Linux 真的与编程是绝配。Mac 没用过（~~太贵没钱购入~~）不予置评，Windows 配环境那个的难配，出了问题还经常找不到是啥问题。

就是国内部分软件很难适配，懂得都懂。

## 软件分享

Linux 下的软件我其实也没啥好分享的，毕竟自己比较菜，用的软件什么的也很少。

### 编辑器 NeoVim

之前在 Windows 下艰难配过，后来还是放弃了。

到了 Linux 下，终于可以认真地配置一波了。

谁用谁知道，编辑器之神不是吹的。

详情请见我 Github。

### 输入法 IBus-Rime

就是 Rime 啦。

在 Windows 下配好了，Linux 开箱即用😁。

详情依旧见我 Github。

### 浏览器 Firefox

我从初中开始用 Firefox，有大一部分影响就是 ubuntu 的默认浏览器是 FF。然后就喜欢上了这只小火狐。

当时丰富的插件，高度的定义，深深地打动了我。

哪怕高中用了一段时间 Chrome，还是因为 FF 的开放、自由回来了。

不过 FF 的那次大改，真的差点要弃用。用了几个月的长期支持版本后，还是继续用上了新版本。唉，难以描述的感觉。希望 FF 不忘初心，奋勇直前吧，作为最后一款自由的浏览器。

### suckless 三件套

在大佬的影响下，用了一段时间，然后就再也离不开了。

谁用谁知道，是真的轻。

### Shell

Linux 的 Shell 比 Windows（主要是生态问题）高到不知哪里去了。Oh My Zsh 和它的主题 powerlevel10k 是相当的好看耐用。不过该主题在 NVIM 下的 Floaterm 里有字体相关的bug。

### 磁盘分区 gpartedbin

gpartedbin 真的适合在 Linux 下进行分区管理。

因为对硬盘的需求是无限的，故对双系统里的 Ubuntu 进行扩容。先在 Windows 下用 DiskGenius 进行压缩卷操作，如果动了系统盘还会自动进入 DiskGenius PE 系统进行分区。可是，如果直接在 DiskGenius 里对 Linux 文件分区进行操作，则会出现诸如`bitmap中有标记为已使用的簇`、`文件使用的簇被标记为空闲或与其他文件有交叉`等错误。最后还是进入 Linux 启动盘里，用 gpartedbin 进行扩容操作。

### Other

Linux 下好用的软件其实有一大堆，但感觉都像常规操作。就不多提了罢。

## 技巧

### 类 emacs 键位

参考[一些由 shell 提供的键盘操作技巧](https://zhuanlan.zhihu.com/p/61032125)一文。

仅供参考。

#### 移动光标

* ctrl + a：移动光标到行首
* ctrl + e：移动光标到行尾
* ctrl + f：光标前移一个字符，和右箭头作用一样
* ctrl + b：光标后移一个字符，和左箭头作用一样
* alt + f：光标前移一个字
* alt + b：光标后移一个字
* ctrl + l：清空屏幕，移动光标到左上角，clear 命令完成同样的工作

#### 命令行编辑

* ctrl + d：删除光标位置的字符
* ctrl + t：光标位置的字符和光标前面的字符互换位置
* alt + t：光标位置的字和其前面的字互换位置
* alt + l：把从光标位置到字尾的字符转换成小写字母
* alt + u：把从光标位置到字尾的字符转换成大写字母

#### 复制粘贴

* ctrl + k：剪切从光标位置到行尾的文本
* ctrl + u：剪切从光标位置到行首的文本
* alt + d：剪切从光标位置到词尾的文本
* alt + backspace：剪切从光标位置到词头的文本，如果光标在一个单词的开头，剪切前一个单词
* ctrl + y：把剪切环中的文本粘贴到光标位置

#### 历史命令

* ctrl + r：先按这个快捷键，然后提示符就变了，这时候输入关键字，shell 就会到历史命令中找匹配的，匹配到就实时显示出来，如果是我们想要执行的，直接回车执行即可
* ctrl + j：如果我们想要编辑一下再执行，就可以按 ctrl + j
* ctrl + p：移动到上一个历史条目，类似于上箭头按键
* ctrl + n：移动到下一个历史条目，类似于下箭头按键
* alt + <：移动到历史列表开头
* alt + >：移动到历史列表结尾，即当前命令行
* alt + p：与 ctrl + r 功能类似，只是 alt + p 不会实时的回显匹配的命令，需要按回车才显示
* ctrl + o：这个命令要单独说一下，非常有用，尤其是在要重复执行一系列命令的时候，比如要一次执行历史列表中的某 5 条命令，我们可以先通过上下键或者 ctrl + p 和 ctrl + n 移动到第一条要执行的，然后按 ctrl + o 执行第一条，再按 ctrl + o ，shell 就会帮我们执行第二条，以此类推。