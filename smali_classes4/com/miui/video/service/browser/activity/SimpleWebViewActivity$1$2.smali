.class Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1$2;
.super Lcom/miui/video/common/browser/extension/ExWebChromeClient;
.source "SimpleWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;


# direct methods
.method constructor <init>(Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1$2;->this$1:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;

    invoke-direct {p0}, Lcom/miui/video/common/browser/extension/ExWebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/video/common/browser/extension/ExWebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1$2;->this$1:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;

    iget-object p1, p1, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;->this$0:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;

    invoke-static {p1}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->access$000(Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1$2;->this$1:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;

    iget-object p1, p1, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;->this$0:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;

    invoke-static {p1}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->access$000(Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
