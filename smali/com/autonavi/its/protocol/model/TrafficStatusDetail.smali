.class public Lcom/autonavi/its/protocol/model/TrafficStatusDetail;
.super Lcom/autonavi/its/protocol/model/RecommendDetailBase;
.source "TrafficStatusDetail.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/its/protocol/model/RecommendDetailBase;-><init>()V

    return-void
.end method

.method public static parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/TrafficStatusDetail;
    .locals 1

    new-instance v0, Lcom/autonavi/its/protocol/model/TrafficStatusDetail;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/model/TrafficStatusDetail;-><init>()V

    invoke-virtual {v0, p0}, Lcom/autonavi/its/protocol/model/TrafficStatusDetail;->baseParser(Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "\nTrafficStatusDetail ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/TrafficStatusDetail;->baseToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
