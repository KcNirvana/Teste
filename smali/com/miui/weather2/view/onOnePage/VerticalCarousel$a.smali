.class Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/view/onOnePage/VerticalCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;


# direct methods
.method private constructor <init>(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;Lcom/miui/weather2/view/onOnePage/bg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;-><init>(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->a(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->v(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->x(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->w(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->u(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->w(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->w(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->x(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->w(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->w(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->u(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/VerticalCarousel$a;->a:Lcom/miui/weather2/view/onOnePage/VerticalCarousel;

    invoke-static {v1}, Lcom/miui/weather2/view/onOnePage/VerticalCarousel;->w(Lcom/miui/weather2/view/onOnePage/VerticalCarousel;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    goto :goto_0
.end method
