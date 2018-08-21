.class public Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;
.super Ljava/lang/Object;
.source "POI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/its/protocol/model/POI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BusinessDepthInfo"
.end annotation


# instance fields
.field private mCost:Ljava/lang/String;

.field private mRating:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;-><init>()V

    const-string/jumbo v1, "rating"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;->setRating(Ljava/lang/String;)V

    const-string/jumbo v1, "cost"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/common/Util;->filterEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;->setCost(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;->mCost:Ljava/lang/String;

    return-void
.end method

.method private setRating(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;->mRating:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;->mCost:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;->mRating:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;->getCost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;->getRating()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

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

    const-string/jumbo v1, "\n        \u5546\u4e1a\u6df1\u5ea6\u4fe1\u606f ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "        \u8bc4\u5206"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;->getRating()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "        \u4eba\u5747\u6d88\u8d39"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/POI$BusinessDepthInfo;->getCost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/autonavi/its/common/Util;->createLine(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\n         ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
