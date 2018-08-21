.class public Lcom/miui/personalassistant/stock/provider/StockProvider;
.super Landroid/content/ContentProvider;
.source "StockProvider.java"


# static fields
.field private static final STOCK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "StockProvider"

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mFileCachePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/personalassistant/stock/provider/StockProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/miui/personalassistant/stock/provider/StockProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.stock"

    const-string/jumbo v2, "uri_stock_path"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getBatchStocks()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/stock/model/StockInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/personalassistant/stock/provider/StockProvider;->getFileCachePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/personalassistant/stock/provider/FileCacheUtil;->isCacheOutDate(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/provider/StockProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockDataManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->getCacheStockIds()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v0, Lcom/miui/personalassistant/stock/http/HttpRequest;

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/provider/StockProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/miui/personalassistant/stock/http/HttpRequest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/miui/personalassistant/stock/http/HttpRequest;->getBatchResult([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1, v2}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getSortStockInfos(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0}, Lcom/miui/personalassistant/stock/provider/StockProvider;->getFileCachePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getStockInfosJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/util/FileUtils;->saveFile(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0}, Lcom/miui/personalassistant/stock/provider/StockProvider;->getCacheData()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0
.end method

.method private getCacheData()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/stock/model/StockInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo v1, "StockProvider"

    const-string/jumbo v2, "getCacheData"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/personalassistant/stock/provider/StockProvider;->getFileCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/personalassistant/util/FileUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getStockInfos(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private getFileCachePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/provider/StockProvider;->mFileCachePath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/provider/StockProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/stock/provider/FileCacheUtil;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/stock/provider/StockProvider;->mFileCachePath:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/stock/provider/StockProvider;->mFileCachePath:Ljava/lang/String;

    return-object v0
.end method

.method private getStockData()Landroid/database/Cursor;
    .locals 8

    invoke-direct {p0}, Lcom/miui/personalassistant/stock/provider/StockProvider;->getBatchStocks()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    const-string/jumbo v4, "StockProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getStockData(), stock size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/miui/personalassistant/stock/provider/ProviderConstants$StockColumns;->sStockColumns:[Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/stock/model/StockInfo;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/miui/personalassistant/stock/model/StockInfo;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/miui/personalassistant/stock/model/StockInfo;->getNameCN()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v2}, Lcom/miui/personalassistant/stock/model/StockInfo;->getMarket()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v2}, Lcom/miui/personalassistant/stock/model/StockInfo;->getSymbol()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual {v2}, Lcom/miui/personalassistant/stock/model/StockInfo;->getFormatLatestPrice()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {v2}, Lcom/miui/personalassistant/stock/model/StockInfo;->getCurrency()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-virtual {v2}, Lcom/miui/personalassistant/stock/model/StockInfo;->getFormatChange()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/provider/StockProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/miui/personalassistant/stock/model/StockInfo;->getFormatChangeRate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private hasAccessPermission()Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/provider/StockProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    array-length v4, v0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    sget-object v5, Lcom/miui/personalassistant/stock/provider/ProviderConstants;->sAccessWhiteList:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "StockProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no permission : %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/personalassistant/stock/provider/StockProvider;->hasAccessPermission()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    sget-object v2, Lcom/miui/personalassistant/stock/provider/StockProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v2, "StockProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not support query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/personalassistant/stock/provider/StockProvider;->getStockData()Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
