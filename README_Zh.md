# threejs

Three.js是一个尽可能简化在网页端获取3D内容的库, 这个仓库是在moonbit的移植
目前还处于开发状态  

> 部分代码移植自rabbit-tea

# 开始

复制本仓库中的`index.html`到您的根目录即可, 或是下面的部分进行修改
```html
<script  type="importmap">{
	"imports": {
		"three": "https://threejs.org/build/three.module.js",
        "game": "替换为您moonbit生成的js文件",
        ....
        }
    }
</script>
```

> 在importmap中, 存在一个`three/addons/`, 这是用于添加附加组件的, 在不搭配其他js-ffi库的情况下您需要手动导入附加组件, index.html中已经给了一个例子  
> 如果您需要添加其他组件, 请先查阅本库是否有实现, 如果有则严格按照three.js的命名模仿给出的例子进行添加
