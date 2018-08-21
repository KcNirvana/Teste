.class public Lcom/miui/home/launcher/assistant/module/carditem/StockItem;
.super Ljava/lang/Object;
.source "StockItem.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/interfaces/BaseItem;


# static fields
.field private static final TAG:Ljava/lang/String; = "StockItem"

.field private static final TIME_VALID:J = 0x7918L

.field private static mQueryStamp:J


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/home/launcher/assistant/module/carditem/StockItem;->mQueryStamp:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/StockItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/module/carditem/StockItem;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/module/carditem/StockItem;->updateStock(Ljava/util/List;)V

    return-void
.end method

.method private getStockList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/StockInfo;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/carditem/StockItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/util/StockUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getStockInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private updateStock(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/StockInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getStocksId(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    new-instance v5, Lcom/miui/home/launcher/assistant/request/StockRequest;

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/module/carditem/StockItem;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7, v6}, Lcom/miui/home/launcher/assistant/request/StockRequest;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/miui/home/launcher/assistant/request/StockRequest;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v2}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getStockInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/module/carditem/StockItem;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/util/StockUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getData()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getStockInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_2
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/assistant/module/model/StockInfo;

    invoke-virtual {v7}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->getSymbol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/assistant/module/model/StockInfo;

    invoke-virtual {v7}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->getSymbol()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getStockInfosJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/miui/home/launcher/assistant/module/carditem/StockItem;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/util/StockUtils;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/miui/home/launcher/assistant/util/StockUtils;->saveStockListToDb(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/module/receiver/StockUpdate;->update(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic queryItem(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/assistant/module/carditem/StockItem;->queryItem(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryItem(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/StockInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/module/carditem/StockItem;->getStockList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/miui/home/launcher/assistant/module/carditem/StockItem;->mQueryStamp:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x7918

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/miui/home/launcher/assistant/module/carditem/StockItem;->mQueryStamp:J

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->getInstance()Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/assistant/module/carditem/StockItem$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/launcher/assistant/module/carditem/StockItem$1;-><init>(Lcom/miui/home/launcher/assistant/module/carditem/StockItem;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/module/ThreadDispatcher;->runInBackgroud(Ljava/lang/Runnable;)V

    :cond_0
    return-object v0
.end method
