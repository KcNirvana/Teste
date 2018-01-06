.class public Lcom/miui/weather2/tools/n;
.super Lcom/miui/weather2/tools/s;
.source "SourceFile"


# instance fields
.field private f:Lcom/amap/api/maps2d/a/j;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/amap/api/maps2d/a/j;",
            "Lcom/miui/weather2/structures/AqiQualityStation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps2d/MapView;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/tools/s;-><init>(Landroid/content/Context;Lcom/amap/api/maps2d/MapView;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/tools/n;->g:Ljava/util/HashMap;

    new-instance v0, Lcom/miui/weather2/tools/o;

    invoke-direct {v0, p0}, Lcom/miui/weather2/tools/o;-><init>(Lcom/miui/weather2/tools/n;)V

    iget-object v1, p0, Lcom/miui/weather2/tools/n;->b:Lcom/amap/api/maps2d/a;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/a;->a(Lcom/amap/api/maps2d/a$j;)V

    return-void
.end method

.method private a(Lcom/amap/api/maps2d/a/j;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/tools/n;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/n;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/n;->f:Lcom/amap/api/maps2d/a/j;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/tools/n;->f:Lcom/amap/api/maps2d/a/j;

    invoke-virtual {p1, v0}, Lcom/amap/api/maps2d/a/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/j;->a()V

    iget-object v0, p0, Lcom/miui/weather2/tools/n;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/AqiQualityStation;

    iget-object v1, p0, Lcom/miui/weather2/tools/n;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AqiQualityStation;->changeState()V

    iget-object v1, p0, Lcom/miui/weather2/tools/n;->b:Lcom/amap/api/maps2d/a;

    invoke-direct {p0, v0}, Lcom/miui/weather2/tools/n;->b(Lcom/miui/weather2/structures/AqiQualityStation;)Lcom/amap/api/maps2d/a/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/a;->a(Lcom/amap/api/maps2d/a/k;)Lcom/amap/api/maps2d/a/j;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/tools/n;->f:Lcom/amap/api/maps2d/a/j;

    iget-object v1, p0, Lcom/miui/weather2/tools/n;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/miui/weather2/tools/n;->f:Lcom/amap/api/maps2d/a/j;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/tools/n;->f:Lcom/amap/api/maps2d/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/tools/n;->f:Lcom/amap/api/maps2d/a/j;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/a/j;->a()V

    iget-object v0, p0, Lcom/miui/weather2/tools/n;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/weather2/tools/n;->f:Lcom/amap/api/maps2d/a/j;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/AqiQualityStation;

    iget-object v1, p0, Lcom/miui/weather2/tools/n;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/miui/weather2/tools/n;->f:Lcom/amap/api/maps2d/a/j;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/AqiQualityStation;->setState(Z)V

    iget-object v1, p0, Lcom/miui/weather2/tools/n;->b:Lcom/amap/api/maps2d/a;

    invoke-direct {p0, v0}, Lcom/miui/weather2/tools/n;->b(Lcom/miui/weather2/structures/AqiQualityStation;)Lcom/amap/api/maps2d/a/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/a;->a(Lcom/amap/api/maps2d/a/k;)Lcom/amap/api/maps2d/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/tools/n;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/j;->a()V

    iget-object v0, p0, Lcom/miui/weather2/tools/n;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/AqiQualityStation;

    iget-object v1, p0, Lcom/miui/weather2/tools/n;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/AqiQualityStation;->changeState()V

    iget-object v1, p0, Lcom/miui/weather2/tools/n;->b:Lcom/amap/api/maps2d/a;

    invoke-direct {p0, v0}, Lcom/miui/weather2/tools/n;->b(Lcom/miui/weather2/structures/AqiQualityStation;)Lcom/amap/api/maps2d/a/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/a;->a(Lcom/amap/api/maps2d/a/k;)Lcom/amap/api/maps2d/a/j;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/tools/n;->f:Lcom/amap/api/maps2d/a/j;

    iget-object v1, p0, Lcom/miui/weather2/tools/n;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/miui/weather2/tools/n;->f:Lcom/amap/api/maps2d/a/j;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Lcom/miui/weather2/tools/n;Lcom/amap/api/maps2d/a/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/tools/n;->a(Lcom/amap/api/maps2d/a/j;)V

    return-void
.end method

.method private b(Lcom/miui/weather2/structures/AqiQualityStation;)Lcom/amap/api/maps2d/a/k;
    .locals 5

    new-instance v0, Lcom/amap/api/maps2d/a/k;

    invoke-direct {v0}, Lcom/amap/api/maps2d/a/k;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/a/k;->b(Z)Lcom/amap/api/maps2d/a/k;

    new-instance v1, Lcom/miui/weather2/view/a;

    iget-object v2, p0, Lcom/miui/weather2/tools/n;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/AqiQualityStation;->getAqiValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/weather2/structures/AqiQualityStation;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/weather2/view/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/a/k;->a(F)Lcom/amap/api/maps2d/a/k;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/AqiQualityStation;->getLatLng()Lcom/amap/api/maps2d/a/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/a/k;->a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/a/k;

    invoke-static {v1}, Lcom/amap/api/maps2d/a/b;->a(Landroid/view/View;)Lcom/amap/api/maps2d/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/a/k;->a(Lcom/amap/api/maps2d/a/a;)Lcom/amap/api/maps2d/a/k;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amap/api/maps2d/a/h;)V
    .locals 2

    const-string v0, "aqi_detail"

    const-string v1, "map"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/miui/weather2/structures/AqiQualityStation;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/tools/n;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/weather2/structures/AqiQualityStation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/a/j;

    invoke-direct {p0, v0}, Lcom/miui/weather2/tools/n;->a(Lcom/amap/api/maps2d/a/j;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/miui/weather2/structures/AqiQualityStationColony;Z)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/weather2/structures/AqiQualityStationColony;->getStationColony()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/weather2/structures/AqiQualityStationColony;->getBestStationColony()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/AqiQualityStationColony;->getBestStationColony()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/AqiQualityStationColony;->getBestStationColony()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/miui/weather2/structures/AqiQualityStationColony;->getMinDistanceStation()Lcom/miui/weather2/structures/AqiQualityStation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/weather2/structures/AqiQualityStationColony;->getMinDistanceStation()Lcom/miui/weather2/structures/AqiQualityStation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/tools/n;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/tools/n;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/a/j;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/a/j;->a()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/tools/n;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/tools/n;->f:Lcom/amap/api/maps2d/a/j;

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/AqiQualityStation;

    iget-object v2, p0, Lcom/miui/weather2/tools/n;->b:Lcom/amap/api/maps2d/a;

    invoke-direct {p0, v0}, Lcom/miui/weather2/tools/n;->b(Lcom/miui/weather2/structures/AqiQualityStation;)Lcom/amap/api/maps2d/a/k;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/a;->a(Lcom/amap/api/maps2d/a/k;)Lcom/amap/api/maps2d/a/j;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/tools/n;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    return-void
.end method

.method c()F
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    return v0
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/weather2/tools/n;->e:Lcom/amap/api/maps2d/h$a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "Wth2:AqiAMapController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged() error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/n;->e:Lcom/amap/api/maps2d/h$a;

    invoke-interface {v0, p1}, Lcom/amap/api/maps2d/h$a;->a(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/n;->b:Lcom/amap/api/maps2d/a;

    new-instance v1, Lcom/amap/api/maps2d/a/h;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    invoke-static {v1}, Lcom/amap/api/maps2d/g;->a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/a;->b(Lcom/amap/api/maps2d/f;)V

    :cond_0
    return-void
.end method
