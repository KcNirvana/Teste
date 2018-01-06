.class Lcom/miui/weather2/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityWeatherMain;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityWeatherMain;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/aj;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/aj;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-virtual {v0}, Lcom/miui/weather2/ActivityWeatherMain;->a()V

    iget-object v0, p0, Lcom/miui/weather2/aj;->a:Lcom/miui/weather2/ActivityWeatherMain;

    invoke-virtual {v0}, Lcom/miui/weather2/ActivityWeatherMain;->b()V

    iget-object v0, p0, Lcom/miui/weather2/aj;->a:Lcom/miui/weather2/ActivityWeatherMain;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/weather2/ActivityWeatherMain;->a(Lcom/miui/weather2/ActivityWeatherMain;Z)Z

    const/4 v0, 0x0

    return v0
.end method
