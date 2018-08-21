.class public Lcom/alipay/android/app/json/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"


# instance fields
.field private mJsonArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->mJsonArray:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->mJsonArray:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/json/JSONArray;->mJsonArray:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/alipay/android/app/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alipay/android/app/json/JSONException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getJSONArray()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->mJsonArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getJSONObject(I)Lcom/alipay/android/app/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alipay/android/app/json/JSONException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alipay/android/app/json/JSONException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Lorg/json/JSONObject;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/alipay/android/app/json/JSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/json/JSONArray;->mJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
