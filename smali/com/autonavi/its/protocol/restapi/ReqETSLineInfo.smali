.class public Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;
.super Lcom/autonavi/its/protocol/BaseRequest;
.source "ReqETSLineInfo.java"


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyyMMdd"

.field private static final TIME_FORMAT:Ljava/lang/String; = "HHmmss"

.field public static final TYPE:Ljava/lang/String; = "ReqETSLineInfo"

.field private static final URL:Ljava/lang/String; = "https://restapi.amap.com/v3/traffic/etsexpand?"


# instance fields
.field private mDate:Lcom/autonavi/its/protocol/model/EDate;

.field private mETSInfo:Lcom/autonavi/its/protocol/model/ets/ETSInfo;

.field private mEndPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mStartPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mViaPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/autonavi/its/protocol/BaseRequest;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->mStartPoints:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->mViaPoints:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->setUserKey(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/autonavi/its/protocol/model/EDate;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/autonavi/its/protocol/model/EDate;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->setDate(Lcom/autonavi/its/protocol/model/EDate;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, p3}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->setStartPoints(Ljava/util/List;)V

    invoke-direct {p0, p4}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->setViaPoints(Ljava/util/List;)V

    invoke-direct {p0, p5}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->setEndPoints(Ljava/util/List;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->setIsZipParams(Z)V

    const-string/jumbo v2, "key"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->getUserKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v2, "uid"

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/common/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->getDate()Lcom/autonavi/its/protocol/model/EDate;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "lack arrive date\uff01"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string/jumbo v2, "arrivedate"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->getDate()Lcom/autonavi/its/protocol/model/EDate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/its/protocol/model/EDate;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v2, "arrivetime"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->getDate()Lcom/autonavi/its/protocol/model/EDate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/its/protocol/model/EDate;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->getStartPoints()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->getStartPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const-string/jumbo v2, "origin"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->getStartPoints()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/protocol/model/Point;->getPointsLoc(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v2, "origintype"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->getStartPoints()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/protocol/model/Point;->getPointsType(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->getViaPoints()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->getViaPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const-string/jumbo v2, "waypoints"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->getViaPoints()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/protocol/model/Point;->getPointsLoc(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v2, "waypointstype"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->getViaPoints()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/protocol/model/Point;->getPointsType(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->getEndPoints()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->getEndPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    const-string/jumbo v2, "destination"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->getEndPoints()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/protocol/model/Point;->getPointsLoc(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    const-string/jumbo v2, "destinationtype"

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->getEndPoints()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/its/protocol/model/Point;->getPointsType(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.autonavi.its"

    const-string/jumbo v4, "2.5"

    invoke-static {v2, v3, v4}, Lcom/autonavi/its/common/restapi/APIUtil;->getHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->setHeader(Ljava/util/Map;)V

    return-void

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "lack orgin point\uff01"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "lack destination point\uff01"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private setDate(Lcom/autonavi/its/protocol/model/EDate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->mDate:Lcom/autonavi/its/protocol/model/EDate;

    return-void
.end method

.method private setETSInfo(Lcom/autonavi/its/protocol/model/ets/ETSInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->mETSInfo:Lcom/autonavi/its/protocol/model/ets/ETSInfo;

    return-void
.end method

.method private setEndPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->mEndPoints:Ljava/util/List;

    goto :goto_0
.end method

.method private setStartPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->mStartPoints:Ljava/util/List;

    goto :goto_0
.end method

.method private setViaPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->mViaPoints:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public dealBusinessData(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "status"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->setCode(I)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->getCode()I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->setIsBusinessSuccess(Z)V

    const-string/jumbo v2, "info"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->setMsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->isBusinessSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "routes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/autonavi/its/protocol/model/ets/ETSInfo;->parser(Lorg/json/JSONArray;)Lcom/autonavi/its/protocol/model/ets/ETSInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->setETSInfo(Lcom/autonavi/its/protocol/model/ets/ETSInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->setException(Ljava/lang/Exception;)Lcom/autonavi/its/protocol/BaseRequest;

    invoke-virtual {p0, v3}, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->setIsBusinessSuccess(Z)V

    goto :goto_1
.end method

.method public getDate()Lcom/autonavi/its/protocol/model/EDate;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->mDate:Lcom/autonavi/its/protocol/model/EDate;

    return-object v0
.end method

.method public getETSInfo()Lcom/autonavi/its/protocol/model/ets/ETSInfo;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->mETSInfo:Lcom/autonavi/its/protocol/model/ets/ETSInfo;

    return-object v0
.end method

.method public getEndPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->mEndPoints:Ljava/util/List;

    return-object v0
.end method

.method public getStartPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->mStartPoints:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ReqETSLineInfo"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "https://restapi.amap.com/v3/traffic/etsexpand?"

    return-object v0
.end method

.method public getViaPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/restapi/ReqETSLineInfo;->mViaPoints:Ljava/util/List;

    return-object v0
.end method
