.class Lcom/amap/api/col/ij;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Canvas;

.field private c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap$Config;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/ij;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amap/api/col/ij;->b:Landroid/graphics/Canvas;

    iput-object p1, p0, Lcom/amap/api/col/ij;->c:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/api/col/ij;->a:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/amap/api/col/ij;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/amap/api/col/ij;->b:Landroid/graphics/Canvas;

    return-void
.end method

.method public a(Lcom/amap/api/col/ik;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/ij;->b:Landroid/graphics/Canvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    iget-object v0, p0, Lcom/amap/api/col/ij;->b:Landroid/graphics/Canvas;

    invoke-interface {p1, v0}, Lcom/amap/api/col/ik;->a(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/amap/api/col/ij;->b:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
