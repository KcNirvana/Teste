.class Lcom/miui/weather2/view/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/miui/weather2/view/AqiQualitySecondPart;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/AqiQualitySecondPart;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    iput-object p2, p0, Lcom/miui/weather2/view/d;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->a(Lcom/miui/weather2/view/AqiQualitySecondPart;)[Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v1}, Lcom/miui/weather2/view/AqiQualitySecondPart;->b(Lcom/miui/weather2/view/AqiQualitySecondPart;)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    iget-object v1, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v1}, Lcom/miui/weather2/view/AqiQualitySecondPart;->a(Lcom/miui/weather2/view/AqiQualitySecondPart;)[Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v2}, Lcom/miui/weather2/view/AqiQualitySecondPart;->b(Lcom/miui/weather2/view/AqiQualitySecondPart;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/weather2/view/d;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v2}, Lcom/miui/weather2/view/AqiQualitySecondPart;->c(Lcom/miui/weather2/view/AqiQualitySecondPart;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/weather2/view/AqiQualitySecondPart;->a(Lcom/miui/weather2/view/AqiQualitySecondPart;I)I

    iget-object v0, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->d(Lcom/miui/weather2/view/AqiQualitySecondPart;)Lcom/miui/weather2/structures/AQIData;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-virtual {v1}, Lcom/miui/weather2/view/AqiQualitySecondPart;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v2}, Lcom/miui/weather2/view/AqiQualitySecondPart;->b(Lcom/miui/weather2/view/AqiQualitySecondPart;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/weather2/structures/AQIData;->isPollutionItemPopupWindowStart(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    iget-object v1, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v1}, Lcom/miui/weather2/view/AqiQualitySecondPart;->e(Lcom/miui/weather2/view/AqiQualitySecondPart;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/weather2/view/AqiQualitySecondPart;->b(Lcom/miui/weather2/view/AqiQualitySecondPart;I)I

    iget-object v0, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->f(Lcom/miui/weather2/view/AqiQualitySecondPart;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-virtual {v1}, Lcom/miui/weather2/view/AqiQualitySecondPart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->f(Lcom/miui/weather2/view/AqiQualitySecondPart;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v1}, Lcom/miui/weather2/view/AqiQualitySecondPart;->a(Lcom/miui/weather2/view/AqiQualitySecondPart;)[Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v2}, Lcom/miui/weather2/view/AqiQualitySecondPart;->b(Lcom/miui/weather2/view/AqiQualitySecondPart;)I

    move-result v2

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v2}, Lcom/miui/weather2/view/AqiQualitySecondPart;->g(Lcom/miui/weather2/view/AqiQualitySecondPart;)I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v3}, Lcom/miui/weather2/view/AqiQualitySecondPart;->h(Lcom/miui/weather2/view/AqiQualitySecondPart;)I

    move-result v3

    neg-int v3, v3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    iget-object v1, p0, Lcom/miui/weather2/view/d;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v2}, Lcom/miui/weather2/view/AqiQualitySecondPart;->a(Lcom/miui/weather2/view/AqiQualitySecondPart;)[Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v3}, Lcom/miui/weather2/view/AqiQualitySecondPart;->b(Lcom/miui/weather2/view/AqiQualitySecondPart;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v2}, Lcom/miui/weather2/view/AqiQualitySecondPart;->e(Lcom/miui/weather2/view/AqiQualitySecondPart;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/miui/weather2/view/AqiQualitySecondPart;->b(Lcom/miui/weather2/view/AqiQualitySecondPart;I)I

    iget-object v0, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->f(Lcom/miui/weather2/view/AqiQualitySecondPart;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/d;->b:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-virtual {v1}, Lcom/miui/weather2/view/AqiQualitySecondPart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
