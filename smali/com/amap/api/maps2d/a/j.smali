.class public final Lcom/amap/api/maps2d/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/amap/api/a/e;


# direct methods
.method public constructor <init>(Lcom/amap/api/a/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps2d/a/j;->a:Lcom/amap/api/a/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v1, "destroy"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/j;->a:Lcom/amap/api/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps2d/a/j;->a:Lcom/amap/api/a/e;

    invoke-interface {v0}, Lcom/amap/api/a/e;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Marker"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/amap/api/maps2d/a/j;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/maps2d/a/j;->a:Lcom/amap/api/a/e;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps2d/a/j;->a:Lcom/amap/api/a/e;

    check-cast p1, Lcom/amap/api/maps2d/a/j;

    iget-object v1, p1, Lcom/amap/api/maps2d/a/j;->a:Lcom/amap/api/a/e;

    invoke-interface {v0, v1}, Lcom/amap/api/a/e;->a(Lcom/amap/api/a/e;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/a/j;->a:Lcom/amap/api/a/e;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/a/j;->a:Lcom/amap/api/a/e;

    invoke-interface {v0}, Lcom/amap/api/a/e;->t()I

    move-result v0

    goto :goto_0
.end method
