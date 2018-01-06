.class Lcom/miui/weather2/receiver/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/miui/weather2/receiver/ReceiverUpdateWeather;


# direct methods
.method constructor <init>(Lcom/miui/weather2/receiver/ReceiverUpdateWeather;J)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/receiver/b;->b:Lcom/miui/weather2/receiver/ReceiverUpdateWeather;

    iput-wide p2, p0, Lcom/miui/weather2/receiver/b;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/receiver/b;->b:Lcom/miui/weather2/receiver/ReceiverUpdateWeather;

    invoke-static {v0}, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->a(Lcom/miui/weather2/receiver/ReceiverUpdateWeather;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/service/ScheduleCheckService;->a(Landroid/content/Context;)V

    iget-wide v0, p0, Lcom/miui/weather2/receiver/b;->a:J

    invoke-static {v0, v1}, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->a(J)J

    iget-object v0, p0, Lcom/miui/weather2/receiver/b;->b:Lcom/miui/weather2/receiver/ReceiverUpdateWeather;

    invoke-static {v0}, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->a(Lcom/miui/weather2/receiver/ReceiverUpdateWeather;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->a()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/service/ScheduleCheckService;->a(Landroid/content/Context;J)V

    return-void
.end method
