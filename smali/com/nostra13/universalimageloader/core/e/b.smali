.class public abstract Lcom/nostra13/universalimageloader/core/e/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/nostra13/universalimageloader/core/e/d;


# instance fields
.field protected bjp:Z

.field protected bjq:Ljava/lang/ref/Reference;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/nostra13/universalimageloader/core/e/b;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/e/b;->bjq:Ljava/lang/ref/Reference;

    iput-boolean p2, p0, Lcom/nostra13/universalimageloader/core/e/b;->bjp:Z

    return-void
.end method


# virtual methods
.method public bFO()I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e/b;->bjq:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-boolean v3, p0, Lcom/nostra13/universalimageloader/core/e/b;->bjp:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    if-eqz v2, :cond_0

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public bFP()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .locals 1

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->biD:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    return-object v0
.end method

.method public bFQ()I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e/b;->bjq:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-boolean v3, p0, Lcom/nostra13/universalimageloader/core/e/b;->bjp:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    if-eqz v2, :cond_0

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public bFR()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e/b;->bjq:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public bFS()Z
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e/b;->bjq:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bFT(Landroid/graphics/Bitmap;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e/b;->bjq:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/nostra13/universalimageloader/core/e/b;->bFV(Landroid/graphics/Bitmap;Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "Can\'t set a bitmap into view. You should call ImageLoader on UI thread for it."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDU(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v2
.end method

.method public bFU(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e/b;->bjq:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/nostra13/universalimageloader/core/e/b;->bFW(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "Can\'t set a drawable into view. You should call ImageLoader on UI thread for it."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDU(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v2
.end method

.method protected abstract bFV(Landroid/graphics/Bitmap;Landroid/view/View;)V
.end method

.method protected abstract bFW(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
.end method

.method public getId()I
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e/b;->bjq:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->hashCode()I

    move-result v0

    goto :goto_0
.end method
