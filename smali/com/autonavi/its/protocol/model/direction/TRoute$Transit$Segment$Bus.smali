.class public Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;
.super Ljava/lang/Object;
.source "TRoute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus$BusLine;
    }
.end annotation


# instance fields
.field private mBusLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus$BusLine;",
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

.method public static parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;-><init>()V

    const-string/jumbo v1, "buslines"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus$BusLine;->access$000(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;->setBusLines(Ljava/util/List;)V

    goto :goto_0
.end method

.method private setBusLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus$BusLine;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;->mBusLines:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBusLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus$BusLine;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;->mBusLines:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;->getBusLines()Ljava/util/List;

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

    const-string/jumbo v1, "\n\t\t\t\t[ Bus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n \t\t\t\t\t\u8def\u6bb5\u4fe1\u606f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/direction/TRoute$Transit$Segment$Bus;->getBusLines()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n\t\t\t\t]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
