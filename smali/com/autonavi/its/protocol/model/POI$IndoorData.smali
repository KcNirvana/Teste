.class public Lcom/autonavi/its/protocol/model/POI$IndoorData;
.super Ljava/lang/Object;
.source "POI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/its/protocol/model/POI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndoorData"
.end annotation


# instance fields
.field private mCPID:Ljava/lang/String;

.field private mFloor:I

.field private mTrueFloor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/POI$IndoorData;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/its/protocol/model/POI$IndoorData;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/model/POI$IndoorData;-><init>()V

    const-string/jumbo v1, "cpid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/POI$IndoorData;->setCPID(Ljava/lang/String;)V

    const-string/jumbo v1, "floor"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/POI$IndoorData;->setFloor(I)V

    const-string/jumbo v1, "truefloor"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/POI$IndoorData;->setTrueFloor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCPID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI$IndoorData;->mCPID:Ljava/lang/String;

    return-void
.end method

.method private setFloor(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/model/POI$IndoorData;->mFloor:I

    return-void
.end method

.method private setTrueFloor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI$IndoorData;->mTrueFloor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCPID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI$IndoorData;->mCPID:Ljava/lang/String;

    return-object v0
.end method

.method public getFloor()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/POI$IndoorData;->mFloor:I

    return v0
.end method

.method public getTrueFloor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI$IndoorData;->mTrueFloor:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "\n        \u5ba4\u5185\u5730\u56fe ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "        \u7236\u7ea7POI id"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI$IndoorData;->getCPID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "        \u697c\u5c42\u7d22\u5f15"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI$IndoorData;->getFloor()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    const-string/jumbo v1, "        \u6240\u5728\u697c\u5c42"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI$IndoorData;->getTrueFloor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\n         ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
