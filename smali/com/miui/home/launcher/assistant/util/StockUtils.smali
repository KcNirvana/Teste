.class public Lcom/miui/home/launcher/assistant/util/StockUtils;
.super Ljava/lang/Object;
.source "StockUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/util/StockUtils$StockColumns;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_HYBRID:Ljava/lang/String; = "com.miui.personalassistant.WEB"

.field public static final COLOR_SCHEMA_RED_GROW:I = 0x0

.field private static final EXTRA_REVERSE_COLOR_URL:Ljava/lang/String; = "https://www.laohu8.com/xm/s/%s?reverse_color=1"

.field public static final EXTRA_TITLE_KEY:Ljava/lang/String; = "title"

.field private static final EXTRA_URL:Ljava/lang/String; = "https://www.laohu8.com/xm/s/%s"

.field public static final EXTRA_URL_KEY:Ljava/lang/String; = "url"

.field private static final KEY_STOCK_COLOR_SCHEMA:Ljava/lang/String; = "stock_color_schema"

.field public static final LAOHU_PACKAGE_NAME:Ljava/lang/String; = "com.tigerbrokers.stock"

.field private static final STCOK_ACTION_MAIN:Ljava/lang/String; = "stockassistant.action.main"

.field private static final STOCK_ACTION_ADD:Ljava/lang/String; = "stockassistant.action.add.main"

.field private static final STOCK_PACKAGE_NAME:Ljava/lang/String; = "com.miui.personalassistant"

.field private static final STOCK_USER:Ljava/lang/String; = "stock.user"

.field private static final TAG:Ljava/lang/String; = "StockUtils"

.field private static volatile mInstance:Lcom/miui/home/launcher/assistant/util/StockUtils;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/StockUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getColorSchema(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "stock_color_schema"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/ExtraSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/util/StockUtils;
    .locals 2

    sget-object v0, Lcom/miui/home/launcher/assistant/util/StockUtils;->mInstance:Lcom/miui/home/launcher/assistant/util/StockUtils;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/home/launcher/assistant/util/StockUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/util/StockUtils;->mInstance:Lcom/miui/home/launcher/assistant/util/StockUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/home/launcher/assistant/util/StockUtils;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/util/StockUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/util/StockUtils;->mInstance:Lcom/miui/home/launcher/assistant/util/StockUtils;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/miui/home/launcher/assistant/util/StockUtils;->mInstance:Lcom/miui/home/launcher/assistant/util/StockUtils;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0
.end method

.method private static getLongValue(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 4

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getStockInfoFromCursor(Landroid/database/Cursor;)Lcom/miui/home/launcher/assistant/module/model/StockInfo;
    .locals 4

    new-instance v0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;-><init>()V

    const-string/jumbo v1, "id"

    invoke-static {p0, v1}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getLongValue(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->setId(J)V

    const-string/jumbo v1, "nameCN"

    invoke-static {p0, v1}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->setNameCN(Ljava/lang/String;)V

    const-string/jumbo v1, "market"

    invoke-static {p0, v1}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->setMarket(Ljava/lang/String;)V

    const-string/jumbo v1, "symbol"

    invoke-static {p0, v1}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->setSymbol(Ljava/lang/String;)V

    const-string/jumbo v1, "latestPrice"

    invoke-static {p0, v1}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->setLatestPrice(Ljava/lang/String;)V

    const-string/jumbo v1, "currency"

    invoke-static {p0, v1}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->setCurrency(Ljava/lang/String;)V

    const-string/jumbo v1, "change"

    invoke-static {p0, v1}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->setChange(Ljava/lang/String;)V

    const-string/jumbo v1, "changeRate"

    invoke-static {p0, v1}, Lcom/miui/home/launcher/assistant/util/StockUtils;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->setChangeRate(Ljava/lang/String;)V

    return-object v0
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
            "Lcom/miui/home/launcher/assistant/module/model/StockInfo;",
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

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/util/StockUtils;->parseStockInfo(Lorg/json/JSONObject;)Lcom/miui/home/launcher/assistant/module/model/StockInfo;

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
            "Lcom/miui/home/launcher/assistant/module/model/StockInfo;",
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

    check-cast v4, Lcom/miui/home/launcher/assistant/module/model/StockInfo;

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->toString()Ljava/lang/String;

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

    invoke-static {v5, v6, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

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

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/util/StockUtils;->parseStockInfo(Lorg/json/JSONObject;)Lcom/miui/home/launcher/assistant/module/model/StockInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->getSymbol()Ljava/lang/String;

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

.method private static getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isStockGrow(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "StockUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isStockGrow():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static parseStockInfo(Lorg/json/JSONObject;)Lcom/miui/home/launcher/assistant/module/model/StockInfo;
    .locals 4

    new-instance v0, Lcom/miui/home/launcher/assistant/module/model/StockInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;-><init>()V

    const-string/jumbo v1, "nameCN"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->setNameCN(Ljava/lang/String;)V

    const-string/jumbo v1, "symbol"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->setSymbol(Ljava/lang/String;)V

    const-string/jumbo v1, "currency"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->setCurrency(Ljava/lang/String;)V

    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->setId(J)V

    const-string/jumbo v1, "market"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->setMarket(Ljava/lang/String;)V

    const-string/jumbo v1, "latestPrice"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->setLatestPrice(Ljava/lang/String;)V

    const-string/jumbo v1, "change"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->setChange(Ljava/lang/String;)V

    const-string/jumbo v1, "changeRate"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/model/StockInfo;->setChangeRate(Ljava/lang/String;)V

    return-object v0
.end method

.method public static startHybridActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/assistant/util/StockUtils;->startHybridActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startHybridActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.personalassistant.WEB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/assistant/util/StockUtils;->startStockActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static startStockActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v1, "com.miui.personalassistant"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StockUtils"

    const-string/jumbo v2, "ActivityNotFoundException "

    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static startStockAddActivity(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "stockassistant.action.add.main"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/assistant/util/StockUtils;->startStockActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static startStockDetailActicvity(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    if-nez p2, :cond_1

    const-string/jumbo v2, "https://www.laohu8.com/xm/s/%s"

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {p0, v1}, Lcom/miui/home/launcher/assistant/util/StockUtils;->startThirdNativeActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v1}, Lcom/miui/home/launcher/assistant/util/StockUtils;->startHybridActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v2, "https://www.laohu8.com/xm/s/%s?reverse_color=1"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "StockUtils"

    const-string/jumbo v3, "ActivityNotFoundException "

    invoke-static {v2, v3, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0, v1}, Lcom/miui/home/launcher/assistant/util/StockUtils;->startHybridActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static startStockMainActivity(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "stockassistant.action.main"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/assistant/util/StockUtils;->startStockActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static startThirdNativeActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v1, "com.tigerbrokers.stock"

    invoke-static {p0, v1}, Lcom/miui/home/launcher/assistant/util/StockUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "com.tigerbrokers.stock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/miui/home/launcher/assistant/util/StockUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;

    move-result-object v5

    const-string/jumbo v8, "stock.user"

    const-string/jumbo v9, ""

    invoke-virtual {v5, v8, v9}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->query(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

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

    invoke-static {v1, v5}, Lcom/miui/home/launcher/assistant/util/CryptUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

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

    invoke-static {v5, v8, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
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

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/StockUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;

    move-result-object v0

    const-string/jumbo v1, "stock.user"

    const-string/jumbo v2, "0"

    const-string/jumbo v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)Z

    :cond_0
    return-void
.end method
