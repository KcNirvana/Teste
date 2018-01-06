.class Lcom/amap/api/col/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/amap/api/col/br;


# direct methods
.method constructor <init>(Lcom/amap/api/col/br;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/bt;->a:Lcom/amap/api/col/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/bt;->a:Lcom/amap/api/col/br;

    invoke-static {v0}, Lcom/amap/api/col/br;->e(Lcom/amap/api/col/br;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/bt;->a:Lcom/amap/api/col/br;

    invoke-static {v1}, Lcom/amap/api/col/br;->f(Lcom/amap/api/col/br;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/amap/api/col/bt;->a:Lcom/amap/api/col/br;

    iget-object v1, p0, Lcom/amap/api/col/bt;->a:Lcom/amap/api/col/br;

    invoke-static {v1}, Lcom/amap/api/col/br;->c(Lcom/amap/api/col/br;)Lcom/amap/api/col/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/col/h;->h()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/amap/api/col/br;->a(F)V

    iget-object v0, p0, Lcom/amap/api/col/bt;->a:Lcom/amap/api/col/br;

    invoke-static {v0}, Lcom/amap/api/col/br;->c(Lcom/amap/api/col/br;)Lcom/amap/api/col/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/h;->h()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/bt;->a:Lcom/amap/api/col/br;

    invoke-static {v1}, Lcom/amap/api/col/br;->c(Lcom/amap/api/col/br;)Lcom/amap/api/col/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/col/h;->k()F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bt;->a:Lcom/amap/api/col/br;

    invoke-static {v0}, Lcom/amap/api/col/br;->b(Lcom/amap/api/col/br;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/bt;->a:Lcom/amap/api/col/br;

    invoke-static {v1}, Lcom/amap/api/col/br;->h(Lcom/amap/api/col/br;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/bt;->a:Lcom/amap/api/col/br;

    invoke-static {v0}, Lcom/amap/api/col/br;->g(Lcom/amap/api/col/br;)Lcom/amap/api/col/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/z;->d()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/bt;->a:Lcom/amap/api/col/br;

    invoke-static {v0}, Lcom/amap/api/col/br;->b(Lcom/amap/api/col/br;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/bt;->a:Lcom/amap/api/col/br;

    invoke-static {v1}, Lcom/amap/api/col/br;->a(Lcom/amap/api/col/br;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
