.class public Lcom/miui/personalassistant/favorite/service/FavoriteShareService;
.super Landroid/app/IntentService;
.source "FavoriteShareService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/favorite/service/FavoriteShareService$HandleTask;
    }
.end annotation


# static fields
.field private static final ACTION_FAV:Ljava/lang/String; = "action_fav"

.field private static final BUNDLES:Ljava/lang/String; = "bundles"

.field private static final FAV_HACK:Ljava/lang/String; = "favByHack"

.field public static final KEY_SHOPPING:Ljava/lang/String; = "key_shopping"

.field public static final KEY_URL:Ljava/lang/String; = "key_url"

.field private static final MATCH_ACTION:Ljava/lang/String; = "matchAction"

.field public static final MATCH_COMPONENT:Ljava/lang/String; = "matchComponent"

.field private static final MESSAGE_WHAT_NOTIFY:I = 0x2

.field private static final MESSAGE_WHAT_TOAST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FavoriteShareService"

.field private static final TARGET_AUTHOR:Ljava/lang/String; = "targetAuthor"

.field private static final TARGET_DATA:Ljava/lang/String; = "targetData"

.field private static final TARGET_IMAGE:Ljava/lang/String; = "targetImage"

.field private static final TARGET_PRICE:Ljava/lang/String; = "targetPrice"

.field private static final TARGET_TITLE:Ljava/lang/String; = "targetTitle"

.field private static final TARGET_URL:Ljava/lang/String; = "targetUrl"


# instance fields
.field private favByHack:Z

.field private favType:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsShopping:Z

.field private mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

.field private mShoppingDao:Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

.field private mStartMills:J

