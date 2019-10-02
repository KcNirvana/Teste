.class Lcom/miui/video/service/browser/feature/page/FeatureControllJs$1;
.super Lcom/miui/video/common/browser/extension/ExWebViewBaseUIEvent;
.source "FeatureControllJs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/browser/feature/page/FeatureControllJs;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/browser/feature/page/FeatureControllJs;


# direct methods
.method constructor <init>(Lcom/miui/video/service/browser/feature/page/FeatureControllJs;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/browser/feature/page/FeatureControllJs$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureControllJs;

    invoke-direct {p0}, Lcom/miui/video/common/browser/extension/ExWebViewBaseUIEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    sget-object v0, Lcom/miui/video/service/browser/feature/page/FeatureControllJs;->TAG:Ljava/lang/String;

    const-string v1, "setExtensionWebViewBaseUIEvent   onPause"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/page/FeatureControllJs$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureControllJs;

    invoke-virtual {v0}, Lcom/miui/video/service/browser/feature/page/FeatureControllJs;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->pauseTimers()V

    invoke-super {p0}, Lcom/miui/video/common/browser/extension/ExWebViewBaseUIEvent;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    sget-object v0, Lcom/miui/video/service/browser/feature/page/FeatureControllJs;->TAG:Ljava/lang/String;

    const-string v1, "setExtensionWebViewBaseUIEvent   onResume"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/service/browser/feature/page/FeatureControllJs$1;->this$0:Lcom/miui/video/service/browser/feature/page/FeatureControllJs;

    invoke-virtual {v0}, Lcom/miui/video/service/browser/feature/page/FeatureControllJs;->getWebView()Lcom/miui/video/common/browser/foundation/WebViewEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/browser/foundation/WebViewEx;->resumeTimers()V

    invoke-super {p0}, Lcom/miui/video/common/browser/extension/ExWebViewBaseUIEvent;->onResume()V

    return-void
.end method
