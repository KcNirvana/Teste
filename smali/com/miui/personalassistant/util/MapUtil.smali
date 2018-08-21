.class public Lcom/miui/personalassistant/util/MapUtil;
.super Ljava/lang/Object;
.source "MapUtil.java"


# static fields
.field public static a:D

.field public static ee:D

.field public static pi:D

.field private static x_pi:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x404a2e1077c7044eL    # 52.35987755982988

    sput-wide v0, Lcom/miui/personalassistant/util/MapUtil;->x_pi:D

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    sput-wide v0, Lcom/miui/personalassistant/util/MapUtil;->pi:D

    const-wide v0, 0x415854c140000000L    # 6378245.0

    sput-wide v0, Lcom/miui/personalassistant/util/MapUtil;->a:D

    const-wide v0, 0x3f7b6a8faf80ef0bL    # 0.006693421622965943

    sput-wide v0, Lcom/miui/personalassistant/util/MapUtil;->ee:D

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Convert_BD09_To_GCJ02(DD)V
    .locals 14

    const-wide v8, 0x3f7a9fbe76c8b439L    # 0.0065

    sub-double v2, p2, v8

    const-wide v8, 0x3f789374bc6a7efaL    # 0.006

    sub-double v4, p0, v8

    mul-double v8, v2, v2

    mul-double v10, v4, v4

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide v10, 0x3ef4f8b588e368f1L    # 2.0E-5

    sget-wide v12, Lcom/miui/personalassistant/util/MapUtil;->x_pi:D

    mul-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double v6, v8, v10

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v10, 0x3ec92a737110e454L    # 3.0E-6

    sget-wide v12, Lcom/miui/personalassistant/util/MapUtil;->x_pi:D

    mul-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double v0, v8, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double p2, v6, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double p0, v6, v8

    return-void
.end method

.method public static Convert_GCJ02_To_BD09(DD)V
    .locals 14

    move-wide/from16 v2, p2

    move-wide v4, p0

    mul-double v8, v2, v2

    mul-double v10, v4, v4

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide v10, 0x3ef4f8b588e368f1L    # 2.0E-5

    sget-wide v12, Lcom/miui/personalassistant/util/MapUtil;->x_pi:D

    mul-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double v6, v8, v10

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v10, 0x3ec92a737110e454L    # 3.0E-6

    sget-wide v12, Lcom/miui/personalassistant/util/MapUtil;->x_pi:D

    mul-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double v0, v8, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    const-wide v10, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double p2, v8, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    const-wide v10, 0x3f789374bc6a7efaL    # 0.006

    add-double p0, v8, v10

    return-void
.end method

.method public static getBDLat(DD)D
    .locals 14

    move-wide/from16 v2, p2

    move-wide v4, p0

    mul-double v8, v2, v2

    mul-double v10, v4, v4

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide v10, 0x3ef4f8b588e368f1L    # 2.0E-5

    sget-wide v12, Lcom/miui/personalassistant/util/MapUtil;->x_pi:D

    mul-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double v6, v8, v10

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v10, 0x3ec92a737110e454L    # 3.0E-6

    sget-wide v12, Lcom/miui/personalassistant/util/MapUtil;->x_pi:D

    mul-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double v0, v8, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    const-wide v10, 0x3f789374bc6a7efaL    # 0.006

    add-double p0, v8, v10

    return-wide p0
.end method

.method public static getBDLng(DD)D
    .locals 14

    move-wide/from16 v2, p2

    move-wide v4, p0

    mul-double v8, v2, v2

    mul-double v10, v4, v4

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide v10, 0x3ef4f8b588e368f1L    # 2.0E-5

    sget-wide v12, Lcom/miui/personalassistant/util/MapUtil;->x_pi:D

    mul-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double v6, v8, v10

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v10, 0x3ec92a737110e454L    # 3.0E-6

    sget-wide v12, Lcom/miui/personalassistant/util/MapUtil;->x_pi:D

    mul-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double v0, v8, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    const-wide v10, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double p2, v8, v10

    return-wide p2
.end method

