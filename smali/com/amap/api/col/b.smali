.class Lcom/amap/api/col/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/location/AMapLocationListener;


# instance fields
.field final synthetic a:Lcom/amap/api/col/a;


# direct methods
.method constructor <init>(Lcom/amap/api/col/a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/b;->a:Lcom/amap/api/col/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    .locals 10

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/amap/api/col/b;->a:Lcom/amap/api/col/a;

    iput-object p1, v3, Lcom/amap/api/col/a;->q:Lcom/amap/api/location/AMapLocation;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/b;->a:Lcom/amap/api/col/a;

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/amap/api/col/a;->r:J

    iget-object v2, p0, Lcom/amap/api/col/b;->a:Lcom/amap/api/col/a;

    const/4 v3, 0x5

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/amap/api/col/a;->a(ILandroid/os/Bundle;J)V

    :goto_0
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/b;->a:Lcom/amap/api/col/a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/amap/api/col/a;->t:I

    iget-object v0, p0, Lcom/amap/api/col/b;->a:Lcom/amap/api/col/a;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/amap/api/col/a;->a(ILandroid/os/Bundle;J)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/b;->a:Lcom/amap/api/col/a;

    const-string v3, "\u5b9a\u4f4d\u5931\u8d25"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorInfo()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "locationDetail:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationDetail()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/amap/api/col/a;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/amap/api/col/b;->a:Lcom/amap/api/col/a;

    iget-boolean v2, v2, Lcom/amap/api/col/a;->l:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/col/b;->a:Lcom/amap/api/col/a;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/amap/api/col/a;->a(I)V

    const-string v2, "interval"

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/amap/api/col/b;->a:Lcom/amap/api/col/a;

    const/16 v3, 0x8

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/amap/api/col/a;->a(ILandroid/os/Bundle;J)V

    :cond_4
    iget-object v2, p0, Lcom/amap/api/col/b;->a:Lcom/amap/api/col/a;

    iget v3, v2, Lcom/amap/api/col/a;->t:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/amap/api/col/a;->t:I

    iget-object v2, p0, Lcom/amap/api/col/b;->a:Lcom/amap/api/col/a;

    iget v2, v2, Lcom/amap/api/col/a;->t:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    const-string v2, "location_errorcode"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/amap/api/col/b;->a:Lcom/amap/api/col/a;

    const/16 v2, 0x3ea

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/col/a;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method
