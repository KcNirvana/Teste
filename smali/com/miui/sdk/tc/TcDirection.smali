.class public Lcom/miui/sdk/tc/TcDirection;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KEY_CMD_TYPE:Ljava/lang/String; = "cmdType"

.field private static final KEY_CONTROL_NUMBER:Ljava/lang/String; = "controlNumber"

.field private static final KEY_DIRECTION:Ljava/lang/String; = "direction"

.field private static final KEY_RECEIVE_NUMBER:Ljava/lang/String; = "receiveNumber"

.field private static final KEY_SEND_NUMBER:Ljava/lang/String; = "sendNumber"


# instance fields
.field private mCmdType:I

.field private mControlNumber:Ljava/lang/String;

.field private mDirection:Ljava/lang/String;

.field private mReceiveNumber:Ljava/lang/String;

.field private mSendNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "sendNumber"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/sdk/tc/TcDirection;->mSendNumber:Ljava/lang/String;

    const-string/jumbo v1, "direction"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/sdk/tc/TcDirection;->mDirection:Ljava/lang/String;

    const-string/jumbo v1, "receiveNumber"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/sdk/tc/TcDirection;->mReceiveNumber:Ljava/lang/String;

    const-string/jumbo v1, "controlNumber"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/sdk/tc/TcDirection;->mControlNumber:Ljava/lang/String;

    const-string/jumbo v1, "cmdType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/sdk/tc/TcDirection;->mCmdType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/sdk/tc/TcDirection;->mSendNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/sdk/tc/TcDirection;->mDirection:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/sdk/tc/TcDirection;->mReceiveNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/sdk/tc/TcDirection;->mControlNumber:Ljava/lang/String;

    iput p3, p0, Lcom/miui/sdk/tc/TcDirection;->mCmdType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/sdk/tc/TcDirection;->mSendNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/sdk/tc/TcDirection;->mDirection:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/sdk/tc/TcDirection;->mReceiveNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/sdk/tc/TcDirection;->mControlNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/sdk/tc/TcDirection;->mSendNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/sdk/tc/TcDirection;->mDirection:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/sdk/tc/TcDirection;->mReceiveNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/sdk/tc/TcDirection;->mControlNumber:Ljava/lang/String;

    iput p5, p0, Lcom/miui/sdk/tc/TcDirection;->mCmdType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/sdk/tc/TcDirection;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    return v0

    :cond_2
    check-cast p1, Lcom/miui/sdk/tc/TcDirection;

    iget v1, p0, Lcom/miui/sdk/tc/TcDirection;->mCmdType:I

    iget v2, p1, Lcom/miui/sdk/tc/TcDirection;->mCmdType:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/miui/sdk/tc/TcDirection;->mSendNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/sdk/tc/TcDirection;->mSendNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/sdk/tc/TcDirection;->mDirection:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/sdk/tc/TcDirection;->mDirection:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/sdk/tc/TcDirection;->mReceiveNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/sdk/tc/TcDirection;->mReceiveNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/miui/sdk/tc/TcDirection;->mControlNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/sdk/tc/TcDirection;->mControlNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :cond_3
    return v0
.end method

.method public getCmdType()I
    .locals 1

    iget v0, p0, Lcom/miui/sdk/tc/TcDirection;->mCmdType:I

    return v0
.end method

.method public getControlNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/sdk/tc/TcDirection;->mControlNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/sdk/tc/TcDirection;->mDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiveNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/sdk/tc/TcDirection;->mReceiveNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSendNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/sdk/tc/TcDirection;->mSendNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/sdk/tc/TcDirection;->mSendNumber:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/sdk/tc/TcDirection;->mDirection:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/sdk/tc/TcDirection;->mReceiveNumber:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/sdk/tc/TcDirection;->mControlNumber:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/miui/sdk/tc/TcDirection;->mCmdType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCmdType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/sdk/tc/TcDirection;->mCmdType:I

    return-void
.end method

.method public setControlNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/sdk/tc/TcDirection;->mControlNumber:Ljava/lang/String;

    return-void
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/sdk/tc/TcDirection;->mDirection:Ljava/lang/String;

    return-void
.end method

.method public setReceiveNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/sdk/tc/TcDirection;->mReceiveNumber:Ljava/lang/String;

    return-void
.end method

.method public setSendNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/sdk/tc/TcDirection;->mSendNumber:Ljava/lang/String;

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "sendNumber"

    iget-object v2, p0, Lcom/miui/sdk/tc/TcDirection;->mSendNumber:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "direction"

    iget-object v2, p0, Lcom/miui/sdk/tc/TcDirection;->mDirection:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "receiveNumber"

    iget-object v2, p0, Lcom/miui/sdk/tc/TcDirection;->mReceiveNumber:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "controlNumber"

    iget-object v2, p0, Lcom/miui/sdk/tc/TcDirection;->mControlNumber:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "cmdType"

    iget v2, p0, Lcom/miui/sdk/tc/TcDirection;->mCmdType:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "mSendNumber:%s mDirection:%s mReceiveNumber:%s mControlNumber:%s mCmdType:%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/sdk/tc/TcDirection;->mSendNumber:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/sdk/tc/TcDirection;->mDirection:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/sdk/tc/TcDirection;->mReceiveNumber:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/sdk/tc/TcDirection;->mControlNumber:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/miui/sdk/tc/TcDirection;->mCmdType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
