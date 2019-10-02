.class Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1$1;
.super Lcom/miui/video/common/browser/extension/ExWebViewClient;
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

    iput-object p1, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1$1;->this$1:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;

    invoke-direct {p0}, Lcom/miui/video/common/browser/extension/ExWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/video/common/browser/extension/ExWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1$1;->this$1:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;

    iget-object p2, p2, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;->this$0:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;

    invoke-static {p2}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->access$000(Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1$1;->this$1:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;

    iget-object p2, p2, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;->this$0:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;

    invoke-static {p2}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->access$000(Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1$1;->this$1:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;

    iget-object v0, v0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;->this$0:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;

    invoke-static {v0}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->access$100(Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading :   url == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gmv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mimarket"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1$1;->this$1:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;

    iget-object v0, v0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;->this$0:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;

    invoke-static {v0, p2}, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;->access$200(Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;Ljava/lang/String;)V

    return v1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1$1;->this$1:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;

    iget-object v3, v0, Lcom/miui/video/service/browser/activity/SimpleWebViewActivity$1;->this$0:Lcom/miui/video/service/browser/activity/SimpleWebViewActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/miui/video/common/browser/extension/ExWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
