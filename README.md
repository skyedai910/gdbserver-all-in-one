# gdbserver-all-in-one

## What

在做 IOT 设备安全研究时，需要各种架构的 gdbserver 辅助调试。Github 等上已有项目中编译的 gdbserver 可用性各不一样，也没有项目编译全部架构 gdbserver ，每次用到需要重新找。为了方便，借助 github action 编译全架构 gdbserver 。

## Download

前往 [releases](https://github.com/skyedai910/gdbserver-all-in-one/releases) 下载，文件命名规则：

```bash
${TARGETARCH}-linux-${GDB_VERSION}-gdbserver.tar.gz
```

## More

https://www.mrskye.cn/archives/a61aad59/