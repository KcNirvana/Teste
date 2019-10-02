.class Lcom/miui/video/service/browser/feature/page/FeaturePageStatus$1;
.super Lcom/miui/video/common/browser/extension/ExWebViewBaseUIEvent;
.source "FeaturePageStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/browser/feature/page/FeaturePageStatus;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/browser/feature/page/FeaturePageStatus;


# direct methods
.method constructor <init>(Lcom/miui/video/service/browser/feature/page/FeaturePageStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeaturePageStatus$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeaturePageStatus;

    invoke-direct {p0}, Lcom/miui/video/common/browser/extension/ExWebViewBaseUIEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    sget-object v0, Lcom/miui/video/service/browser/feature/page/FeaturePageStatus;->TAG:Ljava/lang/String;

    const-string v1, "setExtensionWebViewBaseUIEvent   onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/miui/video/common/browser/extension/ExWebViewBaseUIEvent;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    sget-object v0, Lcom/miui/video/service/browser/feature/page/FeaturePageStatus;->TAG:Ljava/lang/String;

    const-string v1, "setExtensionWebViewBaseUIEvent   onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/miui/video/common/browser/extension/ExWebViewBaseUIEvent;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 2

    sget-object v0, Lcom/miui/video/service/browser/feature/page/FeaturePageStatus;->TAG:Ljava/lang/String;

    const-string v1, "setExtensionWebViewBaseUIEvent   onPause"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/miui/video/common/browser/extension/ExWebViewBaseUIEvent;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    sget-object v0, Lcom/miui/video/service/browser/feature/page/FeaturePageStatus;->TAG:Ljava/lang/String;

    const-string v1, "setExtensionWebViewBaseUIEvent   onResume"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/page/FeaturePageStatus$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeaturePageStatus;

    invoke-virtual {v0}, Lcom/miui/video/service/browser/feature/page/FeaturePageStatus;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/service/browser/feature/js/JsInterfaceUtils;->loadJsOnPageResumeMethod(Landroid/webkit/WebView;)V

    invoke-super {p0}, Lcom/miui/video/common/browser/extension/ExWebViewBaseUIEvent;->onResume()V

    return-void
.end method
