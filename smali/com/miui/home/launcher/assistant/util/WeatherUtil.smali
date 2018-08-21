.class public Lcom/miui/home/launcher/assistant/util/WeatherUtil;
.super Ljava/lang/Object;
.source "WeatherUtil.java"


# static fields
.field public static final AQILEVEL_DANGEROUS:I = 0x4

.field public static final AQILEVEL_GOOD:I = 0x0

.field public static final AQILEVEL_HAZARDOUS:I = 0x5

.field public static final AQILEVEL_LIGHT_POLLUTION:I = 0x2

.field public static final AQILEVEL_MODERATE:I = 0x1

.field public static final AQILEVEL_UNHEALTHY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WeatherUtil"

.field public static final WEATHER_DESC_SPLIT:Ljava/lang/String; = "&&"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAQILevel(I)I
    .locals 5

    const/16 v4, 0x12c

    const/16 v3, 0xc8

    const/16 v2, 0x96

    const/16 v1, 0x64

    const/16 v0, 0x32

    if-ltz p0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-le p0, v0, :cond_1

    if-gt p0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-le p0, v1, :cond_2

    if-gt p0, v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    if-le p0, v2, :cond_3

    if-gt p0, v3, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    if-le p0, v3, :cond_4

    if-gt p0, v4, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    if-le p0, v4, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static getAQILevel(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/util/WeatherUtil;->getAQINumber(Ljava/lang/String;)I

    move-result v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/WeatherUtil;->getInternationalAQILevel(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/WeatherUtil;->getAQILevel(I)I

    move-result v1

    goto :goto_0
.end method

.method private static getAQINumber(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "WeatherUtil"

    const-string/jumbo v3, "NumberFormatException"

    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getAQIWithPrefixAndAppend(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {p0}, Lcom/miui/home/launcher/assistant/util/WeatherUtil;->getAQILevel(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    const-string/jumbo v4, ""

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x1b080000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b080001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b080002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v4, v2, v1

    new-array v5, v9, [Ljava/lang/Object;

    aget-object v6, v0, v1

    new-array v7, v9, [Ljava/lang/Object;

    aget-object v8, v3, v1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static getInternationalAQILevel(I)I
    .locals 5

    const/16 v4, 0x190

    const/16 v3, 0x12c

    const/16 v2, 0xc8

    const/16 v1, 0x64

    const/16 v0, 0x32

    if-ltz p0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-le p0, v0, :cond_1

    if-gt p0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-le p0, v1, :cond_2

    if-gt p0, v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    if-le p0, v2, :cond_3

    if-gt p0, v3, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    if-le p0, v3, :cond_4

    if-gt p0, v4, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    if-le p0, v4, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method
