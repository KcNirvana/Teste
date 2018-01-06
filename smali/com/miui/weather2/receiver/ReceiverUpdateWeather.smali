.class public Lcom/miui/weather2/receiver/ReceiverUpdateWeather;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static b:J

.field private static c:Z


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->b:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a()J
    .locals 2

    sget-wide v0, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->b:J

    return-wide v0
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->b:J

    return-wide p0
.end method

.method static synthetic a(Lcom/miui/weather2/receiver/ReceiverUpdateWeather;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/miui/weather2/service/UpdateService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private a(Landroid/content/Context;ZZ)V
    .locals 6

    const-wide/32 v4, 0x36ee80

    const-wide/32 v2, 0xdbba0

    const v0, 0x187a0

    invoke-static {p1, v0}, Lcom/miui/weather2/service/ScheduleCheckService;->c(Landroid/content/Context;I)J

    move-result-wide v0

    sput-wide v0, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->b:J

    sget-wide v0, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->b(J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-wide v0, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    invoke-direct {p0, v4, v5}, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->b(J)V

    goto :goto_0
.end method

.method private b(J)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/weather2/receiver/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/weather2/receiver/b;-><init>(Lcom/miui/weather2/receiver/ReceiverUpdateWeather;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    const v0, 0x187a0

    invoke-static {p1, v0}, Lcom/miui/weather2/service/ScheduleCheckService;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->a:Landroid/content/Context;

    sget-wide v2, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->b:J

    invoke-static {v0, v2, v3}, Lcom/miui/weather2/service/ScheduleCheckService;->a(Landroid/content/Context;J)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Wth2:ReceiverUpdateWeather"

    const-string v1, "onReceive() action is null"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Wth2:ReceiverUpdateWeather"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.miui.weather2.FROM_FOREGROUND_TO_WAKE_BACKGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.miui.weather2.BACKGROUND_WEATHER_UPDATE_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "is_weather_update_fail_key"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->c:Z

    goto :goto_0

    :cond_4
    const-string v1, "com.miui.weather2.BACKGROUND_LOCATION_UPDATE_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "is_location_update_fail_key"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sget-boolean v1, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->c:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->a(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_5
    const-string v1, "com.miui.weather2.BACKGROUND_UPDATE_DELAY_CHECK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/weather2/receiver/ReceiverUpdateWeather;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
