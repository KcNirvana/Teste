.class public final Lcom/amap/api/maps2d/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps2d/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/amap/api/maps2d/a/h;

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)Lcom/amap/api/maps2d/a/c$a;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/a/c$a;->b:F

    return-object p0
.end method

.method public a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/a/c$a;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps2d/a/c$a;->a:Lcom/amap/api/maps2d/a/h;

    return-object p0
.end method

.method public a()Lcom/amap/api/maps2d/a/c;
    .locals 7

    const/4 v0, 0x0

    const-string v2, "build"

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps2d/a/c$a;->a:Lcom/amap/api/maps2d/a/h;

    if-nez v1, :cond_0

    const-string v1, "CameraPosition"

    const-string v3, "target is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/amap/api/maps2d/a/c;

    iget-object v3, p0, Lcom/amap/api/maps2d/a/c$a;->a:Lcom/amap/api/maps2d/a/h;

    iget v4, p0, Lcom/amap/api/maps2d/a/c$a;->b:F

    iget v5, p0, Lcom/amap/api/maps2d/a/c$a;->c:F

    iget v6, p0, Lcom/amap/api/maps2d/a/c$a;->d:F

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/amap/api/maps2d/a/c;-><init>(Lcom/amap/api/maps2d/a/h;FFF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "CameraPosition"

    invoke-static {v1, v3, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(F)Lcom/amap/api/maps2d/a/c$a;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/a/c$a;->c:F

    return-object p0
.end method

.method public c(F)Lcom/amap/api/maps2d/a/c$a;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/a/c$a;->d:F

    return-object p0
.end method