.method public static gps84_To_Gcj02_lat(DD)D
    .locals 18

    invoke-static/range {p0 .. p3}, Lcom/miui/personalassistant/util/MapUtil;->outOfChina(DD)Z

    move-result v10

    if-eqz v10, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    return-wide v4

    :cond_0
    const-wide v10, 0x405a400000000000L    # 105.0

    sub-double v10, p2, v10

    const-wide v12, 0x4041800000000000L    # 35.0

    sub-double v12, p0, v12

    invoke-static {v10, v11, v12, v13}, Lcom/miui/personalassistant/util/MapUtil;->transformLat(DD)D

    move-result-wide v0

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double v10, p0, v10

    sget-wide v12, Lcom/miui/personalassistant/util/MapUtil;->pi:D

    mul-double v6, v10, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sget-wide v12, Lcom/miui/personalassistant/util/MapUtil;->ee:D

    mul-double/2addr v12, v2

    mul-double/2addr v12, v2

    sub-double v2, v10, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide v10, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v0

    sget-wide v12, Lcom/miui/personalassistant/util/MapUtil;->a:D

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sget-wide v16, Lcom/miui/personalassistant/util/MapUtil;->ee:D

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    mul-double v14, v2, v8

    div-double/2addr v12, v14

    sget-wide v14, Lcom/miui/personalassistant/util/MapUtil;->pi:D

    mul-double/2addr v12, v14

    div-double v0, v10, v12

    add-double v4, p0, v0

    goto :goto_0
.end method

.method public static gps84_To_Gcj02_lon(DD)D
    .locals 16

    invoke-static/range {p0 .. p3}, Lcom/miui/personalassistant/util/MapUtil;->outOfChina(DD)Z

    move-result v10

    if-eqz v10, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    return-wide v4

    :cond_0
    const-wide v10, 0x405a400000000000L    # 105.0

    sub-double v10, p2, v10

    const-wide v12, 0x4041800000000000L    # 35.0

    sub-double v12, p0, v12

    invoke-static {v10, v11, v12, v13}, Lcom/miui/personalassistant/util/MapUtil;->transformLon(DD)D

    move-result-wide v0

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double v10, p0, v10

    sget-wide v12, Lcom/miui/personalassistant/util/MapUtil;->pi:D

    mul-double v6, v10, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sget-wide v12, Lcom/miui/personalassistant/util/MapUtil;->ee:D

    mul-double/2addr v12, v2

    mul-double/2addr v12, v2

    sub-double v2, v10, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide v10, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v0

    sget-wide v12, Lcom/miui/personalassistant/util/MapUtil;->a:D

    div-double/2addr v12, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    sget-wide v14, Lcom/miui/personalassistant/util/MapUtil;->pi:D

    mul-double/2addr v12, v14

    div-double v0, v10, v12

    add-double v4, p2, v0

    goto :goto_0
.end method

.method public static outOfChina(DD)Z
    .locals 4

    const/4 v0, 0x1

    const-wide v2, 0x4052004189374bc7L    # 72.004

    cmpg-double v1, p2, v2

    if-ltz v1, :cond_0

    const-wide v2, 0x40613ab5dcc63f14L    # 137.8347

    cmpl-double v1, p2, v2

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide v2, 0x3fea89a027525461L    # 0.8293

    cmpg-double v1, p0, v2

    if-ltz v1, :cond_0

    const-wide v2, 0x404be9de69ad42c4L    # 55.8271

    cmpl-double v1, p0, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static transformLat(DD)D
    .locals 10

    const-wide/high16 v2, -0x3fa7000000000000L    # -100.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, p2

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, p0

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    const-wide v4, 0x3fc999999999999aL    # 0.2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double v0, v2, v4

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, p0

    sget-wide v6, Lcom/miui/personalassistant/util/MapUtil;->pi:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, p0

    sget-wide v8, Lcom/miui/personalassistant/util/MapUtil;->pi:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    sget-wide v4, Lcom/miui/personalassistant/util/MapUtil;->pi:D

    mul-double/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double v6, p2, v6

    sget-wide v8, Lcom/miui/personalassistant/util/MapUtil;->pi:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    div-double v4, p2, v4

    sget-wide v6, Lcom/miui/personalassistant/util/MapUtil;->pi:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4074000000000000L    # 320.0

    sget-wide v6, Lcom/miui/personalassistant/util/MapUtil;->pi:D

    mul-double/2addr v6, p2

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static transformLon(DD)D
    .locals 10

    const-wide v2, 0x4072c00000000000L    # 300.0

    add-double/2addr v2, p0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, p0

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, p0

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double v0, v2, v4

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, p0

    sget-wide v6, Lcom/miui/personalassistant/util/MapUtil;->pi:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, p0

    sget-wide v8, Lcom/miui/personalassistant/util/MapUtil;->pi:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    sget-wide v4, Lcom/miui/personalassistant/util/MapUtil;->pi:D

    mul-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double v6, p0, v6

    sget-wide v8, Lcom/miui/personalassistant/util/MapUtil;->pi:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x4062c00000000000L    # 150.0

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    div-double v4, p0, v4

    sget-wide v6, Lcom/miui/personalassistant/util/MapUtil;->pi:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4072c00000000000L    # 300.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    div-double v6, p0, v6

    sget-wide v8, Lcom/miui/personalassistant/util/MapUtil;->pi:D

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method
