.class public Lcom/miui/personalassistant/stock/service/StockService;
.super Landroid/app/Service;
.source "StockService.java"


# static fields
.field public static final BATCH_REQUEST_ACTION:Ljava/lang/String; = "com.miui.stock.action.batch_request"

.field public static final KEY_SORT_FROM:Ljava/lang/String; = "key_sort_from"

.field public static final KEY_SORT_TO:Ljava/lang/String; = "key_sort_to"

.field public static final KEY_STOCK_IDS:Ljava/lang/String; = "key_stock_ids"

.field private static final TAG:Ljava/lang/String; = "StockService"

.field public static final UPDATE_CACHE_SORT_ACTION:Ljava/lang/String; = "com.miui.stock.action.update_cache_sort"


# instance fields
.field private mIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/service/StockService;->mIds:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/stock/service/StockService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/service/StockService;->mIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/stock/service/StockService;Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/stock/service/StockService;->inArray(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method private inArray(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v2, -0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private requestServer()V
    .locals 2

    invoke-static {}, Lcom/miui/personalassistant/stock/service/AssistTaskManager;->getInstance()Lcom/miui/personalassistant/stock/service/AssistTaskManager;

    move-result-object v0

    new-instance v1, Lcom/miui/personalassistant/stock/service/StockService$1;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/stock/service/StockService$1;-><init>(Lcom/miui/personalassistant/stock/service/StockService;)V

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/stock/service/AssistTaskManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private declared-synchronized updateStockData(II)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/service/StockService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/service/StockService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockUtils;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getStockInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/service/StockService;->stopSelf()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    if-ltz p1, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_0

    if-le p1, p2, :cond_4

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/stock/model/StockInfo;

    move v1, p1

    :goto_1
    if-le v1, p2, :cond_3

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/service/StockService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockUtils;

    move-result-object v4

    invoke-static {v3}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getStockInfosJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/personalassistant/stock/utils/StockUtils;->saveStockListToDb(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/service/StockService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/service/StockService;->stopSelf()V

    goto :goto_0

    :cond_4
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/stock/model/StockInfo;

    move v1, p1

    :goto_3
    if-ge v1, p2, :cond_5

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v3, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 v4, -0x1

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.miui.stock.action.batch_request"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "key_stock_ids"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "key_stock_ids"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/personalassistant/stock/service/StockService;->mIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/personalassistant/stock/service/StockService;->requestServer()V

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "com.miui.stock.action.update_cache_sort"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "key_sort_from"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "key_sort_to"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "key_sort_from"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "key_sort_to"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/miui/personalassistant/stock/service/StockService;->updateStockData(II)V

    goto :goto_1
.end method
