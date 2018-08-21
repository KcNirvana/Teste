.class public Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;
.super Ljava/lang/Object;
.source "TRoute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/its/protocol/model/direction/TRoute$Transit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;,
        Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;,
        Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;
    }
.end annotation


# instance fields
.field private mBus:Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;

.field private mEntrance:Lcom/autonavi/its/protocol/model/Point;

.field private mExit:Lcom/autonavi/its/protocol/model/Point;

.field private mRailway:Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;

.field private mWalking:Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;
    .locals 6

    new-instance v2, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;

    invoke-direct {v2}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;-><init>()V

    const-string/jumbo v3, "entrance"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/common/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "entrance"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v3, Lcom/autonavi/its/protocol/model/Point;

    const-string/jumbo v4, "location"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/autonavi/its/protocol/model/Coordinate;->parserProtocolString(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/autonavi/its/protocol/model/Point;-><init>(Lcom/autonavi/its/protocol/model/Coordinate;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->setEntrance(Lcom/autonavi/its/protocol/model/Point;)V

    :cond_0
    const-string/jumbo v3, "exit"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/common/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "exit"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lcom/autonavi/its/protocol/model/Point;

    const-string/jumbo v4, "location"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/autonavi/its/protocol/model/Coordinate;->parserProtocolString(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/autonavi/its/protocol/model/Point;-><init>(Lcom/autonavi/its/protocol/model/Coordinate;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->setExit(Lcom/autonavi/its/protocol/model/Point;)V

    :cond_1
    const-string/jumbo v3, "walking"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->setWalking(Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;)V

    const-string/jumbo v3, "bus"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->setBus(Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;)V

    const-string/jumbo v3, "railway"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->setRailway(Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;)V

    return-object v2
.end method

.method public static parserArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setBus(Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->mBus:Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;

    :cond_0
    return-void
.end method

.method private setEntrance(Lcom/autonavi/its/protocol/model/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->mEntrance:Lcom/autonavi/its/protocol/model/Point;

    return-void
.end method

.method private setExit(Lcom/autonavi/its/protocol/model/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->mExit:Lcom/autonavi/its/protocol/model/Point;

    return-void
.end method

.method private setRailway(Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->mRailway:Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;

    :cond_0
    return-void
.end method

.method private setWalking(Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->mWalking:Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBus()Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->mBus:Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;

    return-object v0
.end method

.method public getEntrance()Lcom/autonavi/its/protocol/model/Point;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->mEntrance:Lcom/autonavi/its/protocol/model/Point;

    return-object v0
.end method

.method public getExit()Lcom/autonavi/its/protocol/model/Point;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->mExit:Lcom/autonavi/its/protocol/model/Point;

    return-object v0
.end method

.method public getRailway()Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->mRailway:Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;

    return-object v0
.end method

.method public getWalking()Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->mWalking:Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->getEntrance()Lcom/autonavi/its/protocol/model/Point;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->getExit()Lcom/autonavi/its/protocol/model/Point;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->getWalking()Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->getBus()Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->getRailway()Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "\n\t\t[ Segment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\u5730\u94c1\u5165\u53e3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->getEntrance()Lcom/autonavi/its/protocol/model/Point;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\u5730\u94c1\u51fa\u53e3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->getExit()Lcom/autonavi/its/protocol/model/Point;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\u6b65\u884c\u5bfc\u822a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->getWalking()Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\u516c\u4ea4\u5bfc\u822a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->getBus()Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\u706b\u8f66\u4e58\u5750\u4fe1\u606f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;->getRailway()Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n\t\t]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
