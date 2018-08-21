.class public Lcom/autonavi/its/protocol/model/eta/Path;
.super Ljava/lang/Object;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;
    }
.end annotation


# static fields
.field public static final BLOCK_HEAVY_STATE:I = 0x4

.field public static final BLOCK_STATE:I = 0x3

.field private static DEFAULT_TRAFFIC_BAR_WIDTH:I = 0x0

.field public static final SLOW_STATE:I = 0x2

.field public static final UNBLOCK_STATE:I = 0x1

.field public static final UNKNOW_STATE:I

.field private static mTrafficBarHeight:I

.field private static mergeTmcBarWidth:I


# instance fields
.field private mCoors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;"
        }
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;

.field private mLength:I

.field private mSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusDesc:Ljava/lang/String;

.field private mTrafficLightNum:I

.field private mTravelTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x118

    sput v0, Lcom/autonavi/its/protocol/model/eta/Path;->DEFAULT_TRAFFIC_BAR_WIDTH:I

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/autonavi/its/common/Util;->dipToPixel(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/autonavi/its/protocol/model/eta/Path;->mTrafficBarHeight:I

    const/4 v0, 0x0

    sput v0, Lcom/autonavi/its/protocol/model/eta/Path;->mergeTmcBarWidth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/its/protocol/model/eta/Path;->mCoors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/its/protocol/model/eta/Path;->mSections:Ljava/util/List;

    return-void
.end method

.method public static createTmcBar(Lcom/autonavi/its/protocol/model/eta/Path;I)Landroid/graphics/Bitmap;
    .locals 2

    if-gtz p1, :cond_0

    sget p1, Lcom/autonavi/its/protocol/model/eta/Path;->DEFAULT_TRAFFIC_BAR_WIDTH:I

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/Path;->getSections()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/Path;->getLength()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/autonavi/its/protocol/model/eta/Path;->createTmcBar(Ljava/util/List;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createTmcBar(Ljava/util/List;II)Landroid/graphics/Bitmap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;",
            ">;II)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/16 v12, 0x1f

    const/16 v11, 0xba

    const/4 v10, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    const/4 v2, 0x0

    :goto_1
    if-gt v2, v5, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    invoke-virtual {v6}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->getLength()I

    move-result v1

    add-int/2addr v3, v1

    mul-int v6, v1, p2

    div-int v0, v6, p1

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    invoke-virtual {v6}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->getStatus()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_0
    sget v6, Lcom/autonavi/its/protocol/model/eta/Path;->mTrafficBarHeight:I

    invoke-static {v0, v6, v10, v11, v12}, Lcom/autonavi/its/protocol/model/eta/Path;->dependColorCreateBitmap(IIIII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_1
    sget v6, Lcom/autonavi/its/protocol/model/eta/Path;->mTrafficBarHeight:I

    const/16 v7, 0xff

    invoke-static {v0, v6, v7, v11, v10}, Lcom/autonavi/its/protocol/model/eta/Path;->dependColorCreateBitmap(IIIII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    sget v6, Lcom/autonavi/its/protocol/model/eta/Path;->mTrafficBarHeight:I

    const/16 v7, 0xf3

    const/16 v8, 0x1d

    const/16 v9, 0x20

    invoke-static {v0, v6, v7, v8, v9}, Lcom/autonavi/its/protocol/model/eta/Path;->dependColorCreateBitmap(IIIII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_3
    sget v6, Lcom/autonavi/its/protocol/model/eta/Path;->mTrafficBarHeight:I

    const/16 v7, 0xa8

    const/16 v8, 0x9

    const/16 v9, 0xb

    invoke-static {v0, v6, v7, v8, v9}, Lcom/autonavi/its/protocol/model/eta/Path;->dependColorCreateBitmap(IIIII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-ge v3, p1, :cond_4

    sub-int v6, p1, v3

    mul-int/2addr v6, p2

    div-int v0, v6, p1

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    :cond_3
    sget v6, Lcom/autonavi/its/protocol/model/eta/Path;->mTrafficBarHeight:I

    invoke-static {v0, v6, v10, v11, v12}, Lcom/autonavi/its/protocol/model/eta/Path;->dependColorCreateBitmap(IIIII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget v6, Lcom/autonavi/its/protocol/model/eta/Path;->mergeTmcBarWidth:I

    if-ge v6, p2, :cond_6

    sget v6, Lcom/autonavi/its/protocol/model/eta/Path;->mergeTmcBarWidth:I

    sub-int v0, p2, v6

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    sget v6, Lcom/autonavi/its/protocol/model/eta/Path;->mTrafficBarHeight:I

    invoke-static {v0, v6, v10, v11, v12}, Lcom/autonavi/its/protocol/model/eta/Path;->dependColorCreateBitmap(IIIII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    sget v6, Lcom/autonavi/its/protocol/model/eta/Path;->mTrafficBarHeight:I

    invoke-static {v4, p2, v6}, Lcom/autonavi/its/protocol/model/eta/Path;->mergeBitmap(Ljava/util/ArrayList;II)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static dependColorCreateBitmap(IIIII)Landroid/graphics/Bitmap;
    .locals 3

    sget v2, Lcom/autonavi/its/protocol/model/eta/Path;->mergeTmcBarWidth:I

    add-int/2addr v2, p0

    sput v2, Lcom/autonavi/its/protocol/model/eta/Path;->mergeTmcBarWidth:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v2, 0xff

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    return-object v0
.end method

.method private static mergeBitmap(Ljava/util/ArrayList;II)Landroid/graphics/Bitmap;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    invoke-static {v0, v5, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v8, v11, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    if-gt v6, v8, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    int-to-float v11, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v9, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    add-int/2addr v4, v11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move/from16 v0, p1

    if-ge v4, v0, :cond_2

    sub-int v11, p1, v4

    const/4 v12, 0x0

    const/16 v13, 0xba

    const/16 v14, 0x1f

    move/from16 v0, p2

    invoke-static {v11, v0, v12, v13, v14}, Lcom/autonavi/its/protocol/model/eta/Path;->dependColorCreateBitmap(IIIII)Landroid/graphics/Bitmap;

    move-result-object v9

    int-to-float v11, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v9, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    move/from16 v0, p1

    if-le v4, v0, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-double v12, v11

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v12, v14

    double-to-int v3, v12

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v12, 0x1

    invoke-static {v2, v3, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    :goto_1
    return-object v10

    :cond_3
    move-object v10, v2

    goto :goto_1
.end method

.method private static mergeByStatus(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    invoke-static {v4}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->access$000(Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;)Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_1
    if-ge v0, v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    invoke-virtual {v4}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->getStatus()I

    move-result v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    invoke-virtual {v4}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->getStatus()I

    move-result v4

    if-ne v1, v4, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    invoke-virtual {v5}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->getLength()I

    move-result v5

    invoke-static {v4, v5}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->access$100(Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;I)Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    invoke-static {v4}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->access$000(Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;)Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object p0, v2

    goto :goto_0
.end method

.method public static parser(Lorg/json/JSONObject;)Lcom/autonavi/its/protocol/model/eta/Path;
    .locals 2

    new-instance v0, Lcom/autonavi/its/protocol/model/eta/Path;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/model/eta/Path;-><init>()V

    const-string/jumbo v1, "length"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/eta/Path;->setLength(I)V

    const-string/jumbo v1, "statusdesc"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/eta/Path;->setStatusDesc(Ljava/lang/String;)V

    const-string/jumbo v1, "trafficlightnum"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/eta/Path;->setTrafficLightNum(I)V

    const-string/jumbo v1, "traveltime"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/eta/Path;->setTravelTime(I)V

    const-string/jumbo v1, "polyline"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "polyline"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/Coordinate;->parserArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/eta/Path;->setCoors(Ljava/util/List;)V

    :cond_0
    const-string/jumbo v1, "statussections"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "statussections"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;->parser(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/protocol/model/eta/Path;->mergeByStatus(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/autonavi/its/protocol/model/eta/Path;->setSections(Ljava/util/List;)V

    :cond_1
    return-object v0
.end method

.method private setCoors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/eta/Path;->mCoors:Ljava/util/List;

    return-void
.end method

.method private setLength(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/model/eta/Path;->mLength:I

    return-void
.end method

.method private setSections(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/eta/Path;->mSections:Ljava/util/List;

    return-void
.end method

.method private setStatusDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/eta/Path;->mStatusDesc:Ljava/lang/String;

    return-void
.end method

.method private setTrafficLightNum(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/model/eta/Path;->mTrafficLightNum:I

    return-void
.end method

.method private setTravelTime(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/its/protocol/model/eta/Path;->mTravelTime:I

    return-void
.end method


# virtual methods
.method public getCoordinateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/Coordinate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/eta/Path;->mCoors:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/eta/Path;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/eta/Path;->mLength:I

    return v0
.end method

.method public getSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/its/protocol/model/eta/Path$StatusSection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/eta/Path;->mSections:Ljava/util/List;

    return-object v0
.end method

.method public getStatusDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/model/eta/Path;->mStatusDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getTmcBar(I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1}, Lcom/autonavi/its/protocol/model/eta/Path;->createTmcBar(Lcom/autonavi/its/protocol/model/eta/Path;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getTrafficLightNum()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/eta/Path;->mTrafficLightNum:I

    return v0
.end method

.method public getTravelTime()I
    .locals 1

    iget v0, p0, Lcom/autonavi/its/protocol/model/eta/Path;->mTravelTime:I

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/protocol/model/eta/Path;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "\n  [ Path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n     description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/Path;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n     travel time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/Path;->getTravelTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " second"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n     length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/Path;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n     traffic light number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/Path;->getTrafficLightNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n     status description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/Path;->getStatusDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/Path;->getSections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n     section list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/model/eta/Path;->getSections()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string/jumbo v1, "\n   ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
