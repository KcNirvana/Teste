.class Lcom/miui/weather2/bc;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/miui/weather2/ActivityWeatherMain$e;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityWeatherMain$e;Ljava/lang/Boolean;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/bc;->c:Lcom/miui/weather2/ActivityWeatherMain$e;

    iput-object p2, p0, Lcom/miui/weather2/bc;->a:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/miui/weather2/bc;->b:Landroid/content/Context;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/bc;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/bc;->c:Lcom/miui/weather2/ActivityWeatherMain$e;

    iget-object v0, v0, Lcom/miui/weather2/ActivityWeatherMain$e;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->r(Lcom/miui/weather2/ActivityWeatherMain;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/weather2/ActivityWeatherMain;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "weather.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/bc;->c:Lcom/miui/weather2/ActivityWeatherMain$e;

    iget-object v1, v1, Lcom/miui/weather2/ActivityWeatherMain$e;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->s(Lcom/miui/weather2/ActivityWeatherMain;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/weather2/bc;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/tools/aw;->a(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/bc;->c:Lcom/miui/weather2/ActivityWeatherMain$e;

    iget-object v0, v0, Lcom/miui/weather2/ActivityWeatherMain$e;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->t(Lcom/miui/weather2/ActivityWeatherMain;)V

    iget-object v0, p0, Lcom/miui/weather2/bc;->c:Lcom/miui/weather2/ActivityWeatherMain$e;

    iget-object v0, v0, Lcom/miui/weather2/ActivityWeatherMain$e;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->u(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/ShareWaitCover;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/view/ShareWaitCover;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/miui/weather2/bc;->c:Lcom/miui/weather2/ActivityWeatherMain$e;

    iget-object v0, v0, Lcom/miui/weather2/ActivityWeatherMain$e;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/bc;->c:Lcom/miui/weather2/ActivityWeatherMain$e;

    iget-object v1, v1, Lcom/miui/weather2/ActivityWeatherMain$e;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/ActivityWeatherMain;->d(Lcom/miui/weather2/ActivityWeatherMain;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->b(Lcom/miui/weather2/ActivityWeatherMain;I)Lcom/miui/weather2/view/WeatherScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/weather2/view/WeatherScrollView;->c()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/bc;->b:Landroid/content/Context;

    const v1, 0x7f0900d7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