.field private mTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "FavoriteShareService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "share"

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->favType:Ljava/lang/String;

    new-instance v0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService$1;-><init>(Lcom/miui/personalassistant/favorite/service/FavoriteShareService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mTotalCount:I

    new-instance v0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    new-instance v0, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mShoppingDao:Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/favorite/service/FavoriteShareService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mIsShopping:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/favorite/service/FavoriteShareService;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mStartMills:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/favorite/service/FavoriteShareService;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->handleResult(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private addRecord(Lcom/miui/personalassistant/favorite/module/FavBase;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-class v2, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mIsShopping:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mShoppingDao:Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    check-cast p1, Lcom/miui/personalassistant/shopping/bean/Shopping;

    invoke-virtual {v1, p1}, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;->addRecord(Lcom/miui/personalassistant/shopping/bean/Shopping;)Z

    move-result v0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->favType:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/personalassistant/favorite/util/FavUtil;->analysisAdd(Ljava/lang/String;)V

    :cond_0
    return v0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    check-cast p1, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    iget-boolean v1, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->favByHack:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, p1, v1}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->addRecord(Lcom/miui/personalassistant/favorite/module/FavoriteRecord;Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private analyPackageSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "packageName"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/miui/personalassistant/util/Util;->getPackageFromComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "Shopping"

    const-string/jumbo v3, "shopping_app_total"

    invoke-static {v2, v3, v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private analysisReturn()V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mStartMills:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Favorite"

    const-string/jumbo v2, "favorite_request_time"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private bindNativeData(Landroid/os/Bundle;Lcom/miui/personalassistant/favorite/module/FavBase;)Lcom/miui/personalassistant/favorite/module/FavBase;
    .locals 10

    const/4 v9, 0x0

    if-eqz p1, :cond_6

    const-string/jumbo v7, "hack"

    iput-object v7, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->favType:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/personalassistant/favorite/module/FavBase;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "targetUrl"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "targetUrl"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p2, v6}, Lcom/miui/personalassistant/favorite/module/FavBase;->setUrl(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/miui/personalassistant/favorite/module/FavBase;->getOriginalUri()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "targetData"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "targetData"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p2, v2}, Lcom/miui/personalassistant/favorite/module/FavBase;->setOriginalUri(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v7, "targetTitle"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "targetTitle"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p2, v5}, Lcom/miui/personalassistant/favorite/module/FavBase;->setTitle(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lcom/miui/personalassistant/favorite/module/FavBase;->getThumbnails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    array-length v7, v4

    if-lez v7, :cond_3

    aget-object v7, v4, v9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const-string/jumbo v7, "targetImage"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "targetImage"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    aput-object v3, v7, v9

    invoke-virtual {p2, v7}, Lcom/miui/personalassistant/favorite/module/FavBase;->setThumbnails([Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v7, "matchAction"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/miui/personalassistant/favorite/module/FavBase;->setIntentAction(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/personalassistant/favorite/module/FavBase;->getComponentName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v7, "FavoriteShareService"

    const-string/jumbo v8, "server componentName fail"

    invoke-static {v7, v8}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "matchComponent"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/personalassistant/favorite/module/FavBase;->setComponentName(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, Lcom/miui/personalassistant/favorite/module/FavBase;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    array-length v7, v1

    if-lez v7, :cond_6

    aget-object v7, v1, v9

    invoke-static {p0, v7}, Lcom/miui/personalassistant/util/Util;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/miui/personalassistant/favorite/module/FavBase;->setAppName(Ljava/lang/String;)V

    :cond_6
    return-object p2
.end method

.method private constructFavorite(Landroid/os/Bundle;Ljava/lang/String;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;
    .locals 4

    invoke-static {p2}, Lcom/miui/personalassistant/favorite/provider/ValueTransUtil;->parseFavoriteRecord(Ljava/lang/String;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "FavoriteShareService"

    const-string/jumbo v2, "constructRecord parse fail"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    invoke-direct {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;-><init>()V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->setCtime(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->bindNativeData(Landroid/os/Bundle;Lcom/miui/personalassistant/favorite/module/FavBase;)Lcom/miui/personalassistant/favorite/module/FavBase;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    return-object v1
.end method

.method private constructShopping(Landroid/os/Bundle;Ljava/lang/String;)Lcom/miui/personalassistant/shopping/bean/Shopping;
    .locals 3

    invoke-static {p2}, Lcom/miui/personalassistant/shopping/util/ValueUtil;->parseRecord(Ljava/lang/String;)Lcom/miui/personalassistant/shopping/bean/Shopping;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "FavoriteShareService"

    const-string/jumbo v2, "shopping construct parse fail"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/personalassistant/shopping/bean/Shopping;

    invoke-direct {v0}, Lcom/miui/personalassistant/shopping/bean/Shopping;-><init>()V

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->bindNativeData(Landroid/os/Bundle;Lcom/miui/personalassistant/favorite/module/FavBase;)Lcom/miui/personalassistant/favorite/module/FavBase;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/shopping/bean/Shopping;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const-string/jumbo v1, "targetPrice"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "targetPrice"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/shopping/bean/Shopping;->setPrice(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private handleFav(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "targetUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "targetData"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "targetUrl"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->handleService(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private handleNewFav(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v4, "action_fav"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v5, "targetUrl"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->handleService(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "FavoriteShareService"

    const-string/jumbo v5, "delete"

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mIsShopping:Z

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v5, "targetUrl"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mShoppingDao:Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    invoke-virtual {v5, v3}, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;->deleteRecordByUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iget-object v5, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    const-string/jumbo v6, "targetUrl"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->getRecordByUrl(Ljava/lang/String;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    invoke-virtual {v4, v2}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->deleteRecordList(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method private handleReq(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v1, Lcom/miui/personalassistant/favorite/request/HttpRequest;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/favorite/request/HttpRequest;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/miui/personalassistant/favorite/service/FavoriteShareService$HandleTask;

    invoke-direct {v3, p0, p1}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService$HandleTask;-><init>(Lcom/miui/personalassistant/favorite/service/FavoriteShareService;Landroid/os/Bundle;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v3, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mStartMills:J

    iget-boolean v5, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mIsShopping:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "FavoriteShareService"

    const-string/jumbo v6, "shopping fav"

    invoke-static {v5, v6}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "0"

    invoke-virtual {v1, p2, p3, v5}, Lcom/miui/personalassistant/favorite/request/HttpRequest;->reqShoppingParseServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->analysisReturn()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "FavoriteShareService"

    const-string/jumbo v6, "server response empty"

    invoke-static {v5, v6}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string/jumbo v5, "FavoriteShareService"

    const-string/jumbo v6, "--end--"

    invoke-static {v5, v6}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/miui/personalassistant/favorite/request/HttpRequest;->reqParseServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "FavoriteShareService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "server_result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, v3, Lcom/miui/personalassistant/favorite/service/FavoriteShareService$HandleTask;->isNotified:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mIsShopping:Z

    if-eqz v5, :cond_3

    invoke-direct {p0, p1, v2}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->constructShopping(Landroid/os/Bundle;Ljava/lang/String;)Lcom/miui/personalassistant/shopping/bean/Shopping;

    move-result-object v0

    iget-object v5, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mShoppingDao:Lcom/miui/personalassistant/shopping/provider/ShoppingDao;

    invoke-virtual {v0}, Lcom/miui/personalassistant/shopping/bean/Shopping;->getOriginUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/miui/personalassistant/shopping/provider/ShoppingDao;->updateRecordByUrl(Ljava/lang/String;Lcom/miui/personalassistant/shopping/bean/Shopping;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->constructFavorite(Landroid/os/Bundle;Ljava/lang/String;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v0

    iget-object v5, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/module/FavoriteRecord;->getOriginUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->updateRecordByUrl(Ljava/lang/String;Lcom/miui/personalassistant/favorite/module/FavoriteRecord;)V

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/miui/personalassistant/favorite/service/FavoriteShareService$HandleTask;->isNotified:Z

    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService$HandleTask;->cancel()Z

    const-string/jumbo v5, "FavoriteShareService"

    const-string/jumbo v6, "server data handle"

    invoke-static {v5, v6}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->handleResult(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleResult(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    iget-boolean v5, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mIsShopping:Z

    if-eqz v5, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->constructShopping(Landroid/os/Bundle;Ljava/lang/String;)Lcom/miui/personalassistant/shopping/bean/Shopping;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavBase;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v3}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->addRecord(Lcom/miui/personalassistant/favorite/module/FavBase;)Z

    move-result v0

    iget v5, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mTotalCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mTotalCount:I

    const-string/jumbo v5, "FavoriteShareService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendMessage : mTotalCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mTotalCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "--isExist="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    iget v5, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mTotalCount:I

    if-gtz v5, :cond_1

    iget-boolean v5, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mIsShopping:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "key_shopping_notify"

    invoke-static {p0, v5, v8}, Lcom/miui/personalassistant/util/PrefUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavBase;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v5, 0x2

    iput v5, v1, Landroid/os/Message;->what:I

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/miui/personalassistant/favorite/module/FavBase;->getUrl()Ljava/lang/String;

    move-result-object v4

    :cond_0
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v5, 0x0

    iput v5, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mTotalCount:I

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->constructFavorite(Landroid/os/Bundle;Ljava/lang/String;)Lcom/miui/personalassistant/favorite/module/FavoriteRecord;

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "key_fav_notification"

    invoke-static {p0, v5, v8}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1
.end method

.method private handleService(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "matchComponent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "targetTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "targetAuthor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "targetUrl"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "FavoriteShareService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->handleReq(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mIsShopping:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const-string/jumbo v0, "targetSource"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->analyPackageSource(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iput-boolean v3, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->favByHack:Z

    const-string/jumbo v2, "key_shopping"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mIsShopping:Z

    const-string/jumbo v2, "key_url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "key_url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->handleService(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "favByHack"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->favByHack:Z

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->handleFav(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "bundles"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    const-string/jumbo v2, "FavoriteShareService"

    const-string/jumbo v3, "new interface"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v0}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->handleNewFav(Landroid/content/Intent;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->handleFav(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    iget v0, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mTotalCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mTotalCount:I

    const-string/jumbo v0, "FavoriteShareService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTotalCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/personalassistant/favorite/service/FavoriteShareService;->mTotalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
