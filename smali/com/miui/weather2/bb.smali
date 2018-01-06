.class Lcom/miui/weather2/bb;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/weather2/ActivityWeatherMain$c;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityWeatherMain$c;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/bb;->b:Lcom/miui/weather2/ActivityWeatherMain$c;

    iput-boolean p2, p0, Lcom/miui/weather2/bb;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/weather2/bb;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/bb;->b:Lcom/miui/weather2/ActivityWeatherMain$c;

    iget-object v0, v0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->I(Lcom/miui/weather2/ActivityWeatherMain;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/bb;->b:Lcom/miui/weather2/ActivityWeatherMain$c;

    iget-object v0, v0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->w(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/RefreshableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/view/RefreshableView;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/bb;->b:Lcom/miui/weather2/ActivityWeatherMain$c;

    iget-object v0, v0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    const v1, 0x7f0900c5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
