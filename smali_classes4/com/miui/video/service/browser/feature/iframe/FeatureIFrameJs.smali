.class public Lcom/miui/video/service/browser/feature/iframe/FeatureIFrameJs;
.super Lcom/miui/video/common/browser/feature/base/FeatureBase;
.source "FeatureIFrameJs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    new-instance v0, Lcom/miui/video/service/browser/feature/iframe/FeatureIFrameJs$1;

    invoke-direct {v0, p0}, Lcom/miui/video/service/browser/feature/iframe/FeatureIFrameJs$1;-><init>(Lcom/miui/video/service/browser/feature/iframe/FeatureIFrameJs;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/service/browser/feature/iframe/FeatureIFrameJs;->setExtensionWebViewClient(Lcom/miui/video/common/browser/extension/ExWebViewClient;)V

    invoke-super {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->init()V

    return-void
.end method

.method public unInit()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->unInit()V

    return-void
.end method
