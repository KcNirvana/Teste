.class public Lcom/amap/api/col/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/amap/api/col/bh;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()J
    .locals 6

    const-class v1, Lcom/amap/api/col/bh;

    monitor-enter v1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v2

    sget-wide v4, Lcom/amap/api/col/bh;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_2
    sput-wide v2, Lcom/amap/api/col/bh;->a:J

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-wide v2, Lcom/amap/api/col/bh;->a:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method a(Lcom/amap/api/location/DPoint;Lcom/amap/api/location/DPoint;Lcom/amap/api/location/DPoint;)D
    .locals 10

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p3}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {p3}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p2}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v0, v4

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    mul-double v2, v4, v4

    mul-double v8, v6, v6

    add-double/2addr v2, v8

    div-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_0

    invoke-virtual {p2}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p3}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v8

    cmpl-double v2, v2, v8

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p3}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v8

    cmpl-double v2, v2, v8

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    :goto_0
    new-instance v4, Lcom/amap/api/location/DPoint;

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    new-instance v5, Lcom/amap/api/location/DPoint;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    invoke-static {v4, v5}, Lcom/amap/api/col/hu;->a(Lcom/amap/api/location/DPoint;Lcom/amap/api/location/DPoint;)F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    invoke-virtual {p3}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p3}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    invoke-virtual {p2}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/fence/GeoFence;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    const/4 v2, -0x1

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "status"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "infocode"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const-string v4, "pois"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    new-instance v5, Lcom/amap/api/fence/GeoFence;

    invoke-direct {v5}, Lcom/amap/api/fence/GeoFence;-><init>()V

    new-instance v6, Lcom/amap/api/fence/PoiItem;

    invoke-direct {v6}, Lcom/amap/api/fence/PoiItem;-><init>()V

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/amap/api/fence/PoiItem;->setPoiId(Ljava/lang/String;)V

    const-string v8, "name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/amap/api/fence/PoiItem;->setPoiName(Ljava/lang/String;)V

    const-string v8, "type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/amap/api/fence/PoiItem;->setPoiType(Ljava/lang/String;)V

    const-string v8, "typecode"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/amap/api/fence/PoiItem;->setTypeCode(Ljava/lang/String;)V

    const-string v8, "address"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/amap/api/fence/PoiItem;->setAddress(Ljava/lang/String;)V

    const-string v8, "location"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/amap/api/fence/PoiItem;->setLongitude(D)V

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/amap/api/fence/PoiItem;->setLatitude(D)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/amap/api/location/DPoint;

    invoke-virtual {v6}, Lcom/amap/api/fence/PoiItem;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v6}, Lcom/amap/api/fence/PoiItem;->getLongitude()D

    move-result-wide v14

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v8}, Lcom/amap/api/fence/GeoFence;->setPointList(Ljava/util/List;)V

    invoke-virtual {v5, v10}, Lcom/amap/api/fence/GeoFence;->setCenter(Lcom/amap/api/location/DPoint;)V

    :cond_0
    const-string v8, "tel"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/amap/api/fence/PoiItem;->setTel(Ljava/lang/String;)V

    const-string v8, "pname"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/amap/api/fence/PoiItem;->setProvince(Ljava/lang/String;)V

    const-string v8, "cityname"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/amap/api/fence/PoiItem;->setCity(Ljava/lang/String;)V

    const-string v8, "adname"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amap/api/fence/PoiItem;->setAdname(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/amap/api/fence/GeoFence;->setPoiItem(Lcom/amap/api/fence/PoiItem;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/amap/api/col/bh;->a()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/fence/GeoFence;->setFenceId(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string v6, "customId"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/fence/GeoFence;->setCustomId(Ljava/lang/String;)V

    const-string v6, "pendingIntentAction"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/fence/GeoFence;->setPendingIntentAction(Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/amap/api/fence/GeoFence;->setType(I)V

    const-string v6, "geoRadius"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/api/fence/GeoFence;->setRadius(F)V

    const-string v6, "expiration"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/amap/api/fence/GeoFence;->setExpiration(J)V

    const-string v6, "activatesAction"

    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/amap/api/fence/GeoFence;->setActivatesAction(I)V

    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :cond_3
    return v2
.end method

.method a(Ljava/util/List;F)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/location/DPoint;",
            ">;F)",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/location/DPoint;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const-wide/16 v6, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/DPoint;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/location/DPoint;

    const/4 v2, 0x1

    move v3, v2

    move v4, v5

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/location/DPoint;

    invoke-virtual {p0, v2, v0, v1}, Lcom/amap/api/col/bh;->a(Lcom/amap/api/location/DPoint;Lcom/amap/api/location/DPoint;Lcom/amap/api/location/DPoint;)D

    move-result-wide v8

    cmpl-double v2, v8, v6

    if-lez v2, :cond_2

    move v4, v3

    move-wide v6, v8

    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    float-to-double v2, p2

    cmpg-double v2, v6, v2

    if-gez v2, :cond_4

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v10

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v4, 0x1

    invoke-interface {p1, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/amap/api/col/bh;->a(Ljava/util/List;F)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/amap/api/col/bh;->a(Ljava/util/List;F)Ljava/util/List;

    move-result-object v1

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v10, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v10, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p1, v10

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/fence/GeoFence;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/amap/api/col/bh;->a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/fence/GeoFence;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    const/4 v2, -0x1

    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    const-string v3, "infocode"

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_7

    const-string v3, "customId"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "pendingIntentAction"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "geoRadius"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    const-string v3, "expiration"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v3, "activatesAction"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v9, v3

    move-wide v10, v4

    move v12, v6

    move-object v13, v7

    move-object v14, v8

    :goto_0
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_2

    const-string v3, "districts"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    if-eqz v15, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Lcom/amap/api/fence/GeoFence;

    invoke-direct/range {v18 .. v18}, Lcom/amap/api/fence/GeoFence;-><init>()V

    invoke-virtual {v15, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "citycode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v5, "adcode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v5, "center"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v22, Lcom/amap/api/location/DPoint;

    invoke-direct/range {v22 .. v22}, Lcom/amap/api/location/DPoint;-><init>()V

    if-eqz v5, :cond_0

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Lcom/amap/api/location/DPoint;->setLatitude(D)V

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Lcom/amap/api/location/DPoint;->setLongitude(D)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/amap/api/fence/GeoFence;->setCenter(Lcom/amap/api/location/DPoint;)V

    :cond_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/amap/api/fence/GeoFence;->setCustomId(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/amap/api/fence/GeoFence;->setPendingIntentAction(Ljava/lang/String;)V

    const/4 v5, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/amap/api/fence/GeoFence;->setType(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/amap/api/fence/GeoFence;->setRadius(F)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Lcom/amap/api/fence/GeoFence;->setExpiration(J)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/amap/api/fence/GeoFence;->setActivatesAction(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/amap/api/col/bh;->a()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/amap/api/fence/GeoFence;->setFenceId(Ljava/lang/String;)V

    const-string v5, "polyline"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v4, :cond_6

    const-string v7, "\\|"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/4 v4, 0x0

    move v7, v5

    move v8, v6

    move v6, v4

    :goto_2
    move/from16 v0, v24

    if-ge v6, v0, :cond_5

    aget-object v5, v23, v6

    new-instance v25, Lcom/amap/api/fence/DistrictItem;

    invoke-direct/range {v25 .. v25}, Lcom/amap/api/fence/DistrictItem;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/amap/api/fence/DistrictItem;->setCitycode(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/amap/api/fence/DistrictItem;->setAdcode(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/amap/api/fence/DistrictItem;->setDistrictName(Ljava/lang/String;)V

    const-string v26, ";"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v5, v0, :cond_3

    aget-object v27, v26, v5

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_1

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    const/16 v28, 0x1

    aget-object v28, v27, v28

    const/16 v29, 0x0

    aget-object v27, v27, v29

    new-instance v29, Lcom/amap/api/location/DPoint;

    invoke-static/range {v28 .. v28}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    invoke-static/range {v27 .. v27}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v32

    invoke-direct/range {v29 .. v33}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_0
    move-exception v3

    :cond_2
    return v2

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    const/high16 v26, 0x42c80000    # 100.0f

    cmpl-float v5, v5, v26

    if-lez v5, :cond_4

    const/high16 v5, 0x42c80000    # 100.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/amap/api/col/bh;->a(Ljava/util/List;F)Ljava/util/List;

    move-result-object v4

    :cond_4
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/amap/api/fence/DistrictItem;->setPolyline(Ljava/util/List;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/amap/api/col/a;->b(Lcom/amap/api/location/DPoint;Ljava/util/List;)F

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v8

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Lcom/amap/api/col/a;->a(Lcom/amap/api/location/DPoint;Ljava/util/List;)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v7, v5

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/amap/api/fence/GeoFence;->setMaxDis2Center(F)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/amap/api/fence/GeoFence;->setMinDis2Center(F)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/amap/api/fence/GeoFence;->setDistrictItemList(Ljava/util/List;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/amap/api/fence/GeoFence;->setPointList(Ljava/util/List;)V

    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_7
    move v9, v3

    move-wide v10, v4

    move v12, v6

    move-object v13, v7

    move-object v14, v8

    goto/16 :goto_0
.end method
