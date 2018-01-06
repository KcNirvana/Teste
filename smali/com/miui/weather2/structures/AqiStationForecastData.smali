.class public Lcom/miui/weather2/structures/AqiStationForecastData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INVALIDATE_VALUE:I = -0x80000000

.field private static final NO_DATA:Ljava/lang/String; = "--"


# instance fields
.field private mAqis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalDate:Ljava/lang/String;

.field private mPubTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/structures/AqiStationForecastData;->mAqis:Ljava/util/ArrayList;

    return-void
.end method

.method private getLocalDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiStationForecastData;->mLocalDate:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addAqi(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiStationForecastData;->mAqis:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAqi(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiStationForecastData;->mAqis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiStationForecastData;->mAqis:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "--"

    goto :goto_0
.end method

.method public getAqiDesc(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Lcom/miui/weather2/tools/bi;->r(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/weather2/structures/AqiStationForecastData;->getAqiNum(I)I

    move-result v0

    invoke-static {v0, p2}, Lcom/miui/weather2/structures/AQIData;->getTitle(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/weather2/structures/AqiStationForecastData;->getAqiNum(I)I

    move-result v0

    invoke-static {v0, p2}, Lcom/miui/weather2/structures/AQIData;->getTitleWithPrefixAndAppend(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAqiNum(I)I
    .locals 2

    const/high16 v1, -0x80000000

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiStationForecastData;->mAqis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiStationForecastData;->mAqis:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getAqiSize()I
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AqiStationForecastData;->mAqis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDateDesc(ILandroid/content/Context;Z)Ljava/lang/String;
    .locals 10

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {p0}, Lcom/miui/weather2/structures/AqiStationForecastData;->getLocalDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/weather2/tools/bi;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    if-eqz p3, :cond_2

    const v1, 0x7f09002a

    :goto_0
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-ne v1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-int/lit8 v2, p1, -0x1

    int-to-long v6, v2

    const-wide/32 v8, 0x5265c00

    mul-long/2addr v6, v8

    add-long/2addr v0, v6

    invoke-virtual {v3, v0, v1}, Ljava/util/Date;->setTime(J)V

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    const v1, 0x7f090012

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0900fe

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const v0, 0x7f0900ff

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const v0, 0x7f090100

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setLocalDate(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/weather2/structures/AqiStationForecastData;->mLocalDate:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/miui/weather2/tools/bi;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AqiStationForecastData;->mPubTime:Ljava/lang/String;

    return-void
.end method
