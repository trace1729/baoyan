#!/bin/bash

# List of URLs
urls=(
    "https://sumsky.top/2021/11/18/baoyan-series-3/"
    "https://zhuanlan.zhihu.com/p/433849235"
    "https://www.cnblogs.com/jacobfun/p/15758050.html"
    "https://zhuanlan.zhihu.com/p/415573882"
    "https://zhuanlan.zhihu.com/p/426136401"
    "https://zhuanlan.zhihu.com/p/470421627"
    "https://mp.weixin.qq.com/s?__biz=MzU2MTcxMzI4NQ==&mid=2247486042&idx=1&sn=9079d5068dbbf15f75fc7819cb4e78b7&chksm=fc75d3b0cb025aa682e459531205965e18cd7c180cccfb12ddfd30046f54dbc9adf77b2b3b1b&mpshare=1&scene=22&srcid=0314FIJCHvhVJqbwti2CVvmu&sharer_sharetime=1647229808862&sharer_shareid=dd1ce66b3ff97b74ecc83dbb60e9b8d3%23rd"
    "https://zhuanlan.zhihu.com/p/267009034"
    "https://www.zhihu.com/column/c_1293286348367900672"
    "https://zhuanlan.zhihu.com/p/260002988"
    "https://blog.csdn.net/qq_43413123/article/details/109094823"
    "https://zhuanlan.zhihu.com/p/266527061"
    "https://lemon-412.github.io/2020/10/05/%E5%A4%8F%E4%BB%A4%E8%90%A5%E9%A2%84%E6%8E%A8%E5%85%8D%E7%BB%8F%E5%8E%86%E5%B0%8F%E7%BB%93/#more"
    "https://zhuanlan.zhihu.com/p/263553192"
    "https://zhuanlan.zhihu.com/p/262066989"
    "https://www.jianshu.com/p/60dabdfe34c6"
    "https://zhuanlan.zhihu.com/p/157633072"
    "https://zhuanlan.zhihu.com/p/266454924"
    "https://www.zhihu.com/question/403688470/answer/1472946787"
    "https://zhuanlan.zhihu.com/p/266329661?utm_source=qq&utm_medium=social&utm_oi=742264367994650624"
    "https://blog.csdn.net/qq_40742077/article/details/109064266"
    "https://mazerunner.gitee.io/2020/09/30/2020%E8%AE%A1%E7%AE%97%E6%9C%BA%E4%BF%9D%E7%A0%94%E5%A4%8F%E4%BB%A4%E8%90%A5-%E5%A4%8F%E5%AD%A3%E8%BF%87%E5%BE%80/"
    "https://polosec.gitee.io/2020/10/12/%E9%9D%A2%E7%BB%8F/"
    "https://zhuanlan.zhihu.com/p/263086696"
    "https://blog.csdn.net/TheTopMing/article/details/109169458"
    "https://blog.csdn.net/qq_40948559/article/details/109231550"
    "https://blog.csdn.net/weixin_43722211/article/details/109035339"
    "https://zhuanlan.zhihu.com/p/265095282"
    "https://blog.csdn.net/weixin_43074474/article/details/109122197"
    "https://www.zhihu.com/question/403757165/answer/1356233760"
    "https://zhuanlan.zhihu.com/p/248489246"
    "https://blog.csdn.net/Annalovecoding/article/details/108896834"
    "https://zhuanlan.zhihu.com/p/266870455"
    "https://zhuanlan.zhihu.com/p/268825353"
    "https://zhuanlan.zhihu.com/p/267499551"
    "https://lfysec.top/2020/10/12/2020CS%E4%BF%9D%E7%A0%94%E7%AC%94%E8%AE%B0/"
    "https://zhuanlan.zhihu.com/p/358182473"
    "https://www.zhihu.com/question/296432111/answer/2276905797"

)

# Iterate over the URLs
for url in "${urls[@]}"; do
  # Encode the URL
  encoded_url=$(echo "$url" | sed 's/\//%2F/g' | sed 's/:/%3A/g')

  # Make the API request and save the Markdown response
	curl -k --retry 3 "https://urltomarkdown.herokuapp.com/?url=$encoded_url" -o "output_${url//[:\/]/_}.md"
  echo "Converted URL: $url"
done
