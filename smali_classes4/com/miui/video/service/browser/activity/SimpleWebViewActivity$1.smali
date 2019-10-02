.class Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;
.super Lcom/miui/video/common/browser/feature/base/FeatureBase;
.source "SimpleWebViewActivity.java"


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


# direct methods
.method constructor <init>(Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;->this$0:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;

    invoke-direct {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    new-instance v0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1$1;

    invoke-direct {v0, p0}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1$1;-><init>(Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;->setExtensionWebViewClient(Lcom/miui/video/common/browser/extension/ExWebViewClient;)V

    new-instance v0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1$2;

    invoke-direct {v0, p0}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1$2;-><init>(Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;)V

    invoke-virtual {p0, v0}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;->setExtensionWebChromeClient(Lcom/miui/video/common/browser/extension/ExWebChromeClient;)V

    return-void
.end method
