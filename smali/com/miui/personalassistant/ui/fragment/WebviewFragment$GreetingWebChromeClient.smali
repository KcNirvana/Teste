.class Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/fragment/WebviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GreetingWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebChromeClient;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;Lcom/miui/personalassistant/ui/fragment/WebviewFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebChromeClient;-><init>(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    const-string/jumbo v0, "WebviewFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GreetingWebChromeClient onProgressChanged..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebChromeClient;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebChromeClient;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->getProgress()I

    move-result v0

    sub-int v0, p2, v0

    if-lez v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0x64

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/WebviewFragment$GreetingWebChromeClient;->this$0:Lcom/miui/personalassistant/ui/fragment/WebviewFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/WebviewFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/WebviewFragment;)Lcom/miui/personalassistant/ui/widget/LoadingProgressView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/personalassistant/ui/widget/LoadingProgressView;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "WebviewFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GreetingWebChromeClient shouldOverrideUrlLoading..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    :goto_0
    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WebviewFragment"

    const-string/jumbo v2, "Exception "

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
