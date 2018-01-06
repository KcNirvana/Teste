.class public Lcom/amap/api/maps2d/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/amap/api/a/g;


# direct methods
.method public constructor <init>(Lcom/amap/api/a/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps2d/j;->a:Lcom/amap/api/a/g;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/a/h;
    .locals 3

    const-string v1, "fromScreenLocation"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/j;->a:Lcom/amap/api/a/g;

    invoke-interface {v0, p1}, Lcom/amap/api/a/g;->a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/a/h;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Projection"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/a/m;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/a/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
