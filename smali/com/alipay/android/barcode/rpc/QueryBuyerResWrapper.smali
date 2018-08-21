.class public Lcom/alipay/android/barcode/rpc/QueryBuyerResWrapper;
.super Ljava/lang/Object;
.source "QueryBuyerResWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public action:Ljava/lang/String;

.field public attachAction:Ljava/lang/String;

.field public dynamicId:Ljava/lang/String;

.field public entireData:Ljava/lang/String;

.field public mcashierParamStr:Ljava/lang/String;

.field public sdkBizData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toQueryBuyerRes()Lcom/alipay/android/barcode/rpc/QueryBuyerRes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/barcode/rpc/QueryBuyerRes;

    invoke-direct {v0}, Lcom/alipay/android/barcode/rpc/QueryBuyerRes;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/barcode/rpc/QueryBuyerResWrapper;->entireData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/barcode/rpc/QueryBuyerResWrapper;->action:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/barcode/rpc/QueryBuyerRes;->action:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/barcode/rpc/QueryBuyerResWrapper;->attachAction:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/barcode/rpc/QueryBuyerRes;->attachAction:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/barcode/rpc/QueryBuyerResWrapper;->dynamicId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/barcode/rpc/QueryBuyerRes;->dynamicId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/barcode/rpc/QueryBuyerResWrapper;->mcashierParamStr:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/barcode/rpc/QueryBuyerRes;->mcashierParamStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/barcode/rpc/QueryBuyerResWrapper;->sdkBizData:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/barcode/rpc/QueryBuyerRes;->sdkBizData:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/android/barcode/rpc/QueryBuyerResWrapper;->entireData:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/barcode/rpc/QueryBuyerRes;->action:Ljava/lang/String;

    const-string/jumbo v2, "attachAction"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/barcode/rpc/QueryBuyerRes;->attachAction:Ljava/lang/String;

    const-string/jumbo v2, "dynamicId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/barcode/rpc/QueryBuyerRes;->dynamicId:Ljava/lang/String;

    const-string/jumbo v2, "mcashierParamStr"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/barcode/rpc/QueryBuyerRes;->mcashierParamStr:Ljava/lang/String;

    const-string/jumbo v2, "sdkBizData"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/barcode/rpc/QueryBuyerRes;->sdkBizData:Ljava/lang/String;

    goto :goto_0
.end method
