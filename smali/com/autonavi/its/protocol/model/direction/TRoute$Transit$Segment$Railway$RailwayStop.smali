.class public Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;
.super Ljava/lang/Object;
.source "TRoute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RailwayStop"
.end annotation


# instance fields
.field private mAdcode:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mIsEnd:Z

.field private mIsStart:Z

.field private mLocation:Lcom/autonavi/its/protocol/model/Coordinate;

.field private mName:Ljava/lang/String;

.field private mTime:Ljava/lang/String;

.field private mWait:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;-><init>()V

    const-string/jumbo v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->setId(Ljava/lang/String;)V

    const-string/jumbo v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->setName(Ljava/lang/String;)V

    const-string/jumbo v1, "location"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/Coordinate;->parserProtocolString(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->setLocation(Lcom/autonavi/its/protocol/model/Coordinate;)V

    const-string/jumbo v1, "adcode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->setAdcode(Ljava/lang/String;)V

    const-string/jumbo v1, "time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->setTime(Ljava/lang/String;)V

    const-string/jumbo v1, "wait"

    const/4 v4, -0x1

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->setWait(I)V

    const-string/jumbo v1, "start"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->setIsStart(Z)V

    const-string/jumbo v1, "end"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_2
    invoke-direct {v0, v2}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->setIsEnd(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
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
            "Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setAdcode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->mAdcode:Ljava/lang/String;

    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->mId:Ljava/lang/String;

    return-void
.end method

.method private setIsEnd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->mIsEnd:Z

    return-void
.end method

.method private setIsStart(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->mIsStart:Z

    return-void
.end method

.method private setLocation(Lcom/autonavi/its/protocol/model/Coordinate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->mLocation:Lcom/autonavi/its/protocol/model/Coordinate;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->mName:Ljava/lang/String;

    return-void
.end method

.method private setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->mTime:Ljava/lang/String;

    return-void
.end method

.method private setWait(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->mWait:I

    return-void
.end method


# virtual methods
.method public getAdcode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->mAdcode:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/autonavi/its/protocol/model/Coordinate;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->mLocation:Lcom/autonavi/its/protocol/model/Coordinate;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public getWait()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->mWait:I

    return v0
.end method

.method public isEnd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->mIsEnd:Z

    return v0
.end method

.method public isStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->mIsStart:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "\n\t\t\t\t\t\t\t[ RailwayStop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\t\u7ad9\u70b9ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\t\u7ad9\u70b9\u540d\u79f0\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\t\u7ad9\u70b9\u4f4d\u7f6e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->getLocation()Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\t\u57ce\u5e02\u7801: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->getAdcode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\t\u53d1\u8f66\u65f6\u95f4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\t\u9014\u5f84\u7ad9\u70b9\u7684\u505c\u9760\u65f6\u95f4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->getWait()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5206\u949f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\t\u662f\u5426\u59cb\u53d1\u7ad9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->isStart()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\t\t\t\u662f\u5426\u7ec8\u70b9\u7ad9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Railway$RailwayStop;->isEnd()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n\t\t\t\t\t\t\t]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
