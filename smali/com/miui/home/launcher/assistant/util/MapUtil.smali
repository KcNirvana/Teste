.class public Lcom/miui/home/launcher/assistant/util/MapUtil;
.super Ljava/lang/Object;
.source "MapUtil.java"


# static fields
.field private static AUTO_NAVI:Ljava/lang/String; = null

.field private static final EARTH_RADIUS:D = 6378.137

.field private static MAP_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static baiduStr:Ljava/lang/String;

.field private static x_pi:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "androidamap://route?sourceApplication="

    sput-object v0, Lcom/miui/home/launcher/assistant/util/MapUtil;->AUTO_NAVI:Ljava/lang/String;

    const-string/jumbo v0, "intent://map/direction?origin=latlng:"

    sput-object v0, Lcom/miui/home/launcher/assistant/util/MapUtil;->baiduStr:Ljava/lang/String;

    const-wide v0, 0x404a2e1077c7044eL    # 52.35987755982988

    sput-wide v0, Lcom/miui/home/launcher/assistant/util/MapUtil;->x_pi:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/assistant/util/MapUtil;->MAP_LIST:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/home/launcher/assistant/util/MapUtil;->MAP_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.autonavi.minimap"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/home/launcher/assistant/util/MapUtil;->MAP_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.baidu.BaiduMap"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    sget-wide v12, Lcom/miui/home/launcher/assistant/util/MapUtil;->x_pi:D

    mul-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double v6, v8, v10

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v10, 0x3ec92a737110e454L    # 3.0E-6

    sget-wide v12, Lcom/miui/home/launcher/assistant/util/MapUtil;->x_pi:D

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

    sget-wide v12, Lcom/miui/home/launcher/assistant/util/MapUtil;->x_pi:D

    mul-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double v6, v8, v10

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v10, 0x3ec92a737110e454L    # 3.0E-6

    sget-wide v12, Lcom/miui/home/launcher/assistant/util/MapUtil;->x_pi:D

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

    sget-wide v12, Lcom/miui/home/launcher/assistant/util/MapUtil;->x_pi:D

    mul-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double v6, v8, v10

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v10, 0x3ec92a737110e454L    # 3.0E-6

    sget-wide v12, Lcom/miui/home/launcher/assistant/util/MapUtil;->x_pi:D

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

    sget-wide v12, Lcom/miui/home/launcher/assistant/util/MapUtil;->x_pi:D

    mul-double/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double v6, v8, v10

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    const-wide v10, 0x3ec92a737110e454L    # 3.0E-6

    sget-wide v12, Lcom/miui/home/launcher/assistant/util/MapUtil;->x_pi:D

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

.method public static getDistance(DDDD)D
    .locals 20

    invoke-static/range {p0 .. p1}, Lcom/miui/home/launcher/assistant/util/MapUtil;->rad(D)D

    move-result-wide v4

    invoke-static/range {p4 .. p5}, Lcom/miui/home/launcher/assistant/util/MapUtil;->rad(D)D

    move-result-wide v6

    sub-double v0, v4, v6

    invoke-static/range {p2 .. p3}, Lcom/miui/home/launcher/assistant/util/MapUtil;->rad(D)D

    move-result-wide v10

    invoke-static/range {p6 .. p7}, Lcom/miui/home/launcher/assistant/util/MapUtil;->rad(D)D

    move-result-wide v12

    sub-double v2, v10, v12

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v0, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v16, v2, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    mul-double v8, v10, v12

    const-wide v10, 0x40b8ea23126e978dL    # 6378.137

    mul-double/2addr v8, v10

    return-wide v8
.end method

