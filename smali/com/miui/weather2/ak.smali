.class Lcom/miui/weather2/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityWeatherMain;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityWeatherMain;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ak;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/ak;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->i(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/c;->a(Z)V

    iget-object v0, p0, Lcom/miui/weather2/ak;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/e;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/weather2/push/d;->a()Lcom/miui/weather2/push/d;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ak;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/push/d;->a(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/weather2/al;

    invoke-direct {v1, p0}, Lcom/miui/weather2/al;-><init>(Lcom/miui/weather2/ak;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/miui/weather2/ak;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/ak;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v1}, Lcom/miui/weather2/tools/at;->a(Landroid/app/Activity;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/weather2/ActivityWeatherMain;->a:Z

    iget-object v0, p0, Lcom/miui/weather2/ak;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-object v1, p0, Lcom/miui/weather2/ak;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-boolean v1, v1, Lcom/miui/weather2/ActivityWeatherMain;->a:Z

    iput-boolean v1, v0, Lcom/miui/weather2/ActivityWeatherMain;->b:Z

    iget-object v0, p0, Lcom/miui/weather2/ak;->a:Lcom/miui/weather2/ActivityWeatherMain;

    iget-boolean v0, v0, Lcom/miui/weather2/ActivityWeatherMain;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ak;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->A(Lcom/miui/weather2/ActivityWeatherMain;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ak;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-static {v0}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;)Lcom/miui/weather2/tools/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/ak;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-virtual {v1}, Lcom/miui/weather2/ActivityWeatherMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/tools/ax;->a(Landroid/content/Context;)V

    const-string v0, "normal_click"

    const-string v1, "agree_connect"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
