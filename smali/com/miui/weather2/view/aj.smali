.class Lcom/miui/weather2/view/aj;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/ah;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/aj;->a:Lcom/miui/weather2/view/ah;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/miui/weather2/view/aj;->a:Lcom/miui/weather2/view/ah;

    iget-object v0, v0, Lcom/miui/weather2/view/ah;->c:Lcom/miui/weather2/view/WeatherDynamicListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->setEnabled(Z)V

    return-void
.end method
