.class Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebviewClient;
.super Lmiui/webkit/WebViewClient;
.source "WebviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/fragment/WebviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GreetingWebviewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebviewClient;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    invoke-direct {p0}, Lmiui/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;Lcom/miui/personalassistant/ui/fragment/WebviewFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebviewClient;-><init>(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string/jumbo v0, "WebviewFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GreetingWebviewClient onPageFinished..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lmiui/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebviewClient;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->access$300(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)Lcom/miui/personalassistant/request/core/BaseResult$State;

    move-result-object v0

    sget-object v1, Lcom/miui/personalassistant/request/core/BaseResult$State;->OK:Lcom/miui/personalassistant/request/core/BaseResult$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebviewClient;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebviewClient;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->access$300(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)Lcom/miui/personalassistant/request/core/BaseResult$State;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->onError(ZLcom/miui/personalassistant/request/core/BaseResult$State;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebviewClient;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->access$400(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebviewClient;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->onStopLoading(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebviewClient;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebviewClient;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->access$400(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lmiui/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lmiui/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebviewClient;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    sget-object v1, Lcom/miui/personalassistant/request/core/BaseResult$State;->SERVICE_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->access$302(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;Lcom/miui/personalassistant/request/core/BaseResult$State;)Lcom/miui/personalassistant/request/core/BaseResult$State;

    :goto_0
    const-string/jumbo v0, "WebviewFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceivedError mLoadState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebviewClient;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->access$300(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)Lcom/miui/personalassistant/request/core/BaseResult$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", failingUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebviewClient;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    sget-object v1, Lcom/miui/personalassistant/request/core/BaseResult$State;->NETWORK_ERROR:Lcom/miui/personalassistant/request/core/BaseResult$State;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->access$302(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;Lcom/miui/personalassistant/request/core/BaseResult$State;)Lcom/miui/personalassistant/request/core/BaseResult$State;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebviewClient;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    invoke-static {v0, p4}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->access$502(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "WebviewFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GreetingWebviewClient shouldOverrideUrlLoading..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "huputiyu://soccerleagues/soccer/news/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "card_button_click_worldcup_football_download_hupu"

    invoke-static {v1}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.hupu.games"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/Util;->openInMarket(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebviewClient;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_0
    return v4

    :cond_0
    :try_start_0
    const-string/jumbo v1, "WebviewFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldOverrideUrlLoading..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WebviewFragment"

    const-string/jumbo v2, "Exception "

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
