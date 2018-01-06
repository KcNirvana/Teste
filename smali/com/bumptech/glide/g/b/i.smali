.class public Lcom/bumptech/glide/g/b/i;
.super Lcom/bumptech/glide/load/resource/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/g/b/i$a;
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/load/resource/b/b;

.field private b:Lcom/bumptech/glide/g/b/i$a;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/bumptech/glide/g/b/i$a;Lcom/bumptech/glide/load/resource/b/b;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/b/b;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/g/b/i;->b:Lcom/bumptech/glide/g/b/i$a;

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/bumptech/glide/g/b/i$a;->a(Lcom/bumptech/glide/g/b/i$a;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/b/b;

    iput-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/g/b/i$a;->a(Lcom/bumptech/glide/g/b/i$a;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/b/b;

    iput-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/b/b;I)V
    .locals 2

    new-instance v0, Lcom/bumptech/glide/g/b/i$a;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/b/b;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/g/b/i$a;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/bumptech/glide/g/b/i;-><init>(Lcom/bumptech/glide/g/b/i$a;Lcom/bumptech/glide/load/resource/b/b;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/b/b;->a(I)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/b/b;->a()Z

    move-result v0

    return v0
.end method

.method public clearColorFilter()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/b/b;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/b/b;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAlpha()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/b/b;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/b/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/b/b;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->b:Lcom/bumptech/glide/g/b/i$a;

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/b/b;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->b:Lcom/bumptech/glide/g/b/i$a;

    invoke-static {v0}, Lcom/bumptech/glide/g/b/i$a;->b(Lcom/bumptech/glide/g/b/i$a;)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->b:Lcom/bumptech/glide/g/b/i$a;

    invoke-static {v0}, Lcom/bumptech/glide/g/b/i$a;->b(Lcom/bumptech/glide/g/b/i$a;)I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/b/b;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/b/b;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/b/b;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/b/b;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public invalidateSelf()V
    .locals 1

    invoke-super {p0}, Lcom/bumptech/glide/load/resource/b/b;->invalidateSelf()V

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/b/b;->invalidateSelf()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/b/b;->isRunning()Z

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v0, p0, Lcom/bumptech/glide/g/b/i;->c:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/bumptech/glide/load/resource/b/b;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/b/b;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/b/b;

    iput-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    new-instance v0, Lcom/bumptech/glide/g/b/i$a;

    iget-object v1, p0, Lcom/bumptech/glide/g/b/i;->b:Lcom/bumptech/glide/g/b/i$a;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/g/b/i$a;-><init>(Lcom/bumptech/glide/g/b/i$a;)V

    iput-object v0, p0, Lcom/bumptech/glide/g/b/i;->b:Lcom/bumptech/glide/g/b/i$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/g/b/i;->c:Z

    :cond_0
    return-object p0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/b/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/b/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/b/b;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/b/b;->setBounds(IIII)V

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/b/b;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/bumptech/glide/load/resource/b/b;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/b/b;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/b/b;->setChangingConfigurations(I)V

    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/b/b;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/b/b;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/b/b;->setDither(Z)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/b/b;->setFilterBitmap(Z)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/b/b;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/b/b;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/b/b;->stop()V

    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/bumptech/glide/load/resource/b/b;->unscheduleSelf(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bumptech/glide/g/b/i;->a:Lcom/bumptech/glide/load/resource/b/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/b/b;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
