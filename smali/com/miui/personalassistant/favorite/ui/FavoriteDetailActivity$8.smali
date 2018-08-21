.class Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;
.super Landroid/os/AsyncTask;
.source "FavoriteDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->reqBodyFromServer()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

.field final synthetic val$componentName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    iput-object p2, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;->val$componentName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    new-instance v2, Lcom/miui/personalassistant/favorite/request/HttpRequest;

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-direct {v2, v4}, Lcom/miui/personalassistant/favorite/request/HttpRequest;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v4}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$700(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;->val$componentName:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v6}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getTitle()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;->val$componentName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/miui/personalassistant/favorite/request/HttpRequest;->reqParseServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v4}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v4

    const-string/jumbo v5, "body"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setBody(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v4}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v4

    const-string/jumbo v5, "summary"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setSummary(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v4}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setPtime(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "expireSeconds"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoritePrefs;->setExpireSeconds(Landroid/content/Context;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v4}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setReaded(I)V

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v4}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v5}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getThumbnails()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/personalassistant/favorite/util/FavUtil;->decodeURLArr([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setThumbnails([Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v4}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$100(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity$8;->this$0:Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;

    invoke-static {v5}, Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;->access$000(Lcom/miui/personalassistant/favorite/ui/FavoriteDetailActivity;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->updateRecord(Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V

    const/4 v4, 0x0

    return-object v4

    :catch_0
    move-exception v0

    const-string/jumbo v4, "FavoriteDetailActivity"

    const-string/jumbo v5, "JSONException"

    invoke-static {v4, v5, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
