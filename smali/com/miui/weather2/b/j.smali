.class Lcom/miui/weather2/b/j;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/weather2/b/i;


# direct methods
.method constructor <init>(Lcom/miui/weather2/b/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/b/j;->a:Lcom/miui/weather2/b/i;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/b/j;->a:Lcom/miui/weather2/b/i;

    iget-object v0, v0, Lcom/miui/weather2/b/i;->p:Landroid/content/res/Resources;

    const v1, 0x7f0b003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
