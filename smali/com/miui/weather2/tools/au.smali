.class public Lcom/miui/weather2/tools/au;
.super Lcom/miui/weather2/tools/s;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/b/e/f$a;
.implements Lcom/amap/api/location/AMapLocationListener;


# instance fields
.field private f:Lcom/amap/api/b/e/f;

.field private g:Lcom/amap/api/maps2d/a/f;

.field private h:Z

.field private i:Lcom/miui/weather2/ActivityMinuteRain;


# direct methods
.method public constructor <init>(Lcom/miui/weather2/ActivityMinuteRain;Lcom/amap/api/maps2d/MapView;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/tools/s;-><init>(Landroid/content/Context;Lcom/amap/api/maps2d/MapView;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/tools/au;->h:Z

    iput-object p1, p0, Lcom/miui/weather2/tools/au;->i:Lcom/miui/weather2/ActivityMinuteRain;

    invoke-direct {p0}, Lcom/miui/weather2/tools/au;->k()V

    return-void
.end method

.method private a(DD)V
    .locals 5

    iget-object v0, p0, Lcom/miui/weather2/tools/au;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/amap/api/b/c/b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amap/api/b/c/b;-><init>(DD)V

    new-instance v1, Lcom/amap/api/b/e/i;

    const/high16 v2, 0x447a0000    # 1000.0f

    const-string v3, "autonavi"

    invoke-direct {v1, v0, v2, v3}, Lcom/amap/api/b/e/i;-><init>(Lcom/amap/api/b/c/b;FLjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/au;->f:Lcom/amap/api/b/e/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/au;->f:Lcom/amap/api/b/e/f;

    invoke-virtual {v0, v1}, Lcom/amap/api/b/e/f;->a(Lcom/amap/api/b/e/i;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/tools/au;->a:Landroid/content/Context;

    const v1, 0x7f0900a7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    new-instance v0, Lcom/amap/api/b/e/f;

    iget-object v1, p0, Lcom/miui/weather2/tools/au;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/b/e/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/weather2/tools/au;->f:Lcom/amap/api/b/e/f;

    iget-object v0, p0, Lcom/miui/weather2/tools/au;->f:Lcom/amap/api/b/e/f;

    invoke-virtual {v0, p0}, Lcom/amap/api/b/e/f;->a(Lcom/amap/api/b/e/f$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/b/e/e;I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/amap/api/b/e/j;I)V
    .locals 6

    invoke-virtual {p1}, Lcom/amap/api/b/e/j;->a()Lcom/amap/api/b/e/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/b/e/i;->a()Lcom/amap/api/b/c/b;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amap/api/b/e/j;->b()Lcom/amap/api/b/e/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/b/e/g;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amap/api/b/e/g;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/b/e/k;

    invoke-virtual {v0}, Lcom/amap/api/b/e/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/b/e/g;->b()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/amap/api/b/e/g;->a()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/tools/au;->i:Lcom/miui/weather2/ActivityMinuteRain;

    invoke-virtual {v4}, Lcom/amap/api/b/c/b;->b()D

    move-result-wide v2

    invoke-virtual {v4}, Lcom/amap/api/b/c/b;->a()D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/weather2/ActivityMinuteRain;->a(Ljava/lang/String;DD)V

    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lcom/amap/api/maps2d/a/c;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/amap/api/maps2d/a/h;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/tools/au;->c:Lcom/amap/api/maps2d/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/au;->c:Lcom/amap/api/maps2d/a/j;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/a/j;->a()V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/tools/au;->b:Lcom/amap/api/maps2d/a;

    invoke-static {p1}, Lcom/amap/api/maps2d/g;->a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/a;->b(Lcom/amap/api/maps2d/f;)V

    new-instance v0, Lcom/amap/api/maps2d/a/k;

    invoke-direct {v0}, Lcom/amap/api/maps2d/a/k;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/a/k;->b(Z)Lcom/amap/api/maps2d/a/k;

    const v1, 0x7f020158

    invoke-static {v1}, Lcom/amap/api/maps2d/a/b;->a(I)Lcom/amap/api/maps2d/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/a/k;->a(Lcom/amap/api/maps2d/a/a;)Lcom/amap/api/maps2d/a/k;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/a/k;->a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/a/k;

    iget-object v1, p0, Lcom/miui/weather2/tools/au;->b:Lcom/amap/api/maps2d/a;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/a;->a(Lcom/amap/api/maps2d/a/k;)Lcom/amap/api/maps2d/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/tools/au;->c:Lcom/amap/api/maps2d/a/j;

    iget-wide v0, p1, Lcom/amap/api/maps2d/a/h;->a:D

    iget-wide v2, p1, Lcom/amap/api/maps2d/a/h;->b:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/weather2/tools/au;->a(DD)V

    const-string v0, "minute_rain_detail"

    const-string v1, "map"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/miui/weather2/structures/RadarCloudImageData;)V
    .locals 7

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/RadarCloudImageData;->getCloudImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/amap/api/maps2d/a/i$a;

    invoke-direct {v0}, Lcom/amap/api/maps2d/a/i$a;-><init>()V

    new-instance v1, Lcom/amap/api/maps2d/a/h;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/RadarCloudImageData;->getLeftBottomLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/miui/weather2/structures/RadarCloudImageData;->getLeftBottomLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/a/i$a;->a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/a/i$a;

    move-result-object v0

    new-instance v1, Lcom/amap/api/maps2d/a/h;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/RadarCloudImageData;->getRightTopLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/miui/weather2/structures/RadarCloudImageData;->getRightTopLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/a/i$a;->a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/a/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/a/i$a;->a()Lcom/amap/api/maps2d/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/tools/au;->g:Lcom/amap/api/maps2d/a/f;

    if-nez v1, :cond_1

    new-instance v1, Lcom/amap/api/maps2d/a/g;

    invoke-direct {v1}, Lcom/amap/api/maps2d/a/g;-><init>()V

    invoke-virtual {v1, v6, v6}, Lcom/amap/api/maps2d/a/g;->a(FF)Lcom/amap/api/maps2d/a/g;

    move-result-object v1

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/a/g;->a(F)Lcom/amap/api/maps2d/a/g;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/weather2/structures/RadarCloudImageData;->getCloudImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/maps2d/a/b;->a(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/a/g;->a(Lcom/amap/api/maps2d/a/a;)Lcom/amap/api/maps2d/a/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/a/g;->a(Lcom/amap/api/maps2d/a/i;)Lcom/amap/api/maps2d/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/tools/au;->b:Lcom/amap/api/maps2d/a;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/a;->a(Lcom/amap/api/maps2d/a/g;)Lcom/amap/api/maps2d/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/tools/au;->g:Lcom/amap/api/maps2d/a/f;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/weather2/tools/au;->g:Lcom/amap/api/maps2d/a/f;

    invoke-virtual {p1}, Lcom/miui/weather2/structures/RadarCloudImageData;->getCloudImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/maps2d/a/b;->a(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/a/f;->a(Lcom/amap/api/maps2d/a/a;)V

    iget-object v1, p0, Lcom/miui/weather2/tools/au;->g:Lcom/amap/api/maps2d/a/f;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/a/f;->a(Lcom/amap/api/maps2d/a/i;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/au;->g:Lcom/amap/api/maps2d/a/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/a/f;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/tools/au;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/weather2/model/t;->a(Landroid/content/Context;Lcom/miui/weather2/structures/RadarCloudImageData;)V

    goto :goto_0
.end method

.method c()F
    .locals 1

    const/high16 v0, 0x41100000    # 9.0f

    return v0
.end method

.method public j()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/weather2/tools/au;->i:Lcom/miui/weather2/ActivityMinuteRain;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/miui/weather2/tools/au;->i:Lcom/miui/weather2/ActivityMinuteRain;

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/tools/au;->d:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/tools/au;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    iget-object v0, p0, Lcom/miui/weather2/tools/au;->d:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/tools/au;->f:Lcom/amap/api/b/e/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/tools/au;->f:Lcom/amap/api/b/e/f;

    invoke-virtual {v0, v1}, Lcom/amap/api/b/e/f;->a(Lcom/amap/api/b/e/f$a;)V

    iput-object v1, p0, Lcom/miui/weather2/tools/au;->f:Lcom/amap/api/b/e/f;

    :cond_2
    invoke-super {p0}, Lcom/miui/weather2/tools/s;->j()V

    return-void
.end method

.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/weather2/tools/au;->e:Lcom/amap/api/maps2d/h$a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "Wth2:RadarImageAMapController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged() error code : "

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

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/tools/au;->e:Lcom/amap/api/maps2d/h$a;

    invoke-interface {v0, p1}, Lcom/amap/api/maps2d/h$a;->a(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/au;->i:Lcom/miui/weather2/ActivityMinuteRain;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/au;->i:Lcom/miui/weather2/ActivityMinuteRain;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/miui/weather2/ActivityMinuteRain;->a(DD)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/tools/au;->b:Lcom/amap/api/maps2d/a;

    new-instance v1, Lcom/amap/api/maps2d/a/h;

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    invoke-static {v1}, Lcom/amap/api/maps2d/g;->a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/a;->b(Lcom/amap/api/maps2d/f;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/weather2/tools/au;->a(DD)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/tools/au;->a:Landroid/content/Context;

    const v1, 0x7f090016

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "Wth2:RadarImageAMapController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged() location fail error info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Wth2:RadarImageAMapController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged() longitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",latitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
