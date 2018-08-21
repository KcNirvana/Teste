.class public Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;
.super Ljava/lang/Object;
.source "TRoute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Railway"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$Space;,
        Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$Alter;,
        Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;
    }
.end annotation


# instance fields
.field private mAlters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$Alter;",
            ">;"
        }
    .end annotation
.end field

.field private mArriveStop:Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;

.field private mDepartureStop:Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;

.field private mDistance:I

.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSpaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$Space;",
            ">;"
        }
    .end annotation
.end field

.field private mTime:Ljava/lang/String;

.field private mTrip:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mViaStops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;-><init>()V

    :try_start_0
    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->setId(Ljava/lang/String;)V

    const-string/jumbo v1, "time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->setTime(Ljava/lang/String;)V

    const-string/jumbo v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->setName(Ljava/lang/String;)V

    const-string/jumbo v1, "trip"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->setTrip(Ljava/lang/String;)V

    const-string/jumbo v1, "distance"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->setDistance(I)V

    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->setType(Ljava/lang/String;)V

    const-string/jumbo v1, "departure_stop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->setDepartureStop(Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;)V

    const-string/jumbo v1, "arrival_stop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->setArriveStop(Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;)V

    const-string/jumbo v1, "via_stops"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->parserArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->setViaStops(Ljava/util/List;)V

    const-string/jumbo v1, "alters"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$Alter;->parserArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->setAlters(Ljava/util/List;)V

    const-string/jumbo v1, "spaces"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$Space;->parserArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->setSpaces(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method private setAlters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$Alter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mAlters:Ljava/util/List;

    return-void
.end method

.method private setArriveStop(Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mArriveStop:Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;

    return-void
.end method

.method private setDepartureStop(Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mDepartureStop:Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;

    return-void
.end method

.method private setDistance(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mDistance:I

    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mId:Ljava/lang/String;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mName:Ljava/lang/String;

    return-void
.end method

.method private setSpaces(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$Space;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mSpaces:Ljava/util/List;

    return-void
.end method

.method private setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mTime:Ljava/lang/String;

    return-void
.end method

.method private setTrip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mTrip:Ljava/lang/String;

    return-void
.end method

.method private setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mType:Ljava/lang/String;

    return-void
.end method

.method private setViaStops(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mViaStops:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAlters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$Alter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mAlters:Ljava/util/List;

    return-object v0
.end method

.method public getArriveStop()Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mArriveStop:Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;

    return-object v0
.end method

.method public getDepartureStop()Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mDepartureStop:Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mDistance:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$Space;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mSpaces:Ljava/util/List;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTrip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mTrip:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getViaStops()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->mViaStops:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/its/common/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/its/common/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/its/common/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getTrip()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/its/common/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getDistance()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/its/common/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getDepartureStop()Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getArriveStop()Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getAlters()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getSpaces()Ljava/util/List;

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

    const-string/jumbo v1, "\n\t\t\t\t\t\t[ Railway "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\u7ebf\u8def\u7f16\u53f7: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\u8f66\u6bb5\u8017\u65f6\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\u7ebf\u8def\u540d\u79f0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\u8f66\u6b21\u53f7: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getTrip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\u884c\u8f66\u8ddd\u79bb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getDistance()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\u8f66\u6b21\u7c7b\u578b: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\u59cb\u53d1\u7ad9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getDepartureStop()Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\u9014\u5f84\u7ad9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getViaStops()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\u7ec8\u70b9\u7ad9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getArriveStop()Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\u805a\u5408\u7684\u5907\u9009\u65b9\u6848: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getAlters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\u4ed3\u4f4d\u53ca\u4ef7\u683c\u4fe1\u606f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;->getSpaces()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n\t\t\t\t\t\t]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
