.class public Lcom/alipay/edge/face/EdgeRiskResult;
.super Ljava/lang/Object;
.source "EdgeRiskResult.java"


# instance fields
.field public data:Ljava/lang/String;

.field public needSync:I

.field public rdsResult:Ljava/lang/String;

.field public result:I

.field public sealedData:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/alipay/edge/face/EdgeRiskResult;->result:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/edge/face/EdgeRiskResult;->status:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/edge/face/EdgeRiskResult;->rdsResult:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/edge/face/EdgeRiskResult;->sealedData:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/edge/face/EdgeRiskResult;->data:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/edge/face/EdgeRiskResult;->needSync:I

    return-void
.end method


# virtual methods
.method public toStringEx()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "result"

    iget v2, p0, Lcom/alipay/edge/face/EdgeRiskResult;->result:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "status"

    iget v2, p0, Lcom/alipay/edge/face/EdgeRiskResult;->status:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "rdsData"

    iget-object v2, p0, Lcom/alipay/edge/face/EdgeRiskResult;->rdsResult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "sealedData"

    iget-object v2, p0, Lcom/alipay/edge/face/EdgeRiskResult;->sealedData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "data"

    iget-object v2, p0, Lcom/alipay/edge/face/EdgeRiskResult;->data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
