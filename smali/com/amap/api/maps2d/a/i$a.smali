.class public final Lcom/amap/api/maps2d/a/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps2d/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lcom/amap/api/maps2d/a/i$a;->a:D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lcom/amap/api/maps2d/a/i$a;->b:D

    iput-wide v2, p0, Lcom/amap/api/maps2d/a/i$a;->c:D

    iput-wide v2, p0, Lcom/amap/api/maps2d/a/i$a;->d:D

    return-void
.end method

.method private a(D)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/amap/api/maps2d/a/i$a;->c:D

    iget-wide v4, p0, Lcom/amap/api/maps2d/a/i$a;->d:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcom/amap/api/maps2d/a/i$a;->c:D

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/amap/api/maps2d/a/i$a;->d:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/amap/api/maps2d/a/i$a;->c:D

    cmpg-double v2, v2, p1

    if-lez v2, :cond_2

    iget-wide v2, p0, Lcom/amap/api/maps2d/a/i$a;->d:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/a/i$a;
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-wide v0, p0, Lcom/amap/api/maps2d/a/i$a;->a:D

    iget-wide v2, p1, Lcom/amap/api/maps2d/a/h;->a:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps2d/a/i$a;->a:D

    iget-wide v0, p0, Lcom/amap/api/maps2d/a/i$a;->b:D

    iget-wide v2, p1, Lcom/amap/api/maps2d/a/h;->a:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps2d/a/i$a;->b:D

    iget-wide v0, p1, Lcom/amap/api/maps2d/a/h;->b:D

    iget-wide v2, p0, Lcom/amap/api/maps2d/a/i$a;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-wide v0, p0, Lcom/amap/api/maps2d/a/i$a;->c:D

    iput-wide v0, p0, Lcom/amap/api/maps2d/a/i$a;->d:D

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps2d/a/i$a;->a(D)Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/amap/api/maps2d/a/i$a;->c:D

    invoke-static {v2, v3, v0, v1}, Lcom/amap/api/maps2d/a/i;->a(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/amap/api/maps2d/a/i$a;->d:D

    invoke-static {v4, v5, v0, v1}, Lcom/amap/api/maps2d/a/i;->b(DD)D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    iput-wide v0, p0, Lcom/amap/api/maps2d/a/i$a;->c:D

    goto :goto_0

    :cond_3
    iput-wide v0, p0, Lcom/amap/api/maps2d/a/i$a;->d:D

    goto :goto_0
.end method

.method public a()Lcom/amap/api/maps2d/a/i;
    .locals 10

    const/4 v0, 0x0

    const-string v2, "build"

    :try_start_0
    iget-wide v4, p0, Lcom/amap/api/maps2d/a/i$a;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LatLngBounds"

    const-string v3, "no included points"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/amap/api/maps2d/a/i;

    new-instance v3, Lcom/amap/api/maps2d/a/h;

    iget-wide v4, p0, Lcom/amap/api/maps2d/a/i$a;->a:D

    iget-wide v6, p0, Lcom/amap/api/maps2d/a/i$a;->c:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    new-instance v4, Lcom/amap/api/maps2d/a/h;

    iget-wide v6, p0, Lcom/amap/api/maps2d/a/i$a;->b:D

    iget-wide v8, p0, Lcom/amap/api/maps2d/a/i$a;->d:D

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    invoke-direct {v1, v3, v4}, Lcom/amap/api/maps2d/a/i;-><init>(Lcom/amap/api/maps2d/a/h;Lcom/amap/api/maps2d/a/h;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "LatLngBounds"

    invoke-static {v1, v3, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
