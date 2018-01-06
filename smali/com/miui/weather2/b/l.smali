.class public Lcom/miui/weather2/b/l;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/miui/weather2/tools/av$a;


# instance fields
.field private a:Lcom/miui/weather2/b/k;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/b/l;->b:I

    new-instance v0, Lcom/miui/weather2/b/k;

    invoke-direct {v0, p1, p0}, Lcom/miui/weather2/b/k;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/miui/weather2/b/l;->a:Lcom/miui/weather2/b/k;

    const v0, 0x7f0a0131

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/l;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/l;->a:Lcom/miui/weather2/b/k;

    invoke-virtual {v0}, Lcom/miui/weather2/b/k;->a()V

    return-void
.end method

.method public a(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/l;->a:Lcom/miui/weather2/b/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/l;->a:Lcom/miui/weather2/b/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/weather2/b/k;->a(FFF)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/l;->a:Lcom/miui/weather2/b/k;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/b/k;->a(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/b/l;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/l;->a:Lcom/miui/weather2/b/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/l;->a:Lcom/miui/weather2/b/k;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/b/k;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/weather2/b/l;->a:Lcom/miui/weather2/b/k;

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/miui/weather2/b/l;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/miui/weather2/b/l;->a:Lcom/miui/weather2/b/k;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/b/k;->onBoundsChange(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
