.class public Lorg/ifaa/ifaf/OperationHeader;
.super Ljava/lang/Object;
.source "OperationHeader.java"


# instance fields
.field private appID:Ljava/lang/String;

.field private authType:B

.field private deviceModel:Ljava/lang/String;

.field private ipv:Lorg/ifaa/ifaf/Version;

.field private op:Ljava/lang/String;

.field private opType:Ljava/lang/String;

.field private serverData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lorg/ifaa/ifaf/OperationHeader;
    .locals 2

    new-instance v0, Lorg/ifaa/ifaf/OperationHeader;

    invoke-direct {v0}, Lorg/ifaa/ifaf/OperationHeader;-><init>()V

    :try_start_0
    const-string/jumbo v1, "appID"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ifaa/ifaf/OperationHeader;->setAppID(Ljava/lang/String;)V

    const-string/jumbo v1, "authType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/ifaa/ifaf/OperationHeader;->setAuthType(B)V

    const-string/jumbo v1, "ipv"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lorg/ifaa/ifaf/Version;->parse(Lorg/json/JSONObject;)Lorg/ifaa/ifaf/Version;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ifaa/ifaf/OperationHeader;->setIpv(Lorg/ifaa/ifaf/Version;)V

    const-string/jumbo v1, "op"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ifaa/ifaf/OperationHeader;->setOp(Ljava/lang/String;)V

    const-string/jumbo v1, "opType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ifaa/ifaf/OperationHeader;->setOpType(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAppID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/OperationHeader;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthType()B
    .locals 1

    iget-byte v0, p0, Lorg/ifaa/ifaf/OperationHeader;->authType:B

    return v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/OperationHeader;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv()Lorg/ifaa/ifaf/Version;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/OperationHeader;->ipv:Lorg/ifaa/ifaf/Version;

    return-object v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/OperationHeader;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getOpType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/OperationHeader;->opType:Ljava/lang/String;

    return-object v0
.end method

.method public getServerData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ifaa/ifaf/OperationHeader;->serverData:Ljava/lang/String;

    return-object v0
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/OperationHeader;->appID:Ljava/lang/String;

    return-void
.end method

.method public setAuthType(B)V
    .locals 0

    iput-byte p1, p0, Lorg/ifaa/ifaf/OperationHeader;->authType:B

    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/OperationHeader;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public setIpv(Lorg/ifaa/ifaf/Version;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/OperationHeader;->ipv:Lorg/ifaa/ifaf/Version;

    return-void
.end method

.method public setOp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/OperationHeader;->op:Ljava/lang/String;

    return-void
.end method

.method public setOpType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/OperationHeader;->opType:Ljava/lang/String;

    return-void
.end method

.method public setServerData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/ifaf/OperationHeader;->serverData:Ljava/lang/String;

    return-void
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "appID"

    iget-object v2, p0, Lorg/ifaa/ifaf/OperationHeader;->appID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "authType"

    iget-byte v2, p0, Lorg/ifaa/ifaf/OperationHeader;->authType:B

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "ipv"

    iget-object v2, p0, Lorg/ifaa/ifaf/OperationHeader;->ipv:Lorg/ifaa/ifaf/Version;

    invoke-virtual {v2}, Lorg/ifaa/ifaf/Version;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "op"

    iget-object v2, p0, Lorg/ifaa/ifaf/OperationHeader;->op:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "opType"

    iget-object v2, p0, Lorg/ifaa/ifaf/OperationHeader;->opType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
