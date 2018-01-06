.class Lcom/miui/weather2/view/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver;

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/miui/weather2/view/WeatherDynamicListView;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/WeatherDynamicListView;Landroid/view/ViewTreeObserver;JII)V
    .locals 1

    iput-object p1, p0, Lcom/miui/weather2/view/ap;->e:Lcom/miui/weather2/view/WeatherDynamicListView;

    iput-object p2, p0, Lcom/miui/weather2/view/ap;->a:Landroid/view/ViewTreeObserver;

    iput-wide p3, p0, Lcom/miui/weather2/view/ap;->b:J

    iput p5, p0, Lcom/miui/weather2/view/ap;->c:I

    iput p6, p0, Lcom/miui/weather2/view/ap;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/miui/weather2/view/ap;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/ap;->e:Lcom/miui/weather2/view/WeatherDynamicListView;

    iget-wide v2, p0, Lcom/miui/weather2/view/ap;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/weather2/view/WeatherDynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/ap;->e:Lcom/miui/weather2/view/WeatherDynamicListView;

    iget-object v2, p0, Lcom/miui/weather2/view/ap;->e:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v2}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$1800(Lcom/miui/weather2/view/WeatherDynamicListView;)I

    move-result v2

    iget v3, p0, Lcom/miui/weather2/view/ap;->c:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$1802(Lcom/miui/weather2/view/WeatherDynamicListView;I)I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/miui/weather2/view/ap;->d:I

    sub-int v1, v2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v5, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/view/ap;->e:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$1900(Lcom/miui/weather2/view/WeatherDynamicListView;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return v5
.end method
