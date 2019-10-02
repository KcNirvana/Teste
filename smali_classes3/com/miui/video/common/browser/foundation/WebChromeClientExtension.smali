.class public Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;
.super Landroid/webkit/WebChromeClient;
.source "WebChromeClientExtension.java"


# instance fields
.field private featureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/browser/feature/base/FeatureBase;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "getDefaultVideoPoster"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtensionWithObjectResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "getVideoLoadingProgressView"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtensionWithObjectResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "getVisitedHistory"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onCloseWindow"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onConsoleMessage"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4
    .param p1    # Landroid/webkit/ConsoleMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onConsoleMessage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onCreateWindow"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    const/4 p1, 0x3

    aput-object p4, v2, p1

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 4
    .param p9    # Landroid/webkit/WebStorage$QuotaUpdater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onExceededDatabaseQuota"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v2, p2

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v2, p2

    const/4 p1, 0x5

    aput-object p9, v2, p1

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onGeolocationPermissionsHidePrompt"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onGeolocationPermissionsShowPrompt"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onHideCustomView()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onHideCustomView"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onJsAlert"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onJsBeforeUnload"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onJsConfirm"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onJsPrompt"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    const/4 p1, 0x4

    aput-object p5, v2, p1

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onJsTimeout()Z
    .locals 3

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onJsTimeout"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtensionWithBooleanResult(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onProgressChanged"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 3
    .param p5    # Landroid/webkit/WebStorage$QuotaUpdater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onReachedMaxAppCacheSize"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    aput-object p5, v2, p1

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onReceivedIcon"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onReceivedTitle"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onReceivedTouchIconUrl"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onRequestFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onShowCustomView"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "onShowCustomView"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    const-string p1, "*/*"

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p3

    array-length v0, p3

    if-lez v0, :cond_0

    const/4 p1, 0x0

    aget-object p1, p3, p1

    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2, p1}, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->openFileInput(Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->openFileInput(Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method protected openFileInput(Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/browser/foundation/WebChromeClientExtension;->featureList:Ljava/util/List;

    const-string v1, "openFileInput"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->raiseWebChromeClientExtension(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
