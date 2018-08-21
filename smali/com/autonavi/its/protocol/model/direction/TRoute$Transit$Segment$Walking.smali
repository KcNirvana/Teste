.class public Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;
.super Ljava/lang/Object;
.source "TRoute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Walking"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking$Step;
    }
.end annotation


# instance fields
.field private mDestination:Lcom/autonavi/its/protocol/model/Coordinate;

.field private mDistance:I

.field private mDuration:I

.field private mOrigin:Lcom/autonavi/its/protocol/model/Coordinate;

.field private mSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking$Step;",
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

.method public static parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;
    .locals 3

    const/4 v2, -0x1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;-><init>()V

    const-string/jumbo v1, "origin"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/Coordinate;->parserProtocolString(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->setOrigin(Lcom/autonavi/its/protocol/model/Coordinate;)V

    const-string/jumbo v1, "destination"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/Coordinate;->parserProtocolString(Ljava/lang/String;)Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->setDestination(Lcom/autonavi/its/protocol/model/Coordinate;)V

    const-string/jumbo v1, "distance"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->setDistance(I)V

    const-string/jumbo v1, "duration"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->setDuration(I)V

    const-string/jumbo v1, "steps"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking$Step;->parserArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->setSteps(Ljava/util/List;)V

    goto :goto_0
.end method

.method private setDestination(Lcom/autonavi/its/protocol/model/Coordinate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->mDestination:Lcom/autonavi/its/protocol/model/Coordinate;

    return-void
.end method

.method private setDistance(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->mDistance:I

    return-void
.end method

.method private setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->mDuration:I

    return-void
.end method

.method private setOrigin(Lcom/autonavi/its/protocol/model/Coordinate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->mOrigin:Lcom/autonavi/its/protocol/model/Coordinate;

    return-void
.end method

.method private setSteps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking$Step;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->mSteps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDestination()Lcom/autonavi/its/protocol/model/Coordinate;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->mDestination:Lcom/autonavi/its/protocol/model/Coordinate;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->mDistance:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->mDuration:I

    return v0
.end method

.method public getOrigin()Lcom/autonavi/its/protocol/model/Coordinate;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->mOrigin:Lcom/autonavi/its/protocol/model/Coordinate;

    return-object v0
.end method

.method public getSteps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking$Step;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->mSteps:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->getOrigin()Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->getDestination()Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->getDistance()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->getDuration()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->getSteps()Ljava/util/List;

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

    const-string/jumbo v1, "\n\t\t\t[ Walking "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\u8d77\u70b9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->getOrigin()Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\u7ec8\u70b9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->getDestination()Lcom/autonavi/its/protocol/model/Coordinate;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\u6b65\u884c\u8ddd\u79bb : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->getDistance()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u7c73"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\u6b65\u884c\u65f6\u95f4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\u8def\u6bb5\u4fe1\u606f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Walking;->getSteps()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n\t\t\t]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
