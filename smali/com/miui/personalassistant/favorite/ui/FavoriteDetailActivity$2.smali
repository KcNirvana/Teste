.class Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;
.super Landroid/os/AsyncTask;
.source "FavoriteDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->loadWebContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$500(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getBody()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$600(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "<!DOCTYPE html>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v7, v2

    :goto_0
    return-object v7

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v3}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getAppName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v4}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getSource()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "key_font_size_selected"

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "key_font_bg_selected"

    const-string/jumbo v8, "white"

    invoke-static {v0, v6, v8}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/miui/personalassistant/favorite/util/BodyDecorator;->decorate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/util/Network;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$700(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$800(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$700(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-virtual {v2}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b01cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$900(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$2;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$800(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;

    move-result-object v0

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/personalassistant/favorite/ui/widget/FavWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
