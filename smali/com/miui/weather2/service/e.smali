.class public Lcom/miui/weather2/service/e;
.super Lcom/miui/weather2/service/d;
.source "SourceFile"


# static fields
.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/miui/weather2/service/e;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/service/d;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private h()V
    .locals 1

    sget v0, Lcom/miui/weather2/service/e;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/weather2/service/e;->b:I

    return-void
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/miui/weather2/service/e;->b:I

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "prefweathertime"

    return-object v0
.end method

.method protected b()J
    .locals 4

    sget v0, Lcom/miui/weather2/service/e;->b:I

    if-eqz v0, :cond_0

    sget v0, Lcom/miui/weather2/service/e;->b:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/service/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "POWER_SAVE_MODE_OPEN"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const-wide/32 v0, 0x36ee80

    :goto_0
    return-wide v0

    :cond_1
    const-wide/32 v0, 0xa4cb80

    goto :goto_0

    :cond_2
    sget v0, Lcom/miui/weather2/service/e;->b:I

    int-to-long v0, v0

    const-wide/32 v2, 0xdbba0

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public run()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/weather2/service/e;->d()V

    iget-object v0, p0, Lcom/miui/weather2/service/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/weather2/model/ag;->a(Landroid/content/Context;)Z

    move-result v1

    const-string v0, "Wth2:WeatherUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run() success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/weather2/service/e;->a:Landroid/content/Context;

    const-string v3, "com.miui.weather2.BACKGROUND_WEATHER_UPDATE_COMPLETED"

    const-string v4, "is_weather_update_fail_key"

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/miui/weather2/service/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/miui/weather2/service/e;->i()V

    iget-object v0, p0, Lcom/miui/weather2/service/e;->a:Landroid/content/Context;

    const-string v1, "Update"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->r(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/weather2/service/e;->a:Landroid/content/Context;

    sget v1, Lcom/miui/weather2/service/e;->b:I

    const-string v2, "background_weather_update"

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/weather2/service/e;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/weather2/service/e;->h()V

    goto :goto_1
.end method
