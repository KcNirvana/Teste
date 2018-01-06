.class Lcom/miui/weather2/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic b:I

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:I

.field final synthetic e:Lcom/miui/weather2/view/WeatherScrollView;

.field final synthetic f:Lcom/miui/weather2/ActivityWeatherMain$c;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityWeatherMain$c;Landroid/view/ViewGroup$LayoutParams;ILandroid/view/ViewGroup;ILcom/miui/weather2/view/WeatherScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/az;->f:Lcom/miui/weather2/ActivityWeatherMain$c;

    iput-object p2, p0, Lcom/miui/weather2/az;->a:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lcom/miui/weather2/az;->b:I

    iput-object p4, p0, Lcom/miui/weather2/az;->c:Landroid/view/ViewGroup;

    iput p5, p0, Lcom/miui/weather2/az;->d:I

    iput-object p6, p0, Lcom/miui/weather2/az;->e:Lcom/miui/weather2/view/WeatherScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const v1, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/weather2/az;->a:Landroid/view/ViewGroup$LayoutParams;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/az;->a:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, p0, Lcom/miui/weather2/az;->b:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/miui/weather2/az;->c:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/miui/weather2/az;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/weather2/az;->a:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    add-float/2addr v0, v5

    iget v2, p0, Lcom/miui/weather2/az;->d:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/miui/weather2/az;->e:Lcom/miui/weather2/view/WeatherScrollView;

    iget-object v1, v1, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->setScaleX(F)V

    iget-object v1, p0, Lcom/miui/weather2/az;->e:Lcom/miui/weather2/view/WeatherScrollView;

    iget-object v1, v1, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v1, v5}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->setPivotY(F)V

    iget-object v1, p0, Lcom/miui/weather2/az;->e:Lcom/miui/weather2/view/WeatherScrollView;

    iget-object v1, v1, Lcom/miui/weather2/view/WeatherScrollView;->n:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-virtual {v1, v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->setScaleY(F)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
