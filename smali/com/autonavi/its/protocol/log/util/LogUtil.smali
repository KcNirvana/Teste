.class public Lcom/autonavi/its/protocol/log/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final Random_DAY:Ljava/lang/String; = "random_day"

.field private static final TRIGGER_DATE:Ljava/lang/String; = "trigger_date"

.field private static final TRIGGER_DAY_SPAN:Ljava/lang/String; = "day_span"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calendarToString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getNextTriggerDate(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getSavedCelendar()Ljava/util/Calendar;
    .locals 7

    const/4 v4, 0x0

    const-string/jumbo v5, "trigger_date"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lcom/autonavi/its/common/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v5, "\\|"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x2

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x5

    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v4

    goto :goto_0
.end method

.method public static getTime()Ljava/lang/Long;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public static getTimeText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return v2

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isExternalPathExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Lcom/autonavi/its/common/Util;->getExternalStroragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/protocol/log/util/LogUtil;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isTriggerDay()Z
    .locals 3

    const-string/jumbo v2, "day_span"

    invoke-static {v2}, Lcom/autonavi/its/common/PreferenceUtil;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x6

    add-int/lit8 v0, v2, 0x5

    const-string/jumbo v2, "day_span"

    invoke-static {v2, v0}, Lcom/autonavi/its/common/PreferenceUtil;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string/jumbo v2, "day_span"

    invoke-static {v2}, Lcom/autonavi/its/common/PreferenceUtil;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/autonavi/its/protocol/log/util/LogUtil;->isTriggerDay(I)Z

    move-result v2

    return v2
.end method

.method public static isTriggerDay(I)Z
    .locals 6

    const/4 v3, 0x1

    invoke-static {}, Lcom/autonavi/its/protocol/log/util/LogUtil;->getSavedCelendar()Ljava/util/Calendar;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v4, "trigger_date"

    invoke-static {p0}, Lcom/autonavi/its/protocol/log/util/LogUtil;->getNextTriggerDate(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/autonavi/its/common/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "day_span"

    invoke-static {v4, p0}, Lcom/autonavi/its/common/PreferenceUtil;->putInt(Ljava/lang/String;I)V

    :goto_0
    return v3

    :cond_0
    const-string/jumbo v4, "day_span"

    invoke-static {v4}, Lcom/autonavi/its/common/PreferenceUtil;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    if-eq p0, v2, :cond_1

    const-string/jumbo v4, "day_span"

    invoke-static {v4, p0}, Lcom/autonavi/its/common/PreferenceUtil;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "trigger_date"

    invoke-static {p0}, Lcom/autonavi/its/protocol/log/util/LogUtil;->getNextTriggerDate(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/autonavi/its/common/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v4

    if-lez v4, :cond_2

    const-string/jumbo v4, "trigger_date"

    invoke-static {p0}, Lcom/autonavi/its/protocol/log/util/LogUtil;->getNextTriggerDate(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/autonavi/its/common/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static testIsTriggerDay()V
    .locals 6

    const/4 v5, 0x7

    const-string/jumbo v3, "trigger_date"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lcom/autonavi/its/common/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/autonavi/its/protocol/log/util/LogUtil;->isTriggerDay(I)Z

    move-result v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x5

    const/16 v4, -0x28

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    const-string/jumbo v3, "trigger_date"

    invoke-static {v0}, Lcom/autonavi/its/protocol/log/util/LogUtil;->calendarToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/autonavi/its/common/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    invoke-static {v5}, Lcom/autonavi/its/protocol/log/util/LogUtil;->isTriggerDay(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
