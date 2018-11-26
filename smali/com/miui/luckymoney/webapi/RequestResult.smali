.class public Lcom/miui/luckymoney/webapi/RequestResult;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestResult"


# instance fields
.field protected DEBUG:Z

.field protected isSuccess:Z

.field protected mJsonStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/webapi/RequestResult;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/webapi/RequestResult;->DEBUG:Z

    iput-object p1, p0, Lcom/miui/luckymoney/webapi/RequestResult;->mJsonStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/luckymoney/webapi/RequestResult;->parseJson(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method protected doParseJson(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/webapi/RequestResult;->mJsonStr:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/webapi/RequestResult;->isSuccess:Z

    return v0
.end method

.method public parseJson(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/miui/luckymoney/webapi/RequestResult;->isSuccess:Z

    return v4

    :cond_0
    iput-object p1, p0, Lcom/miui/luckymoney/webapi/RequestResult;->mJsonStr:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/miui/luckymoney/webapi/RequestResult;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "RequestResult"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v0, "productData"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    iput-boolean v4, p0, Lcom/miui/luckymoney/webapi/RequestResult;->isSuccess:Z

    return v4

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    iput-boolean v4, p0, Lcom/miui/luckymoney/webapi/RequestResult;->isSuccess:Z

    const-string/jumbo v2, "RequestResult"

    const-string/jumbo v3, "parse json failed :"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    iput-boolean v5, p0, Lcom/miui/luckymoney/webapi/RequestResult;->isSuccess:Z

    invoke-virtual {p0, v1}, Lcom/miui/luckymoney/webapi/RequestResult;->doParseJson(Lorg/json/JSONObject;)V

    return v5

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
