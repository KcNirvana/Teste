.class Lcom/miui/weather2/view/ag;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/miui/weather2/view/WeatherDynamicListView;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/WeatherDynamicListView;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/ag;->c:Lcom/miui/weather2/view/WeatherDynamicListView;

    iput-object p2, p0, Lcom/miui/weather2/view/ag;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/weather2/view/ag;->b:Ljava/util/List;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/miui/weather2/view/ag;->c:Lcom/miui/weather2/view/WeatherDynamicListView;

    iget-object v1, p0, Lcom/miui/weather2/view/ag;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/weather2/view/ag;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/view/WeatherDynamicListView;->access$2200(Lcom/miui/weather2/view/WeatherDynamicListView;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
