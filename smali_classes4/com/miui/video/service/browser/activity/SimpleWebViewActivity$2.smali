.class Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$2;
.super Ljava/lang/Object;
.source "SimpleWebViewActivity.java"

# interfaces
.implements Lcom/miui/video/base/account/VideoMiAccountManager$ServiceTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;

.field final synthetic val$mWebView:Lcom/miui/video/service/browser/widget/SimpleWebViewWrapper;


# direct methods
.method constructor <init>(Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;Lcom/miui/video/service/browser/widget/SimpleWebViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$2;->this$0:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;

    iput-object p2, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$2;->val$mWebView:Lcom/miui/video/service/browser/widget/SimpleWebViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$2;->this$0:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;

    iget-object v0, v0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->controller:Lcom/miui/video/common/browser/foundation/WebViewController;

    new-instance v1, Lcom/miui/video/service/browser/feature/info/FeatureAppInfo;

    invoke-direct {v1, p1}, Lcom/miui/video/service/browser/feature/info/FeatureAppInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/common/browser/foundation/WebViewController;->addFeature(Lcom/miui/video/common/browser/feature/base/FeatureBase;)V

    iget-object p1, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$2;->val$mWebView:Lcom/miui/video/service/browser/widget/SimpleWebViewWrapper;

    invoke-virtual {p1}, Lcom/miui/video/service/browser/widget/SimpleWebViewWrapper;->getWebViewController()Lcom/miui/video/common/browser/foundation/WebViewController;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$2;->this$0:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;

    iget-object v0, v0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/browser/foundation/WebViewController;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
