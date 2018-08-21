.class public Lcom/miui/personalassistant/request/StockRequest;
.super Lcom/miui/personalassistant/request/core/HttpBizRequest;
.source "StockRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StockRequest"


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/request/core/HttpBizRequest;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/personalassistant/request/StockRequest;->type:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/personalassistant/request/StockRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/request/StockRequest;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/request/StockRequest;->setDecryptData(Z)V

    array-length v0, p4

    if-le v0, v1, :cond_0

    const-string/jumbo v0, "url_batch_type"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p4}, Lcom/miui/personalassistant/request/StockRequest;->getIdsParams([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/miui/personalassistant/request/StockRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    array-length v0, p4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v0, p4, v0

    invoke-virtual {p0, p3, v0}, Lcom/miui/personalassistant/request/StockRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private getBatchUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://baojia.itiger.com/stock/v2/getBatch?"

    return-object v0
.end method

.method private getIdsParams([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_0

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "stock request:"

    const-string/jumbo v4, "get params:"

    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getSearchUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://baojia.itiger.com/stock/v2/search?"

    return-object v0
.end method

.method private getUserIDUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://baojia.itiger.com/stock/v2/getUserName"

    return-object v0
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/request/StockRequest;->type:Ljava/lang/String;

    const-string/jumbo v1, "url_batch_type"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/request/StockRequest;->getBatchUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/request/StockRequest;->type:Ljava/lang/String;

    const-string/jumbo v1, "url_search_type"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/personalassistant/request/StockRequest;->getSearchUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/request/StockRequest;->type:Ljava/lang/String;

    const-string/jumbo v1, "url_imei_type"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/personalassistant/request/StockRequest;->getUserIDUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