.method public static getMapUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 18

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    const/4 v13, 0x0

    :goto_0
    return-object v13

    :cond_1
    const-string/jumbo v8, "miuiMinusOneScreen"

    const-string/jumbo v13, "com.autonavi.minimap"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string/jumbo v7, "&dev=0&m=0&t=2"

    if-eqz p7, :cond_2

    const-string/jumbo v7, "&dev=0&m=0&t=4"

    :cond_2
    const/16 v13, 0xd

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "&slat="

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object p1, v13, v14

    const/4 v14, 0x2

    const-string/jumbo v15, "&slon="

    aput-object v15, v13, v14

    const/4 v14, 0x3

    aput-object p2, v13, v14

    const/4 v14, 0x4

    const-string/jumbo v15, "&sname="

    aput-object v15, v13, v14

    const/4 v14, 0x5

    aput-object p3, v13, v14

    const/4 v14, 0x6

    const-string/jumbo v15, "&dlat="

    aput-object v15, v13, v14

    const/4 v14, 0x7

    aput-object p4, v13, v14

    const/16 v14, 0x8

    const-string/jumbo v15, "&dlon="

    aput-object v15, v13, v14

    const/16 v14, 0x9

    aput-object p5, v13, v14

    const/16 v14, 0xa

    const-string/jumbo v15, "&dname="

    aput-object v15, v13, v14

    const/16 v14, 0xb

    aput-object p6, v13, v14

    const/16 v14, 0xc

    aput-object v7, v13, v14

    invoke-static {v13}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.VIEW"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    sget-object v16, Lcom/miui/home/launcher/assistant/util/MapUtil;->AUTO_NAVI:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    const/4 v15, 0x2

    aput-object v9, v14, v15

    invoke-static {v14}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v5, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v13, 0x10000000

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v13, "com.baidu.BaiduMap"

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    :try_start_0
    const-string/jumbo v12, "driving"

    if-eqz p7, :cond_4

    const-string/jumbo v12, "walking"

    :cond_4
    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Lcom/miui/home/launcher/assistant/util/MapUtil;->getBDLat(DD)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Lcom/miui/home/launcher/assistant/util/MapUtil;->getBDLng(DD)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p4 .. p4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static/range {p5 .. p5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Lcom/miui/home/launcher/assistant/util/MapUtil;->getBDLat(DD)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static/range {p5 .. p5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Lcom/miui/home/launcher/assistant/util/MapUtil;->getBDLng(DD)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const/16 v13, 0x14

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Lcom/miui/home/launcher/assistant/util/MapUtil;->baiduStr:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v10, v13, v14

    const/4 v14, 0x2

    const-string/jumbo v15, ","

    aput-object v15, v13, v14

    const/4 v14, 0x3

    aput-object v11, v13, v14

    const/4 v14, 0x4

    const-string/jumbo v15, "|name:"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    aput-object p3, v13, v14

    const/4 v14, 0x6

    const-string/jumbo v15, "&destination=latlng:"

    aput-object v15, v13, v14

    const/4 v14, 0x7

    aput-object v3, v13, v14

    const/16 v14, 0x8

    const-string/jumbo v15, ","

    aput-object v15, v13, v14

    const/16 v14, 0x9

    aput-object v4, v13, v14

    const/16 v14, 0xa

    const-string/jumbo v15, "|name:"

    aput-object v15, v13, v14

    const/16 v14, 0xb

    aput-object p6, v13, v14

    const/16 v14, 0xc

    const-string/jumbo v15, "&mode="

    aput-object v15, v13, v14

    const/16 v14, 0xd

    aput-object v12, v13, v14

    const/16 v14, 0xe

    const-string/jumbo v15, "&src="

    aput-object v15, v13, v14

    const/16 v14, 0xf

    aput-object v8, v13, v14

    const/16 v14, 0x10

    const-string/jumbo v15, "#Intent;"

    aput-object v15, v13, v14

    const/16 v14, 0x11

    const-string/jumbo v15, "scheme=bdapp;package="

    aput-object v15, v13, v14

    const/16 v14, 0x12

    aput-object p0, v13, v14

    const/16 v14, 0x13

    const-string/jumbo v15, ";end"

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    invoke-static {v6, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v13, "MapItem"

    const-string/jumbo v14, "baiduUri:"

    invoke-static {v13, v14, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public static getRecentMapPkg(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/usage/PkgUsageStatsCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/usage/PkgUsageStatsCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/usage/PkgUsageStatsCompat;->loadAllPackageUsageStats()Ljava/util/Map;

    move-result-object v4

    sget-object v5, Lcom/miui/home/launcher/assistant/util/MapUtil;->MAP_LIST:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/miui/home/launcher/assistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v3, Lcom/miui/home/launcher/assistant/module/model/AppsModel;

    invoke-direct {v3}, Lcom/miui/home/launcher/assistant/module/model/AppsModel;-><init>()V

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/assistant/module/model/AppsModel;->setPkgName(Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/miui/home/launcher/assistant/module/model/AppsModel;->setLastTimeUsed(J)V

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v11, :cond_3

    new-instance v5, Lcom/miui/home/launcher/assistant/util/MapUtil$1;

    invoke-direct {v5}, Lcom/miui/home/launcher/assistant/util/MapUtil$1;-><init>()V

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v11, :cond_4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/assistant/module/model/AppsModel;

    invoke-virtual {v5}, Lcom/miui/home/launcher/assistant/module/model/AppsModel;->getLastTimeUsed()J

    move-result-wide v6

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/assistant/module/model/AppsModel;

    invoke-virtual {v5}, Lcom/miui/home/launcher/assistant/module/model/AppsModel;->getLastTimeUsed()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    sget-object v5, Lcom/miui/home/launcher/assistant/util/MapUtil;->MAP_LIST:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_1
    return-object v5

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/assistant/module/model/AppsModel;

    invoke-virtual {v5}, Lcom/miui/home/launcher/assistant/module/model/AppsModel;->getPkgName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    const-string/jumbo v1, "key_encrypt_assi"

    invoke-static {p0, p1, v0, v1}, Lcom/miui/home/launcher/assistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static rad(D)D
    .locals 4

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static sortDataByStatus(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/ColorLine;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    const-string/jumbo v7, "length"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v6, Lorg/json/JSONArray;

    const-string/jumbo v7, "status"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ne v7, v8, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_3

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    if-eq v7, v5, :cond_2

    new-instance v7, Lcom/miui/home/launcher/assistant/module/model/ColorLine;

    invoke-direct {v7, v4, v5}, Lcom/miui/home/launcher/assistant/module/model/ColorLine;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_2

    :cond_3
    new-instance v7, Lcom/miui/home/launcher/assistant/module/model/ColorLine;

    invoke-direct {v7, v4, v5}, Lcom/miui/home/launcher/assistant/module/model/ColorLine;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v7, "MapItem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sortDataByStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
