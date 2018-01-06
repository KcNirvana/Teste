.class public Lcom/miui/weather2/structures/AqiQualityStationColony;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBestStationColony:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/AqiQualityStation;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftTopLat:Ljava/lang/String;

.field private mLeftTopLng:Ljava/lang/String;

.field private mMinDistanceStation:Lcom/miui/weather2/structures/AqiQualityStation;

.field private mRightBottomLat:Ljava/lang/String;

.field private mRightBottomLng:Ljava/lang/String;

.field private mStationColony:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/AqiQualityStation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStationColony;->mStationColony:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStationColony;->mBestStationColony:Ljava/util/ArrayList;

    return-void
.end method

.method private getLeftTopLat()D
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStationColony;->mLeftTopLat:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getLeftTopLng()D
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStationColony;->mLeftTopLng:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getRightBottomLat()D
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStationColony;->mRightBottomLat:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getRightBottomLng()D
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStationColony;->mRightBottomLng:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public addBestStationItem(Lcom/miui/weather2/structures/AqiQualityStation;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStationColony;->mBestStationColony:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStationItem(Lcom/miui/weather2/structures/AqiQualityStation;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStationColony;->mStationColony:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBestStationColony()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/AqiQualityStation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStationColony;->mBestStationColony:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLeftTopLatLng()Lcom/amap/api/maps2d/a/h;
    .locals 6

    new-instance v0, Lcom/amap/api/maps2d/a/h;

    invoke-direct {p0}, Lcom/miui/weather2/structures/AqiQualityStationColony;->getLeftTopLat()D

    move-result-wide v2

    invoke-direct {p0}, Lcom/miui/weather2/structures/AqiQualityStationColony;->getLeftTopLng()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    return-object v0
.end method

.method public getMinDistanceStation()Lcom/miui/weather2/structures/AqiQualityStation;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStationColony;->mMinDistanceStation:Lcom/miui/weather2/structures/AqiQualityStation;

    return-object v0
.end method

.method public getRightBottomLatLng()Lcom/amap/api/maps2d/a/h;
    .locals 6

    new-instance v0, Lcom/amap/api/maps2d/a/h;

    invoke-direct {p0}, Lcom/miui/weather2/structures/AqiQualityStationColony;->getRightBottomLat()D

    move-result-wide v2

    invoke-direct {p0}, Lcom/miui/weather2/structures/AqiQualityStationColony;->getRightBottomLng()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    return-object v0
.end method

.method public getStationColony()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/AqiQualityStation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiQualityStationColony;->mStationColony:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setLeftTopLat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AqiQualityStationColony;->mLeftTopLat:Ljava/lang/String;

    return-void
.end method

.method public setLeftTopLng(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AqiQualityStationColony;->mLeftTopLng:Ljava/lang/String;

    return-void
.end method

.method public setMinDistanceStation(Lcom/miui/weather2/structures/AqiQualityStation;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AqiQualityStationColony;->mMinDistanceStation:Lcom/miui/weather2/structures/AqiQualityStation;

    return-void
.end method

.method public setRightBottomLat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AqiQualityStationColony;->mRightBottomLat:Ljava/lang/String;

    return-void
.end method

.method public setRightBottomLng(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AqiQualityStationColony;->mRightBottomLng:Ljava/lang/String;

    return-void
.end method
