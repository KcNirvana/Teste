.class public Lcom/miui/weather2/b/k;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/miui/weather2/tools/av$a;


# instance fields
.field private a:Lcom/miui/weather2/b/q;

.field private b:Lcom/miui/weather2/b/z;

.field private c:[Lcom/miui/weather2/b/p;

.field private d:Landroid/content/res/Resources;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0x63

    iput v0, p0, Lcom/miui/weather2/b/k;->f:I

    new-instance v0, Lcom/miui/weather2/b/q;

    invoke-direct {v0, p1}, Lcom/miui/weather2/b/q;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/miui/weather2/b/k;->a:Lcom/miui/weather2/b/q;

    iput-object p2, p0, Lcom/miui/weather2/b/k;->e:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/miui/weather2/b/k;->d:Landroid/content/res/Resources;

    return-void
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/b/k;->b:Lcom/miui/weather2/b/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/k;->b:Lcom/miui/weather2/b/z;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/b/z;->a(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/b/k;->c:[Lcom/miui/weather2/b/p;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/weather2/b/k;->c:[Lcom/miui/weather2/b/p;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/b/k;->c:[Lcom/miui/weather2/b/p;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/miui/weather2/b/p;->a(Landroid/graphics/Rect;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(I)Z
    .locals 1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)Z
    .locals 1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    const/16 v0, 0x11

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/weather2/b/k;->b:Lcom/miui/weather2/b/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/k;->b:Lcom/miui/weather2/b/z;

    invoke-virtual {v0}, Lcom/miui/weather2/b/z;->a()V

    iput-object v1, p0, Lcom/miui/weather2/b/k;->b:Lcom/miui/weather2/b/z;

    :cond_0
    iput-object v1, p0, Lcom/miui/weather2/b/k;->c:[Lcom/miui/weather2/b/p;

    iget-object v0, p0, Lcom/miui/weather2/b/k;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/b/k;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    iput-object v1, p0, Lcom/miui/weather2/b/k;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public a(FFF)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/weather2/b/k;->c:[Lcom/miui/weather2/b/p;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/weather2/b/k;->c:[Lcom/miui/weather2/b/p;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/miui/weather2/b/k;->c:[Lcom/miui/weather2/b/p;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2, p3, v1}, Lcom/miui/weather2/b/p;->a(FFFI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/miui/weather2/b/k;->f:I

    if-eq p1, v0, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/weather2/b/k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/b/k;->b:Lcom/miui/weather2/b/z;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/weather2/b/z;

    iget-object v1, p0, Lcom/miui/weather2/b/k;->d:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/miui/weather2/b/z;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/miui/weather2/b/k;->b:Lcom/miui/weather2/b/z;

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/weather2/b/k;->c(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/b/k;->a:Lcom/miui/weather2/b/q;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/b/q;->a(I)[Lcom/miui/weather2/b/p;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/b/k;->c:[Lcom/miui/weather2/b/p;

    :goto_1
    iget-object v0, p0, Lcom/miui/weather2/b/k;->g:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/b/k;->g:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/miui/weather2/b/k;->a(Landroid/graphics/Rect;)V

    :cond_1
    iput p1, p0, Lcom/miui/weather2/b/k;->f:I

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/b/k;->b:Lcom/miui/weather2/b/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/k;->b:Lcom/miui/weather2/b/z;

    invoke-virtual {v0}, Lcom/miui/weather2/b/z;->a()V

    iput-object v2, p0, Lcom/miui/weather2/b/k;->b:Lcom/miui/weather2/b/z;

    goto :goto_0

    :cond_4
    iput-object v2, p0, Lcom/miui/weather2/b/k;->c:[Lcom/miui/weather2/b/p;

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/b/k;->b:Lcom/miui/weather2/b/z;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/k;->c:[Lcom/miui/weather2/b/p;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/b/k;->b:Lcom/miui/weather2/b/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/b/k;->b:Lcom/miui/weather2/b/z;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/b/z;->a(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/b/k;->c:[Lcom/miui/weather2/b/p;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/miui/weather2/b/k;->c:[Lcom/miui/weather2/b/p;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/weather2/b/k;->c:[Lcom/miui/weather2/b/p;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/miui/weather2/b/p;->a(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/weather2/b/k;->invalidateSelf()V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateSelf()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/k;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/b/k;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/miui/weather2/b/k;->g:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/miui/weather2/b/k;->a(Landroid/graphics/Rect;)V

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
