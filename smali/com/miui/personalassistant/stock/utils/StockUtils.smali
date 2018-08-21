.class public Lcom/miui/personalassistant/stock/utils/StockUtils;
.super Ljava/lang/Object;
.source "StockUtils.java"


# static fields
.field private static final KEY_FOCUS_STOCK:Ljava/lang/String; = "focus_stocks"

.field public static final STOCK_USER:Ljava/lang/String; = "stock.user"

.field private static final TAG:Ljava/lang/String; = "StockUtils"

.field private static volatile mInstance:Lcom/miui/personalassistant/stock/utils/StockUtils;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/stock/utils/StockUtils;->mContext:Landroid/content/Context;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/personalassistant/stock/utils/StockUtils;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getDbStocks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/stock/model/Stock;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/personalassistant/stock/utils/StockUtils;->parseStocks(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockUtils;
    .locals 2

    sget-object v0, Lcom/miui/personalassistant/stock/utils/StockUtils;->mInstance:Lcom/miui/personalassistant/stock/utils/StockUtils;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/personalassistant/stock/utils/StockUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/personalassistant/stock/utils/StockUtils;->mInstance:Lcom/miui/personalassistant/stock/utils/StockUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/stock/utils/StockUtils;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/stock/utils/StockUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/personalassistant/stock/utils/StockUtils;->mInstance:Lcom/miui/personalassistant/stock/utils/StockUtils;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/personalassistant/stock/utils/StockUtils;->mInstance:Lcom/miui/personalassistant/stock/utils/StockUtils;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getSortStockInfos(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/stock/model/StockInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/miui/personalassistant/stock/utils/StockUtils;->parseStockInfosMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "StockUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "symbol:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "StockUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sortStockInfos() not exist symbol:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getStockInfo(Ljava/lang/String;)Lcom/miui/personalassistant/stock/model/StockInfo;
    .locals 5

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Lcom/miui/personalassistant/stock/model/StockInfo;

    invoke-direct {v3}, Lcom/miui/personalassistant/stock/model/StockInfo;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/personalassistant/stock/utils/StockUtils;->parseStockInfo(Lorg/json/JSONObject;)Lcom/miui/personalassistant/stock/model/StockInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStockInfos(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/stock/model/StockInfo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/personalassistant/stock/utils/StockUtils;->parseStockInfo(Lorg/json/JSONObject;)Lcom/miui/personalassistant/stock/model/StockInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStockInfosJsonString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/stock/model/StockInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const-string/jumbo v5, ""

    :goto_0
    return-object v5

    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_1
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/personalassistant/stock/model/StockInfo;

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lcom/miui/personalassistant/stock/model/StockInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v5, "StockUtils"

    const-string/jumbo v6, "getStocksJsonString()"

    invoke-static {v5, v6, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getStocks(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/stock/model/Stock;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getDbStocks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v3, "focus_stocks"

    const-string/jumbo v4, ""

    invoke-static {p0, v3, v4}, Lcom/miui/personalassistant/stock/utils/StockPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/personalassistant/stock/utils/StockUtils;->parseStocks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-nez v2, :cond_2

    :cond_1
    invoke-static {p0, v1}, Lcom/miui/personalassistant/stock/utils/StockUtils;->saveStocks(Landroid/content/Context;Ljava/util/ArrayList;)Z

    :goto_0
    return-object v1

    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockDataManager;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v5}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->updateStocksSort(Ljava/util/ArrayList;II)V

    invoke-static {p0}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/stock/utils/StockDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/personalassistant/stock/utils/StockDataManager;->updateCacheFile()V

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method public static getStocksId(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/personalassistant/stock/utils/StockUtils;->parseStockInfo(Lorg/json/JSONObject;)Lcom/miui/personalassistant/stock/model/StockInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/personalassistant/stock/model/StockInfo;->getSymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getStocksJsonString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/stock/model/Stock;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string/jumbo v4, ""

    :goto_0
    return-object v4

    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_1
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    new-instance v3, Lorg/json/JSONObject;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/personalassistant/stock/model/Stock;

    invoke-virtual {v4}, Lcom/miui/personalassistant/stock/model/Stock;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v4, "StockUtils"

    const-string/jumbo v5, "getStocksJsonString()"

    invoke-static {v4, v5, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static parseDbStock(Ljava/lang/String;)Lcom/miui/personalassistant/stock/model/Stock;
    .locals 5

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/miui/personalassistant/stock/model/Stock;

    invoke-direct {v2}, Lcom/miui/personalassistant/stock/model/Stock;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "symbol"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/stock/model/Stock;->setId(Ljava/lang/String;)V

    const-string/jumbo v3, "nameCN"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/stock/model/Stock;->setName(Ljava/lang/String;)V

    const-string/jumbo v3, "symbol"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/stock/model/Stock;->setSymbol(Ljava/lang/String;)V

    const-string/jumbo v3, "pinyin"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/stock/model/Stock;->setPinyin(Ljava/lang/String;)V

    const-string/jumbo v3, "market"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/stock/model/Stock;->setMarket(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "StockUtils"

    const-string/jumbo v4, "parseStock()"

    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static parseStock(Ljava/lang/String;)Lcom/miui/personalassistant/stock/model/Stock;
    .locals 5

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lcom/miui/personalassistant/stock/model/Stock;

    invoke-direct {v2}, Lcom/miui/personalassistant/stock/model/Stock;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/stock/model/Stock;->setId(Ljava/lang/String;)V

    const-string/jumbo v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/stock/model/Stock;->setName(Ljava/lang/String;)V

    const-string/jumbo v3, "symbol"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/stock/model/Stock;->setSymbol(Ljava/lang/String;)V

    const-string/jumbo v3, "pinyin"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/stock/model/Stock;->setPinyin(Ljava/lang/String;)V

    const-string/jumbo v3, "market"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/stock/model/Stock;->setMarket(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "StockUtils"

    const-string/jumbo v4, "parseStock()"

    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static parseStockInfo(Lorg/json/JSONObject;)Lcom/miui/personalassistant/stock/model/StockInfo;
    .locals 4

    new-instance v0, Lcom/miui/personalassistant/stock/model/StockInfo;

    invoke-direct {v0}, Lcom/miui/personalassistant/stock/model/StockInfo;-><init>()V

    const-string/jumbo v1, "nameCN"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/stock/model/StockInfo;->setNameCN(Ljava/lang/String;)V

    const-string/jumbo v1, "exchange"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/stock/model/StockInfo;->setExchange(Ljava/lang/String;)V

    const-string/jumbo v1, "symbol"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/stock/model/StockInfo;->setSymbol(Ljava/lang/String;)V

    const-string/jumbo v1, "currency"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/stock/model/StockInfo;->setCurrency(Ljava/lang/String;)V

    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/personalassistant/stock/model/StockInfo;->setId(J)V

    const-string/jumbo v1, "market"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/stock/model/StockInfo;->setMarket(Ljava/lang/String;)V

    const-string/jumbo v1, "latestPrice"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/personalassistant/stock/model/StockInfo;->setLatestPrice(D)V

    const-string/jumbo v1, "change"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/personalassistant/stock/model/StockInfo;->setChange(D)V

    const-string/jumbo v1, "changeRate"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/stock/model/StockInfo;->setChangeRate(Ljava/lang/String;)V

    return-object v0
.end method

.method private static parseStockInfosMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/personalassistant/stock/model/StockInfo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    const/4 v5, 0x0

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/personalassistant/stock/utils/StockUtils;->parseStockInfo(Lorg/json/JSONObject;)Lcom/miui/personalassistant/stock/model/StockInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/personalassistant/stock/model/StockInfo;->getSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseStocks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/stock/model/Stock;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/personalassistant/stock/utils/StockUtils;->parseStocks(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public static parseStocks(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/stock/model/Stock;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_4

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/miui/personalassistant/stock/model/Stock;

    invoke-direct {v4}, Lcom/miui/personalassistant/stock/model/Stock;-><init>()V

    if-nez p1, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/personalassistant/stock/utils/StockUtils;->parseStock(Ljava/lang/String;)Lcom/miui/personalassistant/stock/model/Stock;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/personalassistant/stock/utils/StockUtils;->parseDbStock(Ljava/lang/String;)Lcom/miui/personalassistant/stock/model/Stock;

    move-result-object v4

    goto :goto_2

    :cond_3
    const-string/jumbo v6, "StockUtils"

    const-string/jumbo v7, "parseStock() return null"

    invoke-static {v6, v7}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string/jumbo v6, "StockUtils"

    const-string/jumbo v7, "parseStocks()"

    invoke-static {v6, v7, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    const-string/jumbo v6, "StockUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseStocks: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static saveStocks(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/stock/model/Stock;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/miui/personalassistant/stock/utils/StockUtils;->getStocksJsonString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "focus_stocks"

    invoke-static {p0, v1, v0}, Lcom/miui/personalassistant/stock/utils/StockPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method public static startStockSettingActivity(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/personalassistant/stock/home/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public delAllStockDb()V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/stock/utils/StockUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "focus_stocks"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/stock/utils/StockPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/utils/StockUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/AssistantContentStorage;

    move-result-object v0

    const-string/jumbo v1, "stock.user"

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->delAll(Ljava/lang/String;)Z

    return-void
.end method

.method public getData()Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/miui/personalassistant/stock/utils/StockUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/AssistantContentStorage;

    move-result-object v5

    const-string/jumbo v8, "stock.user"

    const-string/jumbo v9, ""

    invoke-virtual {v5, v8, v9}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->query(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "data"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "stock.user"

    const-string/jumbo v8, "stock.user"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "timestamp"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/miui/personalassistant/util/CryptUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "StockUtils"

    invoke-static {v5, v3}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v5, "StockUtils"

    const-string/jumbo v8, "Exception"

    invoke-static {v5, v8, v2}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v5

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v5
.end method

.method public saveStockListToDb(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/utils/StockUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/personalassistant/provider/AssistantContentStorage;

    move-result-object v0

    const-string/jumbo v1, "stock.user"

    const-string/jumbo v2, "0"

    const-string/jumbo v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/miui/personalassistant/provider/AssistantContentStorage;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/personalassistant/stock/utils/StockUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "9"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setUnSync(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
