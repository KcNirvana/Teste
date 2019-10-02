.class public Lcom/miui/video/service/browser/feature/js/FeatureICommonJs;
.super Lcom/miui/video/common/browser/feature/base/FeatureBase;
.source "FeatureICommonJs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/service/browser/feature/js/FeatureICommonJs;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    new-instance v1, Lcom/miui/video/service/browser/feature/js/JsCommon;

    invoke-virtual {p0}, Lcom/miui/video/service/browser/feature/js/FeatureICommonJs;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/miui/video/service/browser/feature/js/JsCommon;-><init>(Lcom/miui/video/common/browser/foundation/WebViewEx;)V

    const-string v2, "appJsBridge"

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/common/browser/foundation/WebViewEx;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->init()V

    return-void
.end method

.method public unInit()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->unInit()V

    return-void
.end method
