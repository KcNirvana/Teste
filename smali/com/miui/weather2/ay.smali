.class Lcom/miui/weather2/ay;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityWeatherMain$c;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityWeatherMain$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ay;->a:Lcom/miui/weather2/ActivityWeatherMain$c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ay;->a:Lcom/miui/weather2/ActivityWeatherMain$c;

    iget-object v0, v0, Lcom/miui/weather2/ActivityWeatherMain$c;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->w(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/view/RefreshableView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/view/RefreshableView;->a()V

    return-void
.end method
