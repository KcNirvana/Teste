.class public Lcom/autonavi/its/protocol/model/LocationDesc;
.super Ljava/lang/Object;
.source "LocationDesc.java"


# static fields
.field public static final TYPE_HOME:I = 0x0

.field public static final TYPE_WORKPLACE:I = 0x1


# instance fields
.field private mDistance:I

.field private mDuration:I

.field private mEncryptedLatitude:Ljava/lang/String;

.field private mEncryptedLongitude:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/autonavi/its/protocol/model/LocationDesc;->setType(I)V

    invoke-direct {p0, p2}, Lcom/autonavi/its/protocol/model/LocationDesc;->setDistance(I)V

    invoke-direct {p0, p3}, Lcom/autonavi/its/protocol/model/LocationDesc;->setDuration(I)V

    return-void
.end method

.method public static parser(ILorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/LocationDesc;
    .locals 5

    new-instance v2, Lcom/autonavi/its/protocol/model/LocationDesc;

    const-string/jumbo v3, "distance"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "duration"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, p0, v3, v4}, Lcom/autonavi/its/protocol/model/LocationDesc;-><init>(III)V

    const-string/jumbo v3, "location"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/common/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "location"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-direct {v2, v3}, Lcom/autonavi/its/protocol/model/LocationDesc;->setEncryptedLongitude(Ljava/lang/String;)V

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-direct {v2, v3}, Lcom/autonavi/its/protocol/model/LocationDesc;->setEncryptedLatitude(Ljava/lang/String;)V

    :cond_0
    return-object v2
.end method

.method public static parserFromJson(ILorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/LocationDesc;
    .locals 3

    new-instance v0, Lcom/autonavi/its/protocol/model/LocationDesc;

    const-string/jumbo v1, "distance"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "duration"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/autonavi/its/protocol/model/LocationDesc;-><init>(III)V

    return-object v0
.end method

.method private setDistance(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/model/LocationDesc;->mDistance:I

    return-void
.end method

.method private setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/model/LocationDesc;->mDuration:I

    return-void
.end method

.method private setEncryptedLatitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/LocationDesc;->mEncryptedLatitude:Ljava/lang/String;

    return-void
.end method

.method private setEncryptedLongitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/LocationDesc;->mEncryptedLongitude:Ljava/lang/String;

    return-void
.end method

.method private setType(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/model/LocationDesc;->mType:I

    return-void
.end method


# virtual methods
.method public getDistance()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/LocationDesc;->mDistance:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/LocationDesc;->mDuration:I

    return v0
.end method

.method public getEncryptedLatitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/LocationDesc;->mEncryptedLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedLongitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/LocationDesc;->mEncryptedLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/LocationDesc;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "\n["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/LocationDesc;->getType()I

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "type:home"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "distance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/LocationDesc;->getDistance()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u7c73"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/LocationDesc;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " \u52a0\u5bc6\u540e\u7ecf\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/LocationDesc;->getEncryptedLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " \u52a0\u5bc6\u540e\u7eac\u5ea6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/LocationDesc;->getEncryptedLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/LocationDesc;->getType()I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "type:workplace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
