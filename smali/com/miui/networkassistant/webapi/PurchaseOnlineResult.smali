.class public Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;
.super Lcom/miui/networkassistant/webapi/FeatureOnlineResult;
.source ""


# instance fields
.field private mOrderTips:Ljava/lang/String;

.field private mOrderType:I

.field private mPurchaseHotActivityId:Ljava/lang/String;

.field private mTrafficPassStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/webapi/FeatureOnlineResult;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doParseJson(Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/miui/networkassistant/webapi/FeatureOnlineResult;->doParseJson(Lorg/json/JSONObject;)Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "orderType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mOrderType:I

    const-string/jumbo v1, "orderTip"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mOrderTips:Ljava/lang/String;

    const-string/jumbo v1, "onLineActivityId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mPurchaseHotActivityId:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "miflow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mTrafficPassStatus:I

    :cond_1
    :goto_0
    return v2

    :cond_2
    iput v2, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mTrafficPassStatus:I

    goto :goto_0
.end method

.method public getOrderType()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mOrderType:I

    return v0
.end method

.method public getPurchaseActivityId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mPurchaseHotActivityId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrafficPassStatus()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mTrafficPassStatus:I

    return v0
.end method

.method public getmOrderTips()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mOrderTips:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/miui/networkassistant/webapi/FeatureOnlineResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mOrderType:%s,mOrderTips:%s,mPurchaseHotActivityId: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mOrderType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mOrderTips:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mPurchaseHotActivityId:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/miui/networkassistant/webapi/FeatureOnlineResult;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
