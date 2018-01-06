.class Lcom/amap/api/col/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/col/o;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amap/api/col/h;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ProjectionDelegateImp"

    iput-object v0, p0, Lcom/amap/api/col/av;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/col/av;->b:Lcom/amap/api/col/h;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/a/h;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/col/iv;

    invoke-direct {v0}, Lcom/amap/api/col/iv;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/av;->b:Lcom/amap/api/col/h;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3, v0}, Lcom/amap/api/col/h;->a(IILcom/amap/api/col/iv;)V

    new-instance v1, Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v0, Lcom/amap/api/col/iv;->b:D

    iget-wide v4, v0, Lcom/amap/api/col/iv;->a:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    return-object v1
.end method
