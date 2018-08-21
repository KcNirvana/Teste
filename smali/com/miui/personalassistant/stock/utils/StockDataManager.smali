.class public Lcom/miui/personalassistant/stock/utils/StockDataManager;
.super Ljava/lang/Object;
.source "StockDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/stock/utils/StockDataManager$OnStocksChangeListener;
    }
.end annotation


# static fields
.field public static final MAX_CARD_STOCK_COUNT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "StockDataManager"

.field private static volatile sInstance:Lcom/miui/personalassistant/stock/utils/StockDataManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnStocksChangeListener:Lcom/miui/personalassistant/stock/utils/StockDataManager$OnStocksChangeListener;

.field private mStocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/stock/model/Stock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mContext:Landroid/content/Context;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockDataManager;
    .locals 2

    sget-object v0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->sInstance:Lcom/miui/personalassistant/stock/utils/StockDataManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/personalassistant/stock/utils/StockDataManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->sInstance:Lcom/miui/personalassistant/stock/utils/StockDataManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/stock/utils/StockDataManager;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/stock/utils/StockDataManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->sInstance:Lcom/miui/personalassistant/stock/utils/StockDataManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->sInstance:Lcom/miui/personalassistant/stock/utils/StockDataManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateCacheFileSort(II)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/personalassistant/stock/service/StockService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.miui.stock.action.update_cache_sort"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "key_sort_from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "key_sort_to"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public getCacheStockIds()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->getStocks()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/personalassistant/stock/model/Stock;

    invoke-virtual {v3}, Lcom/miui/personalassistant/stock/model/Stock;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getStocks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/stock/model/Stock;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mStocks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getStocks(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mStocks:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mStocks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public registerListener(Lcom/miui/personalassistant/stock/utils/StockDataManager$OnStocksChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mOnStocksChangeListener:Lcom/miui/personalassistant/stock/utils/StockDataManager$OnStocksChangeListener;

    return-void
.end method

.method public unRegisterListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mStocks:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mOnStocksChangeListener:Lcom/miui/personalassistant/stock/utils/StockDataManager$OnStocksChangeListener;

    return-void
.end method

.method public updateCacheFile()V
    .locals 3

    iget-object v1, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mStocks:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/miui/personalassistant/stock/utils/StockUtils;->saveStocks(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/personalassistant/stock/service/StockService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.miui.stock.action.batch_request"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "key_stock_ids"

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->getCacheStockIds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public updateStock(Lcom/miui/personalassistant/stock/model/Stock;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mStocks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mStocks:Ljava/util/ArrayList;

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mStocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mOnStocksChangeListener:Lcom/miui/personalassistant/stock/utils/StockDataManager$OnStocksChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mOnStocksChangeListener:Lcom/miui/personalassistant/stock/utils/StockDataManager$OnStocksChangeListener;

    invoke-interface {v0}, Lcom/miui/personalassistant/stock/utils/StockDataManager$OnStocksChangeListener;->onChange()V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->updateCacheFile()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mStocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public updateStocksSort(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/stock/model/Stock;",
            ">;II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/stock/utils/StockDataManager;->mStocks:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->updateCacheFileSort(II)V

    return-void
.end method
