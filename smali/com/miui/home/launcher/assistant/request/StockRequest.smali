.class public Lcom/miui/home/launcher/assistant/request/StockRequest;
.super Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;
.source "StockRequest.java"


# static fields
.field private static final URL_BASE:Ljava/lang/String; = "http://baojia.itiger.com/stock/v2/getBatch?"

.field public static final URL_GETBATCH_PARAM_KEY_V2:Ljava/lang/String; = "ids"


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/request/core/HttpBizRequest;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/request/StockRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/request/StockRequest;->setUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/request/StockRequest;->setDecryptData(Z)V

    const-string/jumbo v0, "ids"

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/assistant/request/StockRequest;->getParams([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/assistant/request/StockRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getParams([Ljava/lang/String;)Ljava/lang/String;
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

    invoke-static {v3, v4, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://baojia.itiger.com/stock/v2/getBatch?"

    return-object v0
.end method
