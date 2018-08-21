.class public Lcom/autonavi/its/protocol/model/eta/ETAInfo;
.super Ljava/lang/Object;
.source "ETAInfo.java"


# static fields
.field public static final TRAFFIC_STATUS_CONGESTION:I = 0x2

.field private static final TRAFFIC_STATUS_CONGESTION_CONTENT:Ljava/lang/String; = "\u6709\u4e25\u91cd\u62e5\u5835"

.field public static final TRAFFIC_STATUS_FLOW:I = 0x3

.field private static final TRAFFIC_STATUS_FLOW_CONTENT_1:Ljava/lang/String; = "\u73b0\u5728\u8def\u51b5\u7545\u901a"

.field private static final TRAFFIC_STATUS_FLOW_CONTENT_2:Ljava/lang/String; = "\u8def\u7ebf\u65e0\u660e\u663e\u62e5\u5835"

.field public static final TRAFFIC_STATUS_INCIDENT:I = 0x4

.field private static final TRAFFIC_STATUS_INCIDENT_CONTENT:Ljava/lang/String; = "\u6709\u5f02\u5e38\u4ea4\u901a\u4e8b\u4ef6"

.field public static final TRAFFIC_STATUS_STAGGER_SHIFTS:I = 0x1

.field private static final TRAFFIC_STATUS_STAGGER_SHIFTS_CONTENT:Ljava/lang/String; = "\u5efa\u8bae\u60a8\u9519\u5cf0\u51fa\u884c"


# instance fields
.field private mDepartureTime:I

.field private mFullDesc:Ljava/lang/String;

.field private mHasSuggestion:Z

.field private mMessage:Ljava/lang/String;

.field private mMessageTitle:Ljava/lang/String;

.field private mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/eta/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeConsuming:I

.field private mTimeSaving:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->mPaths:Ljava/util/List;

    return-void
.end method

.method private addPath(Lcom/autonavi/its/protocol/model/eta/Path;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->mPaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final msgTitleMapToStatusCode(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "\u5efa\u8bae\u60a8\u9519\u5cf0\u51fa\u884c"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "\u6709\u4e25\u91cd\u62e5\u5835"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "\u73b0\u5728\u8def\u51b5\u7545\u901a"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4

    const-string/jumbo v1, "\u8def\u7ebf\u65e0\u660e\u663e\u62e5\u5835"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "\u6709\u5f02\u5e38\u4ea4\u901a\u4e8b\u4ef6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/eta/ETAInfo;
    .locals 10

    new-instance v7, Lcom/autonavi/its/protocol/model/eta/ETAInfo;

    invoke-direct {v7}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;-><init>()V

    if-eqz p0, :cond_2

    const-string/jumbo v8, "fulldescription"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->setFullDesc(Ljava/lang/String;)V

    const-string/jumbo v8, "pushinfo"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "pushinfo"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v8, "pushtitle"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->setMessageTitle(Ljava/lang/String;)V

    const-string/jumbo v8, "pushmessage"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->setMessage(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v8, "departuresuggestion"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "departuresuggestion"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v8, "hassuggestion"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-direct {v7, v8}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->setHasSuggestion(Z)V

    invoke-virtual {v7}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->hasSuggestion()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "departuretime"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->setDepartureTime(I)V

    const-string/jumbo v8, "timeconsuming"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->setTimeConsuming(I)V

    const-string/jumbo v8, "timesaving"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->setTimeSaving(I)V

    :cond_1
    const-string/jumbo v8, "description"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "paths"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "paths"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string/jumbo v8, "description"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "etas"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/autonavi/its/protocol/model/eta/Path;->parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/eta/Path;

    move-result-object v5

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/autonavi/its/protocol/model/eta/Path;->setDescription(Ljava/lang/String;)V

    invoke-direct {v7, v5}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->addPath(Lcom/autonavi/its/protocol/model/eta/Path;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v7
.end method

.method private setDepartureTime(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->mDepartureTime:I

    return-void
.end method

.method private setFullDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->mFullDesc:Ljava/lang/String;

    return-void
.end method

.method private setHasSuggestion(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->mHasSuggestion:Z

    return-void
.end method

.method private setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->mMessage:Ljava/lang/String;

    return-void
.end method

.method private setMessageTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->mMessageTitle:Ljava/lang/String;

    return-void
.end method

.method private setTimeConsuming(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->mTimeConsuming:I

    return-void
.end method

.method private setTimeSaving(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->mTimeSaving:I

    return-void
.end method


# virtual methods
.method public getDepartureTime()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->mDepartureTime:I

    return v0
.end method

.method public getFullDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->mFullDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->mMessageTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/eta/Path;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->mPaths:Ljava/util/List;

    return-object v0
.end method

.method public getTimeConsuming()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->mTimeConsuming:I

    return v0
.end method

.method public getTimeSaving()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->mTimeSaving:I

    return v0
.end method

.method public hasSuggestion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->mHasSuggestion:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "\n[ ETAInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n   fullDesc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->getFullDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n   message Title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->getMessageTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n   message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n\n   path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->getPaths()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->hasSuggestion()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n   departure time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->getDepartureTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n   time consuming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->getTimeConsuming()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n   time saving:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/ETAInfo;->getTimeSaving()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string/jumbo v1, "\n ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
