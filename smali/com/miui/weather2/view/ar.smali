.class Lcom/miui/weather2/view/ar;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/WeatherDynamicListView;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/WeatherDynamicListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/ar;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/miui/weather2/view/ar;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$2002(Lcom/miui/weather2/view/WeatherDynamicListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/miui/weather2/view/ar;->a:Lcom/miui/weather2/view/WeatherDynamicListView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$2100(Lcom/miui/weather2/view/WeatherDynamicListView;)Landroid/graphics/Paint;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
