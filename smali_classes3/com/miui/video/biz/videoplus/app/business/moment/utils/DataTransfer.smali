.class public Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;
.super Ljava/lang/Object;
.source "DataTransfer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addCountItem(Ljava/util/List;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;",
            ">;II)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setLayoutType(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p2, :cond_1

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$plurals;->plus_serval_pictures:I

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, p2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-lez p1, :cond_2

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v4, Lcom/miui/video/biz/videoplus/R$plurals;->plus_serval_videos:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {p2, v4, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setBaseLabel(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static box(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static deleteFileNotExist(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/framework/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method private static getAvailableHeight()F
    .locals 4

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$dimen;->home_top_tab_indicator_high:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$dimen;->home_bottom_tab_indicator_high:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v2

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/common/library/utils/DeviceUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenHeightPixels()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    sub-float/2addr v3, v0

    sub-float/2addr v3, v1

    return v3
.end method

.method private static getDate(J)Ljava/lang/String;
    .locals 4

    invoke-static {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToDateInMillis(J)J

    move-result-wide p0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getTodayTimeInMillis()J

    move-result-wide v0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/miui/video/biz/videoplus/R$string;->today:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getYesterdayTimeInMillis()J

    move-result-wide v2

    cmp-long v2, p0, v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/miui/video/biz/videoplus/R$string;->yesterday:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getBeforeYesterdayTimeInMillis()J

    move-result-wide v2

    cmp-long v2, p0, v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/miui/video/biz/videoplus/R$string;->before_yestoday:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    cmp-long v2, v0, p0

    if-lez v2, :cond_3

    invoke-static {p0, p1, v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getDistanceTimesInDay(JJ)I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_3

    invoke-static {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getWeekDayString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static getDateFormat(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getModifiedDate(Ljava/util/Locale;JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_18_JELLY_BEAN_MR2()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {p0, p3}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->getDateFormat(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static setDateFormat(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;JI)V
    .locals 6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-wide/16 v4, 0x3e8

    if-eqz v0, :cond_4

    if-ne p3, v3, :cond_1

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getTodayTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-long p1, p1, v4

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p3, v0

    if-lez p3, :cond_0

    sget-object p3, Lcom/miui/video/framework/utils/FormatUtils;->DATE_58:Ljava/text/SimpleDateFormat;

    invoke-static {p3, p1, p2}, Lcom/miui/video/framework/utils/FormatUtils;->formatDate(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDateFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    sget-object p3, Lcom/miui/video/framework/utils/FormatUtils;->DATE_54:Ljava/text/SimpleDateFormat;

    invoke-static {p3, p1, p2}, Lcom/miui/video/framework/utils/FormatUtils;->formatDate(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDateFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    if-ne p3, v2, :cond_3

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getTodayTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-long p1, p1, v4

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p3, v0

    if-lez p3, :cond_2

    sget-object p3, Lcom/miui/video/framework/utils/FormatUtils;->DATE_56:Ljava/text/SimpleDateFormat;

    invoke-static {p3, p1, p2}, Lcom/miui/video/framework/utils/FormatUtils;->formatDate(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDateFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    sget-object p3, Lcom/miui/video/framework/utils/FormatUtils;->DATE_57:Ljava/text/SimpleDateFormat;

    invoke-static {p3, p1, p2}, Lcom/miui/video/framework/utils/FormatUtils;->formatDate(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDateFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    if-ne p3, v1, :cond_9

    sget-object p3, Lcom/miui/video/framework/utils/FormatUtils;->DATE_55:Ljava/text/SimpleDateFormat;

    mul-long p1, p1, v4

    invoke-static {p3, p1, p2}, Lcom/miui/video/framework/utils/FormatUtils;->formatDate(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDateFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    if-ne p3, v3, :cond_6

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getTodayTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-long p1, p1, v4

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p3, v0

    if-lez p3, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string v0, "yyyy-M"

    invoke-static {p3, p1, p2, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->getModifiedDate(Ljava/util/Locale;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDateFormat(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string v0, "MM"

    invoke-static {p3, p1, p2, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->getModifiedDate(Ljava/util/Locale;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDateFormat(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-ne p3, v2, :cond_8

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getTodayTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-long p1, p1, v4

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p3, v0

    if-lez p3, :cond_7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string v0, "yyyy-MM-dd"

    invoke-static {p3, p1, p2, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->getModifiedDate(Ljava/util/Locale;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDateFormat(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string v0, "MM-dd"

    invoke-static {p3, p1, p2, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->getModifiedDate(Ljava/util/Locale;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDateFormat(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    if-ne p3, v1, :cond_9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    mul-long p1, p1, v4

    const-string v0, "yyyy\u5e74"

    invoke-static {p3, p1, p2, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->getModifiedDate(Ljava/util/Locale;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDateFormat(Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method

.method private static split(Ljava/util/List;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;",
            ">;",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static/range {p0 .. p0}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v5, 0x2710

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v5, 0x5

    goto :goto_0

    :pswitch_1
    const/16 v5, 0x18

    :goto_0
    mul-int v6, v1, v5

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-le v3, v6, :cond_1

    div-int v10, v3, v6

    add-int/lit8 v10, v10, -0x1

    int-to-float v11, v3

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float/2addr v11, v6

    int-to-float v6, v10

    sub-float/2addr v11, v6

    sub-float v6, v11, v8

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p4 .. p6}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->box(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v4

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_2
    if-ge v7, v3, :cond_a

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_2

    goto/16 :goto_8

    :cond_2
    if-lez v10, :cond_3

    if-ne v13, v10, :cond_3

    move-object/from16 v9, p7

    move/from16 v19, v5

    move/from16 v20, v6

    const/4 v13, 0x0

    :goto_3
    move-wide/from16 v5, p9

    goto/16 :goto_7

    :cond_3
    int-to-float v4, v14

    mul-float v4, v4, v6

    add-float v18, v4, v15

    cmpl-float v18, v18, v8

    if-lez v18, :cond_4

    sub-float/2addr v4, v8

    move-object/from16 v9, p7

    move v15, v4

    move/from16 v19, v5

    move/from16 v20, v6

    const/4 v14, 0x0

    goto :goto_3

    :cond_4
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    if-nez v16, :cond_7

    new-instance v8, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-direct {v8}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;-><init>()V

    invoke-virtual {v8, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setColumnCount(I)V

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setLayoutType(I)V

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    move-object/from16 v9, p7

    invoke-virtual {v8, v9}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDateDesc(Ljava/lang/String;)V

    move-object/from16 v2, p8

    move/from16 v19, v5

    move/from16 v20, v6

    move-wide/from16 v5, p9

    goto :goto_5

    :cond_5
    move-object/from16 v9, p7

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    move/from16 v19, v5

    move-object/from16 v5, p4

    invoke-virtual {v8, v5}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setYear(Ljava/lang/String;)V

    move-object/from16 v5, p5

    invoke-virtual {v8, v5}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setMonth(Ljava/lang/String;)V

    move-object/from16 v5, p6

    invoke-virtual {v8, v5}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDay(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDateDesc(Ljava/lang/String;)V

    move/from16 v20, v6

    move-wide/from16 v5, p9

    invoke-static {v8, v5, v6, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->setDateFormat(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;JI)V

    goto :goto_4

    :cond_6
    move/from16 v19, v5

    move/from16 v20, v6

    move-wide/from16 v5, p9

    :goto_4
    move-object/from16 v2, p8

    :goto_5
    invoke-virtual {v8, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setLocationDes(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setAddress(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move-object/from16 v9, p7

    move/from16 v19, v5

    move/from16 v20, v6

    move-wide/from16 v5, p9

    move-object/from16 v8, v16

    :goto_6
    invoke-virtual {v8}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v17, 0x1

    if-ne v2, v1, :cond_8

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v8, 0x0

    :cond_8
    add-int/lit8 v4, v3, -0x1

    if-ne v7, v4, :cond_9

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    move/from16 v17, v2

    move-object/from16 v16, v8

    :goto_7
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v2, p3

    const/4 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    goto/16 :goto_2

    :cond_a
    :goto_8
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static transferToMomentEntityForAll(Ljava/util/List;II)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;II)",
            "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v12, p2

    new-instance v13, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    invoke-direct {v13}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v13

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->getAvailableHeight()F

    move-result v14

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result v1

    div-int v16, v1, p1

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$dimen;->moment_title_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v10, v1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "abc"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, v1

    move-object v8, v3

    move-object/from16 v22, v8

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-wide/from16 v20, v17

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/16 v19, 0x0

    const/16 v26, 0x0

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v9, v3, :cond_12

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isHidded()Z

    move-result v3

    const/16 v27, 0x1

    if-nez v3, :cond_11

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/video/framework/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFileName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_b

    :cond_1
    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isImage()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_2
    :goto_1
    move/from16 v29, v1

    move/from16 v28, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :goto_2
    const-string v1, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getLocation()Ljava/lang/String;

    move-result-object v15

    const-wide/16 v30, 0x3e8

    packed-switch v12, :pswitch_data_0

    :cond_4
    :goto_3
    move-object/from16 v35, v13

    move-object/from16 v41, v5

    move-object v5, v1

    move-object/from16 v1, v41

    move-object/from16 v42, v4

    move-object v4, v3

    move-object/from16 v3, v42

    goto/16 :goto_4

    :pswitch_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getTodayTimeInMillis()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v33

    mul-long v33, v33, v30

    invoke-static/range {v33 .. v34}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    sub-int v32, v32, v33

    if-lez v32, :cond_5

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v3

    mul-long v3, v3, v30

    invoke-static {v3, v4}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v3

    mul-long v3, v3, v30

    invoke-static {v3, v4}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToMonth(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v32

    mul-long v32, v32, v30

    invoke-static/range {v32 .. v33}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToDay(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v32

    mul-long v32, v32, v30

    invoke-static/range {v32 .. v33}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->getDate(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_4

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v3

    mul-long v3, v3, v30

    invoke-static {v3, v4}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToMonth(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v32

    mul-long v32, v32, v30

    invoke-static/range {v32 .. v33}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToDay(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :pswitch_1
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getTodayTimeInMillis()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v32

    mul-long v32, v32, v30

    invoke-static/range {v32 .. v33}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    sub-int v3, v3, v32

    if-lez v3, :cond_6

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v32

    mul-long v32, v32, v30

    invoke-static/range {v32 .. v33}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v32

    mul-long v32, v32, v30

    invoke-static/range {v32 .. v33}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToMonth(J)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v32

    mul-long v32, v32, v30

    invoke-static/range {v32 .. v33}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToMonth(J)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v32

    mul-long v32, v32, v30

    invoke-static/range {v32 .. v33}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :goto_4
    invoke-static {v5, v4, v3}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->box(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_8

    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    move-object/from16 v36, v1

    goto :goto_7

    :cond_8
    :goto_6
    invoke-static {v15, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_c

    goto :goto_5

    :goto_7
    move-object v1, v2

    move-object v2, v6

    move/from16 v37, v14

    move-object v14, v3

    move/from16 v3, p1

    move-object v0, v4

    move/from16 v4, p2

    move-object/from16 v38, v15

    move-object v15, v5

    move-object/from16 v5, v22

    move-object/from16 v39, v6

    move-object/from16 v6, v23

    move-object/from16 v30, v7

    move-object/from16 v7, v24

    move-object/from16 v31, v8

    move-object/from16 v8, v25

    move/from16 v40, v9

    move-object/from16 v9, v30

    move/from16 v32, v10

    move-object v12, v11

    move-wide/from16 v10, v20

    invoke-static/range {v1 .. v11}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->split(Ljava/util/List;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    mul-int v2, v2, v16

    add-int v26, v26, v2

    invoke-interface {v12, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-direct {v2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;-><init>()V

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v8, v36

    invoke-virtual {v2, v8}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDateDesc(Ljava/lang/String;)V

    const-string v22, ""

    const-string v23, ""

    const-string v24, ""

    move-object v13, v8

    move-object/from16 v25, v13

    move-object v10, v12

    move-wide/from16 v3, v17

    move/from16 v12, p2

    goto :goto_8

    :cond_a
    move-object/from16 v8, v36

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v2, v15}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setYear(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setMonth(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDay(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDateDesc(Ljava/lang/String;)V

    const-string v25, ""

    invoke-virtual/range {v39 .. v39}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v3

    invoke-virtual/range {v39 .. v39}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v5

    move-object v10, v12

    move/from16 v12, p2

    invoke-static {v2, v5, v6, v12}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->setDateFormat(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;JI)V

    move-object/from16 v23, v0

    move-object/from16 v24, v14

    move-object/from16 v22, v15

    goto :goto_8

    :cond_b
    move-object v10, v12

    move/from16 v12, p2

    move-wide/from16 v3, v20

    move-object/from16 v13, v31

    :goto_8
    invoke-virtual/range {v39 .. v39}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setAddress(Ljava/lang/String;)V

    move-object/from16 v9, v38

    invoke-virtual {v2, v9}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setLocationDes(Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setLayoutType(I)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v26, v26, v32

    move-object v11, v1

    move-wide/from16 v20, v3

    move-object/from16 v30, v9

    goto :goto_9

    :cond_c
    move-object v0, v4

    move-object/from16 v39, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move/from16 v40, v9

    move/from16 v32, v10

    move-object v10, v11

    move/from16 v37, v14

    move-object v9, v15

    move-object v8, v1

    move-object v14, v3

    move-object v15, v5

    move-object v11, v2

    move-object/from16 v13, v31

    :goto_9
    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-direct {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;-><init>()V

    invoke-virtual/range {v39 .. v39}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->setImageUrl(Ljava/lang/String;)V

    const/4 v2, 0x3

    if-ne v12, v2, :cond_d

    invoke-virtual/range {v39 .. v39}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->setDesc(Ljava/lang/String;)V

    :cond_d
    move-object/from16 v3, v39

    invoke-virtual {v1, v3}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->setExt(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    move-object v6, v0

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->setExtList(Ljava/util/List;)V

    invoke-virtual {v1, v13}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->setDateDesc(Ljava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move/from16 v7, v40

    if-ne v7, v1, :cond_e

    move-object v1, v11

    move-object v2, v3

    move/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v15

    move v15, v7

    move-object v7, v14

    move-object v14, v10

    move-object/from16 v31, v11

    move-wide/from16 v10, v20

    invoke-static/range {v1 .. v11}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->split(Ljava/util/List;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    mul-int v2, v2, v16

    add-int v26, v26, v2

    invoke-interface {v14, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_a

    :cond_e
    move v15, v7

    move-object v14, v10

    move-object/from16 v31, v11

    :cond_f
    :goto_a
    move/from16 v1, v26

    int-to-float v2, v1

    cmpl-float v2, v2, v37

    if-lez v2, :cond_10

    move/from16 v26, v1

    move-object v8, v13

    move/from16 v4, v28

    move/from16 v1, v29

    move-object/from16 v7, v30

    move-object/from16 v2, v31

    const/16 v19, 0x1

    goto :goto_c

    :cond_10
    move/from16 v26, v1

    move-object v8, v13

    move/from16 v4, v28

    move/from16 v1, v29

    move-object/from16 v7, v30

    move-object/from16 v2, v31

    goto :goto_c

    :cond_11
    :goto_b
    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move v15, v9

    move/from16 v32, v10

    move-object/from16 v35, v13

    move/from16 v37, v14

    move-object v14, v11

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    :goto_c
    add-int/lit8 v9, v15, 0x1

    move-object v11, v14

    move/from16 v10, v32

    move-object/from16 v13, v35

    move/from16 v14, v37

    goto/16 :goto_0

    :cond_12
    move-object v14, v11

    move-object v2, v13

    invoke-virtual {v2, v14}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;->setList(Ljava/util/List;)V

    if-eqz v19, :cond_13

    invoke-static {v14, v4, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->addCountItem(Ljava/util/List;II)V

    :cond_13
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static transferToMomentEntityForImage(Ljava/util/List;II)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;II)",
            "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->transferToMomentEntityForAll(Ljava/util/List;II)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    move-result-object p0

    return-object p0
.end method

.method public static transferToMomentEntityForVideo(Ljava/util/List;I)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;I)",
            "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;

    invoke-direct {v2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->getAvailableHeight()F

    move-result v4

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/miui/video/biz/videoplus/R$dimen;->moment_title_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/miui/video/biz/videoplus/R$dimen;->dp_13:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/miui/video/biz/videoplus/R$dimen;->sp_10:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    add-float/2addr v6, v7

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/miui/video/biz/videoplus/R$dimen;->dp_6:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result v7

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/miui/video/biz/videoplus/R$dimen;->dp_13:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v8, v8, v9

    float-to-int v8, v8

    sub-int/2addr v7, v8

    const-string v8, "abc"

    const/4 v10, 0x0

    move-object v12, v8

    move-object v11, v10

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v14

    if-ge v8, v14, :cond_d

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/miui/video/framework/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isHidded()Z

    move-result v15

    if-eqz v15, :cond_0

    goto/16 :goto_8

    :cond_0
    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->getDate(J)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->getTodayTimeInMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v22

    mul-long v22, v22, v20

    invoke-static/range {v22 .. v23}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v16, v16, v17

    if-lez v16, :cond_1

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v15

    mul-long v15, v15, v20

    invoke-static/range {v15 .. v16}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToYear(J)Ljava/lang/String;

    move-result-object v15

    :cond_1
    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v16

    mul-long v16, v16, v20

    invoke-static/range {v16 .. v17}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToMonth(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v22

    mul-long v22, v22, v20

    invoke-static/range {v22 .. v23}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stampToDay(J)Ljava/lang/String;

    move-result-object v17

    :cond_2
    move/from16 v24, v7

    move-object/from16 v9, v16

    move-object/from16 v7, v17

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    move-object/from16 v26, v2

    move/from16 v25, v10

    move-object/from16 v10, v18

    goto :goto_1

    :cond_3
    invoke-static {v15, v9, v7}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->box(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v26, v2

    move/from16 v25, v10

    move-object/from16 v10, v16

    :goto_1
    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {v2, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v27, v6

    move-object/from16 v28, v7

    goto :goto_4

    :cond_5
    :goto_2
    new-instance v11, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-direct {v11}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;-><init>()V

    invoke-virtual {v11, v10}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDateDesc(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v11, v15}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setYear(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setMonth(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDay(Ljava/lang/String;)V

    move/from16 v27, v6

    move-object/from16 v28, v7

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v6

    invoke-static {v11, v6, v7, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->setDateFormat(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;JI)V

    goto :goto_3

    :cond_6
    move/from16 v27, v6

    move-object/from16 v28, v7

    :goto_3
    invoke-virtual {v11, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setLocationDes(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setAddress(Ljava/lang/String;)V

    const/16 v6, 0xa

    invoke-virtual {v11, v6}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setLayoutType(I)V

    add-int/2addr v13, v5

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    new-instance v6, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;

    invoke-direct {v6}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;-><init>()V

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setLayoutType(I)V

    invoke-virtual {v6, v10}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDateDesc(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6, v15}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setYear(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setMonth(Ljava/lang/String;)V

    move-object/from16 v7, v28

    invoke-virtual {v6, v7}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setDay(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDateModified()J

    move-result-wide v11

    invoke-static {v6, v11, v12, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->setDateFormat(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;JI)V

    :cond_7
    invoke-virtual {v6, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setLocationDes(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->setAddress(Ljava/lang/String;)V

    new-instance v7, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-direct {v7}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;-><init>()V

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->setImageUrl(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDuration()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->setDesc(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->setDateDesc(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->setExt(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getRotation()I

    move-result v9

    const/16 v11, 0x5a

    if-eq v9, v11, :cond_9

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getRotation()I

    move-result v9

    const/16 v11, 0x10e

    if-ne v9, v11, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v9

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v11

    goto :goto_6

    :cond_9
    :goto_5
    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v11

    invoke-virtual {v14}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v9

    :goto_6
    int-to-float v12, v11

    int-to-float v14, v9

    div-float/2addr v12, v14

    if-le v11, v9, :cond_a

    move/from16 v9, v24

    goto :goto_7

    :cond_a
    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v11, Lcom/miui/video/biz/videoplus/R$dimen;->size_620:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    :goto_7
    int-to-float v9, v9

    div-float/2addr v9, v12

    float-to-int v9, v9

    add-int v9, v9, v27

    add-int/2addr v13, v9

    invoke-virtual {v7, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->setExtList(Ljava/util/List;)V

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentRowEntity;->getList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-float v6, v13

    cmpl-float v6, v6, v4

    if-lez v6, :cond_b

    const/4 v6, 0x1

    move-object v12, v2

    move-object v11, v10

    const/4 v10, 0x1

    goto :goto_a

    :cond_b
    move-object v12, v2

    move-object v11, v10

    goto :goto_9

    :cond_c
    :goto_8
    move-object/from16 v26, v2

    move/from16 v27, v6

    move/from16 v24, v7

    move/from16 v25, v10

    :goto_9
    move/from16 v10, v25

    :goto_a
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v24

    move-object/from16 v2, v26

    move/from16 v6, v27

    goto/16 :goto_0

    :cond_d
    move/from16 v25, v10

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentEntity;->setList(Ljava/util/List;)V

    if-eqz v25, :cond_e

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v3, v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/DataTransfer;->addCountItem(Ljava/util/List;II)V

    :cond_e
    return-object v2
.end method
