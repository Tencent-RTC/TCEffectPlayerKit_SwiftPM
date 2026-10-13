# TCEffectPlayerKit

TCEffectPlayerKit 是 TUILiveKit 的特效播放插件，基于 TCEffectPlayer 播放礼物特效等动画，
以组件服务的方式挂到直播场景中，可按需引入。

## 环境要求

- iOS 13.0 及以上
- Xcode 15 及以上

## 集成（SwiftPM）

1. 在 Xcode 中选择 **File → Add Package Dependencies**
2. 填入仓库地址：

```
https://github.com/Tencent-RTC/TCEffectPlayerKit_SwiftPM.git
```

3. 选择需要的版本（建议 `Up to Next Major Version`）
4. 在 Target 的 **Frameworks, Libraries, and Embedded Content** 中添加 product `TCEffectPlayerKit`

也可以直接写在 `Package.swift` 里：

```swift
dependencies: [
    .package(url: "https://github.com/Tencent-RTC/TCEffectPlayerKit_SwiftPM.git", from: "3.1.0")
],
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(name: "TCEffectPlayerKit", package: "TCEffectPlayerKit_SwiftPM")
        ]
    )
]
```

使用时：

```swift
import TCEffectPlayerKit
```
