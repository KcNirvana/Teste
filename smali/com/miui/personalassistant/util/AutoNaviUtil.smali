.class public Lcom/miui/personalassistant/util/AutoNaviUtil;
.super Ljava/lang/Object;
.source "AutoNaviUtil.java"

# interfaces
.implements Lcom/miui/personalassistant/util/MapHelper;


# static fields
.field private static final REQ_STATUS_FAIL:I = 0x1

.field private static final REQ_STATUS_NETERROR:I = 0x2

.field public static final REQ_STATUS_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "GeoLocationManager.AutoNaviUtil"

.field private static sInstance:Lcom/miui/personalassistant/util/AutoNaviUtil;

.field private static userKey:Ljava/lang/String;


# instance fields
.field private KEYWORD_RECOMMEND:Ljava/lang/String;

.field private KEYWORD_RECOMMEND_UNIT:[Ljava/lang/String;

.field private KEY_WORD_ARR:[Ljava/lang/String;

.field private MAP_MSG_SUFIX:Ljava/lang/String;

.field private MSG_TITLE_ARR:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGeoHandler:Landroid/os/Handler;

.field private mStartAddress:Ljava/lang/String;

.field private mStartCity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b08000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->KEY_WORD_ARR:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b080010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->MSG_TITLE_ARR:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b0230

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->KEYWORD_RECOMMEND:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b08000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->KEYWORD_RECOMMEND_UNIT:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b0266

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->MAP_MSG_SUFIX:Ljava/lang/String;

    :try_start_0
    const-string/jumbo v1, "lbs.amap.com.normal"

    invoke-static {v1}, Lcom/autonavi/its/protocol/RequestManager;->getUserKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/personalassistant/util/AutoNaviUtil;->userKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GeoLocationManager.AutoNaviUtil"

    const-string/jumbo v2, "request user key:"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/util/AutoNaviUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->mStartAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/personalassistant/util/AutoNaviUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->mStartAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/util/AutoNaviUtil;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->mStartCity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/personalassistant/util/AutoNaviUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->mStartCity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/util/AutoNaviUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/miui/personalassistant/util/AutoNaviUtil;->doReqETALineInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/util/AutoNaviUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/util/AutoNaviUtil;->getMsgTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/util/AutoNaviUtil;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/util/AutoNaviUtil;->getMsgByTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/util/AutoNaviUtil;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addOnePoint(Lcom/autonavi/its/protocol/model/Point;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/its/protocol/model/Point;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Point;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private arr2Str(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sub-int v4, v2, v0

    if-le v4, v5, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\uff0c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private doReqETALineInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "GeoLocationManager.AutoNaviUtil"

    const-string/jumbo v4, " getEtaLineInfo paramMissing"

    invoke-static {v2, v4}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/personalassistant/util/AutoNaviUtil;->sendQuiteMsg()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    new-instance v1, Lcom/autonavi/its/protocol/model/Point;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/autonavi/its/protocol/model/Point;-><init>(DDLjava/lang/String;)V

    new-instance v3, Lcom/autonavi/its/protocol/model/Point;

    invoke-static {p4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {p5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/autonavi/its/protocol/model/Point;-><init>(DDLjava/lang/String;)V

    sget-object v5, Lcom/miui/personalassistant/util/AutoNaviUtil;->userKey:Ljava/lang/String;

    const/16 v8, 0xa

    move-object v4, p0

    move-object v6, v1

    move-object v7, v3

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v9}, Lcom/miui/personalassistant/util/AutoNaviUtil;->reqETALineInfo(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Point;Lcom/autonavi/its/protocol/model/Point;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private getMsgByTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "\uff0c|\uff1b"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    array-length v3, v4

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v2, v4, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->KEY_WORD_ARR:[Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lcom/miui/personalassistant/util/AutoNaviUtil;->showByKeyword(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->KEYWORD_RECOMMEND:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int v5, v3, v1

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    add-int/lit8 v5, v1, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v5, v1, 0x1

    aget-object v5, v4, v5

    iget-object v6, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->KEYWORD_RECOMMEND_UNIT:[Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/miui/personalassistant/util/AutoNaviUtil;->showByKeyword(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v5, v1, 0x1

    aget-object v5, v4, v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/miui/personalassistant/util/AutoNaviUtil;->arr2Str(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private getMsgTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->MSG_TITLE_ARR:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  |  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  |  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private reqETALineInfo(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Point;Lcom/autonavi/its/protocol/model/Point;ILjava/lang/String;)V
    .locals 5

    const-string/jumbo v1, "GeoLocationManager.AutoNaviUtil"

    const-string/jumbo v2, " reqETALineInfo sp:%s ep:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;-><init>(Ljava/lang/String;Lcom/autonavi/its/protocol/model/Point;Lcom/autonavi/its/protocol/model/Point;I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->setTrafficDataLengthLimit(I)V

    new-instance v1, Lcom/miui/personalassistant/util/AutoNaviUtil$2;

    invoke-direct {v1, p0, p5}, Lcom/miui/personalassistant/util/AutoNaviUtil$2;-><init>(Lcom/miui/personalassistant/util/AutoNaviUtil;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/its/protocol/restapi/ReqETALineInfo;->doRequest(Lcom/autonavi/its/protocol/ReqCallback;)V

    return-void
.end method

.method private showByKeyword(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    array-length v3, p2

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p2, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAddressByCode(Ljava/lang/String;Ljava/lang/String;Lcom/miui/personalassistant/util/MapHelper$AddressCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/miui/personalassistant/util/AutoNaviUtil;->getAddressByCode(Ljava/lang/String;Ljava/lang/String;ZLcom/miui/personalassistant/util/MapHelper$AddressCallback;)V

    return-void
.end method

.method public getAddressByCode(Ljava/lang/String;Ljava/lang/String;ZLcom/miui/personalassistant/util/MapHelper$AddressCallback;)V
    .locals 8

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/autonavi/its/common/Util;->isRequiredParamMissing([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "GeoLocationManager.AutoNaviUtil"

    const-string/jumbo v2, " getAddressByCode paramMissing"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/personalassistant/util/AutoNaviUtil;->sendQuiteMsg()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;

    sget-object v2, Lcom/miui/personalassistant/util/AutoNaviUtil;->userKey:Ljava/lang/String;

    new-instance v3, Lcom/autonavi/its/protocol/model/Point;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/autonavi/its/protocol/model/Point;-><init>(DD)V

    invoke-direct {p0, v3}, Lcom/miui/personalassistant/util/AutoNaviUtil;->addOnePoint(Lcom/autonavi/its/protocol/model/Point;)Ljava/util/List;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v4, p3}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;-><init>(Ljava/lang/String;Ljava/util/List;IZ)V

    new-instance v2, Lcom/miui/personalassistant/util/AutoNaviUtil$3;

    invoke-direct {v2, p0, p4}, Lcom/miui/personalassistant/util/AutoNaviUtil$3;-><init>(Lcom/miui/personalassistant/util/AutoNaviUtil;Lcom/miui/personalassistant/util/MapHelper$AddressCallback;)V

    invoke-virtual {v1, v2}, Lcom/autonavi/its/protocol/restapi/ReqReverseGeoCode;->doRequest(Lcom/autonavi/its/protocol/ReqCallback;)V

    goto :goto_0
.end method

.method public getEtaLineInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    aput-object p5, v0, v1

    const/4 v1, 0x4

    aput-object p6, v0, v1

    invoke-static {v0}, Lcom/autonavi/its/common/Util;->isRequiredParamMissing([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v0, "GeoLocationManager.AutoNaviUtil"

    const-string/jumbo v1, " getEtaLineInfo paramMissing "

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/personalassistant/util/AutoNaviUtil;->sendQuiteMsg()V

    :goto_0
    return-void

    :cond_0
    iput-object p3, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->mStartAddress:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct/range {p0 .. p7}, Lcom/miui/personalassistant/util/AutoNaviUtil;->doReqETALineInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/miui/personalassistant/util/AutoNaviUtil$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/miui/personalassistant/util/AutoNaviUtil$1;-><init>(Lcom/miui/personalassistant/util/AutoNaviUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/personalassistant/util/AutoNaviUtil;->getAddressByCode(Ljava/lang/String;Ljava/lang/String;Lcom/miui/personalassistant/util/MapHelper$AddressCallback;)V

    goto :goto_0
.end method

.method public sendQuiteMsg()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->mGeoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->mGeoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->mGeoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/AutoNaviUtil;->mGeoHandler:Landroid/os/Handler;

    return-void
.end method
