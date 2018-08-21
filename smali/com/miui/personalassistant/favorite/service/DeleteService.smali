.class public Lcom/miui/personalassistant/favorite/service/DeleteService;
.super Landroid/app/IntentService;
.source "DeleteService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DeleteService"


# instance fields
.field private mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "DeleteService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/service/DeleteService;->mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/miui/personalassistant/favorite/module/DataHolder;->getInstance()Lcom/miui/personalassistant/favorite/module/DataHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/personalassistant/favorite/module/DataHolder;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/service/DeleteService;->mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    invoke-virtual {v2, v0}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->deleteRecordList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "key_all_delete"

    invoke-static {v2, v3, v5}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    const-string/jumbo v2, "DeleteService"

    const-string/jumbo v3, "all delete end"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v2, "DeleteService"

    const-string/jumbo v3, "delete onHandleIntent Exception"

    invoke-static {v2, v3, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "key_all_delete"

    invoke-static {v2, v3, v5}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    const-string/jumbo v2, "DeleteService"

    const-string/jumbo v3, "all delete end"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "key_all_delete"

    invoke-static {v3, v4, v5}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    const-string/jumbo v3, "DeleteService"

    const-string/jumbo v4, "all delete end"

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method
