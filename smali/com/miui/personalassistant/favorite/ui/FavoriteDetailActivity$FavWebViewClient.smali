.class Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "FavoriteDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;-><init>(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "FavoriteDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageFinished...isFirstLoad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$1400(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v0, p2}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$702(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$1400(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$600(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    const-string/jumbo v2, "key_font_size_selected"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->onFontSizeSelected(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    const-string/jumbo v2, "key_font_bg_selected"

    const-string/jumbo v3, "white"

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$1500(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$1402(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;Z)Z

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    const-string/jumbo v0, "FavoriteDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageStarted..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$900(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;ZLjava/lang/String;)V

    const-string/jumbo v0, "file://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-virtual {v2}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b01c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$900(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "FavoriteDetailActivity"

    const-string/jumbo v1, "onReceivedError main page"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-virtual {v2}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b01c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$900(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;ZLjava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const-string/jumbo v3, "FavoriteDetailActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldOverrideUrlLoading..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v3, "http:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "https:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v3, v1}, Lcom/miui/personalassistant/util/IntentUtil;->canResolveIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$FavWebViewClient;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "FavoriteDetailActivity"

    const-string/jumbo v4, "Exception "

    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
