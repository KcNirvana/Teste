.class public Lcom/android/calendarcommon2/RecurrenceProcessor;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;
    }
.end annotation


# static fields
.field private static final DAYS_IN_YEAR_PRECEDING_MONTH:[I

.field private static final DAYS_PER_MONTH:[I

.field private static final MAX_ALLOWED_ITERATIONS:I = 0x7d0

.field private static final SPEW:Z = false

.field private static final TAG:Ljava/lang/String; = "RecurrenceProcessor"

.field private static final USE_BYLIST:I = 0x1

.field private static final USE_ITERATOR:I


# instance fields
.field private mDays:Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;

.field private mGenerated:Landroid/text/format/Time;

.field private mIterator:Landroid/text/format/Time;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mUntil:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xc

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb4
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/format/Time;

    const-string/jumbo v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    new-instance v0, Landroid/text/format/Time;

    const-string/jumbo v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/text/format/Time;

    const-string/jumbo v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    new-instance v0, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mDays:Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;

    return-void
.end method

.method private static filter(Lcom/android/calendarcommon2/EventRecurrence;Landroid/text/format/Time;)I
    .locals 10

    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    const/4 v6, 0x6

    if-lt v6, v3, :cond_0

    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonth:[I

    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    iget v8, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([III)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x5

    if-lt v6, v3, :cond_1

    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->byweeknoCount:I

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->byweekno:[I

    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->byweeknoCount:I

    invoke-virtual {p1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v8

    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v6, 0x2

    goto :goto_0

    :cond_1
    const/4 v6, 0x4

    if-lt v6, v3, :cond_4

    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->byyeardayCount:I

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->byyearday:[I

    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->byyeardayCount:I

    iget v8, p1, Landroid/text/format/Time;->yearDay:I

    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v6, 0x3

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v6, 0x4

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-lez v6, :cond_4

    iget-object v1, p0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    iget v6, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v6}, Lcom/android/calendarcommon2/EventRecurrence;->timeDay2Day(I)I

    move-result v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_6

    aget v6, v1, v4

    if-ne v6, v5, :cond_5

    :cond_4
    const/4 v6, 0x3

    if-lt v6, v3, :cond_7

    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->byhour:[I

    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->byhourCount:I

    iget v8, p1, Landroid/text/format/Time;->hour:I

    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v6, 0x6

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x5

    goto :goto_0

    :cond_7
    const/4 v6, 0x2

    if-lt v6, v3, :cond_8

    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->byminute:[I

    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->byminuteCount:I

    iget v8, p1, Landroid/text/format/Time;->minute:I

    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v6, 0x7

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x1

    if-lt v6, v3, :cond_9

    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysecond:[I

    iget v7, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysecondCount:I

    iget v8, p1, Landroid/text/format/Time;->second:I

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon2/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v6, 0x8

    goto/16 :goto_0

    :cond_9
    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysetposCount:I

    if-lez v6, :cond_a

    const/4 v6, 0x6

    if-ne v3, v6, :cond_d

    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-lez v6, :cond_d

    iget v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    add-int/lit8 v4, v6, -0x1

    :goto_2
    if-ltz v4, :cond_c

    iget-object v6, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    aget v6, v6, v4

    if-eqz v6, :cond_b

    const-string/jumbo v6, "RecurrenceProcessor"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string/jumbo v6, "RecurrenceProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BYSETPOS not supported with these rules: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_c
    invoke-static {p0, p1}, Lcom/android/calendarcommon2/RecurrenceProcessor;->filterMonthlySetPos(Lcom/android/calendarcommon2/EventRecurrence;Landroid/text/format/Time;)Z

    move-result v6

    if-nez v6, :cond_a

    const/16 v6, 0x9

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v6, "RecurrenceProcessor"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string/jumbo v6, "RecurrenceProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BYSETPOS not supported with these rules: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static filterMonthlySetPos(Lcom/android/calendarcommon2/EventRecurrence;Landroid/text/format/Time;)Z
    .locals 13

    const/4 v10, 0x1

    iget v11, p1, Landroid/text/format/Time;->weekDay:I

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x24

    rem-int/lit8 v5, v11, 0x7

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    iget v11, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-ge v6, v11, :cond_0

    iget-object v11, p0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    aget v11, v11, v6

    or-int/2addr v0, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x4

    invoke-virtual {p1, v11}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v8

    new-array v2, v8, [I

    const/4 v3, 0x0

    const/4 v9, 0x1

    move v4, v3

    :goto_1
    if-gt v9, v8, :cond_2

    const/high16 v11, 0x10000

    shl-int v1, v11, v5

    and-int v11, v0, v1

    if-eqz v11, :cond_8

    add-int/lit8 v3, v4, 0x1

    aput v9, v2, v4

    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x7

    if-ne v5, v11, :cond_1

    const/4 v5, 0x0

    :cond_1
    add-int/lit8 v9, v9, 0x1

    move v4, v3

    goto :goto_1

    :cond_2
    iget v11, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysetposCount:I

    add-int/lit8 v6, v11, -0x1

    :goto_3
    if-ltz v6, :cond_7

    iget-object v11, p0, Lcom/android/calendarcommon2/EventRecurrence;->bysetpos:[I

    aget v7, v11, v6

    if-lez v7, :cond_5

    if-le v7, v4, :cond_4

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v7, -0x1

    aget v11, v2, v11

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    if-ne v11, v12, :cond_3

    :goto_4
    return v10

    :cond_5
    if-gez v7, :cond_6

    add-int v11, v4, v7

    if-ltz v11, :cond_3

    add-int v11, v4, v7

    aget v11, v2, v11

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    if-ne v11, v12, :cond_3

    goto :goto_4

    :cond_6
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "invalid bysetpos value"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    :cond_8
    move v3, v4

    goto :goto_2
.end method

.method static isLeapYear(I)Z
    .locals 1

    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static listContains([III)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget v1, p0, v0

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static listContains([IIII)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    aget v1, p0, v0

    if-lez v1, :cond_1

    if-ne v1, p2, :cond_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/2addr p3, v1

    if-eq p3, p2, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static monthLength(II)I
    .locals 3

    const/16 v1, 0x1c

    sget-object v2, Lcom/android/calendarcommon2/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    aget v0, v2, p1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/calendarcommon2/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x1d

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static final normDateTimeComparisonValue(Landroid/text/format/Time;)J
    .locals 4

    iget v0, p0, Landroid/text/format/Time;->year:I

    int-to-long v0, v0

    const/16 v2, 0x1a

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->month:I

    shl-int/lit8 v2, v2, 0x16

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    shl-int/lit8 v2, v2, 0x11

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->hour:I

    shl-int/lit8 v2, v2, 0xc

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->minute:I

    shl-int/lit8 v2, v2, 0x6

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->second:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static final setTimeFromLongValue(Landroid/text/format/Time;J)V
    .locals 3

    const/16 v0, 0x1a

    shr-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->year:I

    const/16 v0, 0x16

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/text/format/Time;->month:I

    const/16 v0, 0x11

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    const/16 v0, 0xc

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->hour:I

    const/4 v0, 0x6

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Landroid/text/format/Time;->minute:I

    const-wide/16 v0, 0x3f

    and-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->second:I

    return-void
.end method

.method static unsafeNormalize(Landroid/text/format/Time;)V
    .locals 15

    const/16 v14, 0xc

    iget v9, p0, Landroid/text/format/Time;->second:I

    iget v5, p0, Landroid/text/format/Time;->minute:I

    iget v4, p0, Landroid/text/format/Time;->hour:I

    iget v7, p0, Landroid/text/format/Time;->monthDay:I

    iget v6, p0, Landroid/text/format/Time;->month:I

    iget v10, p0, Landroid/text/format/Time;->year:I

    if-gez v9, :cond_0

    add-int/lit8 v13, v9, -0x3b

    :goto_0
    div-int/lit8 v2, v13, 0x3c

    mul-int/lit8 v13, v2, 0x3c

    sub-int/2addr v9, v13

    add-int/2addr v5, v2

    if-gez v5, :cond_1

    add-int/lit8 v13, v5, -0x3b

    :goto_1
    div-int/lit8 v1, v13, 0x3c

    mul-int/lit8 v13, v1, 0x3c

    sub-int/2addr v5, v13

    add-int/2addr v4, v1

    if-gez v4, :cond_2

    add-int/lit8 v13, v4, -0x17

    :goto_2
    div-int/lit8 v0, v13, 0x18

    mul-int/lit8 v13, v0, 0x18

    sub-int/2addr v4, v13

    add-int/2addr v7, v0

    :goto_3
    if-gtz v7, :cond_4

    const/4 v13, 0x1

    if-le v6, v13, :cond_3

    invoke-static {v10}, Lcom/android/calendarcommon2/RecurrenceProcessor;->yearLength(I)I

    move-result v3

    :goto_4
    add-int/2addr v7, v3

    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_0
    move v13, v9

    goto :goto_0

    :cond_1
    move v13, v5

    goto :goto_1

    :cond_2
    move v13, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v13, v10, -0x1

    invoke-static {v13}, Lcom/android/calendarcommon2/RecurrenceProcessor;->yearLength(I)I

    move-result v3

    goto :goto_4

    :cond_4
    if-gez v6, :cond_7

    add-int/lit8 v13, v6, 0x1

    div-int/lit8 v13, v13, 0xc

    add-int/lit8 v12, v13, -0x1

    add-int/2addr v10, v12

    mul-int/lit8 v13, v12, 0xc

    sub-int/2addr v6, v13

    :cond_5
    :goto_5
    if-nez v6, :cond_6

    invoke-static {v10}, Lcom/android/calendarcommon2/RecurrenceProcessor;->yearLength(I)I

    move-result v11

    if-le v7, v11, :cond_6

    add-int/lit8 v10, v10, 0x1

    sub-int/2addr v7, v11

    :cond_6
    invoke-static {v10, v6}, Lcom/android/calendarcommon2/RecurrenceProcessor;->monthLength(II)I

    move-result v8

    if-le v7, v8, :cond_8

    sub-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v14, :cond_5

    add-int/lit8 v6, v6, -0xc

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_7
    if-lt v6, v14, :cond_5

    div-int/lit8 v12, v6, 0xc

    add-int/2addr v10, v12

    mul-int/lit8 v13, v12, 0xc

    sub-int/2addr v6, v13

    goto :goto_5

    :cond_8
    iput v9, p0, Landroid/text/format/Time;->second:I

    iput v5, p0, Landroid/text/format/Time;->minute:I

    iput v4, p0, Landroid/text/format/Time;->hour:I

    iput v7, p0, Landroid/text/format/Time;->monthDay:I

    iput v6, p0, Landroid/text/format/Time;->month:I

    iput v10, p0, Landroid/text/format/Time;->year:I

    invoke-static {v10, v6, v7}, Lcom/android/calendarcommon2/RecurrenceProcessor;->weekDay(III)I

    move-result v13

    iput v13, p0, Landroid/text/format/Time;->weekDay:I

    invoke-static {v10, v6, v7}, Lcom/android/calendarcommon2/RecurrenceProcessor;->yearDay(III)I

    move-result v13

    iput v13, p0, Landroid/text/format/Time;->yearDay:I

    return-void
.end method

.method private static useBYX(III)Z
    .locals 1

    if-le p0, p1, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static weekDay(III)I
    .locals 2

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0xc

    add-int/lit8 p0, p0, -0x1

    :cond_0
    mul-int/lit8 v0, p1, 0xd

    add-int/lit8 v0, v0, -0xe

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p2

    add-int/2addr v0, p0

    div-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    div-int/lit8 v1, p0, 0x64

    sub-int/2addr v0, v1

    div-int/lit16 v1, p0, 0x190

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method static yearDay(III)I
    .locals 2

    sget-object v1, Lcom/android/calendarcommon2/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    add-int/lit8 v0, v1, -0x1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    invoke-static {p0}, Lcom/android/calendarcommon2/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method static yearLength(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/calendarcommon2/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method


# virtual methods
.method public expand(Landroid/text/format/Time;Lcom/android/calendarcommon2/EventRecurrence;JJZLjava/util/TreeSet;)V
    .locals 59
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/format/Time;",
            "Lcom/android/calendarcommon2/EventRecurrence;",
            "JJZ",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/DateException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/android/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    invoke-static/range {p1 .. p1}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v18

    const/4 v15, 0x0

    if-eqz p7, :cond_0

    cmp-long v56, v18, p3

    if-ltz v56, :cond_0

    cmp-long v56, v18, p5

    if-gez v56, :cond_0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    move-object/from16 v0, p8

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mDays:Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;

    move-object/from16 v17, v0

    :try_start_0
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->setRecurrence(Lcom/android/calendarcommon2/EventRecurrence;)V

    const-wide v56, 0x7fffffffffffffffL

    cmp-long v56, p5, v56

    if-nez v56, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v56, v0

    if-nez v56, :cond_1

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    move/from16 v56, v0

    if-nez v56, :cond_1

    new-instance v56, Lcom/android/calendarcommon2/DateException;

    const-string/jumbo v57, "No range end provided for a recurrence that has no UNTIL or COUNT."

    invoke-direct/range {v56 .. v57}, Lcom/android/calendarcommon2/DateException;-><init>(Ljava/lang/String;)V

    throw v56
    :try_end_0
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v20

    const-string/jumbo v56, "RecurrenceProcessor"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "DateException with r="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, " rangeStart="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, " rangeEnd="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v20

    :cond_1
    :try_start_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    move/from16 v26, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    new-instance v56, Lcom/android/calendarcommon2/DateException;

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "bad freq="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Lcom/android/calendarcommon2/DateException;-><init>(Ljava/lang/String;)V

    throw v56
    :try_end_1
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v44

    const-string/jumbo v56, "RecurrenceProcessor"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "RuntimeException with r="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, " rangeStart="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, " rangeEnd="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v44

    :pswitch_0
    const/16 v27, 0x1

    :cond_2
    :goto_0
    if-gtz v26, :cond_3

    const/16 v26, 0x1

    :cond_3
    :try_start_2
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    const/16 v56, 0x6

    move/from16 v0, v25

    move/from16 v1, v56

    invoke-static {v0, v1, v13}, Lcom/android/calendarcommon2/RecurrenceProcessor;->useBYX(III)Z

    move-result v52

    const/16 v56, 0x5

    move/from16 v0, v25

    move/from16 v1, v56

    if-lt v0, v1, :cond_8

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    move/from16 v56, v0

    if-gtz v56, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    move/from16 v56, v0

    if-lez v56, :cond_8

    :cond_4
    const/16 v49, 0x1

    :goto_1
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/calendarcommon2/EventRecurrence;->byhourCount:I

    const/16 v56, 0x3

    move/from16 v0, v25

    move/from16 v1, v56

    invoke-static {v0, v1, v11}, Lcom/android/calendarcommon2/RecurrenceProcessor;->useBYX(III)Z

    move-result v50

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/calendarcommon2/EventRecurrence;->byminuteCount:I

    const/16 v56, 0x2

    move/from16 v0, v25

    move/from16 v1, v56

    invoke-static {v0, v1, v12}, Lcom/android/calendarcommon2/RecurrenceProcessor;->useBYX(III)Z

    move-result v51

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/calendarcommon2/EventRecurrence;->bysecondCount:I

    const/16 v56, 0x1

    move/from16 v0, v25

    move/from16 v1, v56

    invoke-static {v0, v1, v14}, Lcom/android/calendarcommon2/RecurrenceProcessor;->useBYX(III)Z

    move-result v53

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    const/16 v56, 0x5

    move/from16 v0, v27

    move/from16 v1, v56

    if-ne v0, v1, :cond_5

    if-eqz v49, :cond_5

    const/16 v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v56, v0

    if-eqz v56, :cond_9

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v56

    const/16 v57, 0xf

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_6

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const/16 v57, 0x5a

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    :cond_6
    move-object/from16 v0, v45

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v56, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    invoke-static/range {v45 .. v45}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v46

    :goto_2
    const/16 v56, 0xf

    move-object/from16 v0, v42

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    const/16 v56, 0xf

    move-object/from16 v0, v42

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v23, v22

    :goto_3
    const/16 v39, 0x0

    add-int/lit8 v22, v23, 0x1

    const/16 v56, 0x7d0

    move/from16 v0, v23

    move/from16 v1, v56

    if-le v0, v1, :cond_a

    const-string/jumbo v56, "RecurrenceProcessor"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "Recurrence processing stuck with r="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, " rangeStart="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string/jumbo v58, " rangeEnd="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :pswitch_1
    const/16 v27, 0x2

    goto/16 :goto_0

    :pswitch_2
    const/16 v27, 0x3

    goto/16 :goto_0

    :pswitch_3
    const/16 v27, 0x4

    goto/16 :goto_0

    :pswitch_4
    const/16 v27, 0x4

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    move/from16 v56, v0

    mul-int/lit8 v26, v56, 0x7

    if-gtz v26, :cond_2

    const/16 v26, 0x7

    goto/16 :goto_0

    :pswitch_5
    const/16 v27, 0x5

    goto/16 :goto_0

    :pswitch_6
    const/16 v27, 0x6

    goto/16 :goto_0

    :cond_8
    const/16 v49, 0x0

    goto/16 :goto_1

    :cond_9
    const-wide v46, 0x7fffffffffffffffL

    goto/16 :goto_2

    :cond_a
    invoke-static/range {v31 .. v31}, Lcom/android/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    move-object/from16 v0, v31

    iget v10, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v56, v0

    add-int/lit8 v35, v56, 0x1

    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v33, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v34, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v36, v0

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    :cond_b
    if-eqz v52, :cond_f

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->bymonth:[I

    move-object/from16 v56, v0

    aget v9, v56, v39

    :goto_4
    add-int/lit8 v9, v9, -0x1

    const/16 v16, 0x1

    const/16 v37, 0x0

    if-eqz v49, :cond_c

    const/16 v56, 0x5

    move/from16 v0, v25

    move/from16 v1, v56

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v56, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->wkst:I

    move/from16 v57, v0

    invoke-static/range {v57 .. v57}, Lcom/android/calendarcommon2/EventRecurrence;->day2TimeDay(I)I

    move-result v57

    sub-int v56, v56, v57

    add-int/lit8 v56, v56, 0x7

    rem-int/lit8 v55, v56, 0x7

    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v56, v0

    sub-int v16, v56, v55

    add-int/lit8 v37, v16, 0x6

    :cond_c
    :goto_5
    if-eqz v49, :cond_1c

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/calendarcommon2/RecurrenceProcessor$DaySet;->get(Landroid/text/format/Time;I)Z

    move-result v56

    if-nez v56, :cond_11

    add-int/lit8 v16, v16, 0x1

    :goto_6
    if-eqz v49, :cond_d

    move/from16 v0, v16

    move/from16 v1, v37

    if-le v0, v1, :cond_c

    :cond_d
    add-int/lit8 v39, v39, 0x1

    if-eqz v52, :cond_e

    move/from16 v0, v39

    if-lt v0, v13, :cond_b

    :cond_e
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v41, v0

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    const/16 v40, 0x1

    :goto_7
    mul-int v54, v26, v40

    packed-switch v27, :pswitch_data_1

    new-instance v56, Ljava/lang/RuntimeException;

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "bad field="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v56

    :cond_f
    move/from16 v9, v35

    goto/16 :goto_4

    :cond_10
    const/16 v56, 0x4

    move/from16 v0, v56

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v37

    goto :goto_5

    :cond_11
    move/from16 v8, v16

    :goto_8
    const/16 v30, 0x0

    :cond_12
    if-eqz v50, :cond_1d

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->byhour:[I

    move-object/from16 v56, v0

    aget v7, v56, v30

    :goto_9
    const/16 v38, 0x0

    :cond_13
    if-eqz v51, :cond_1e

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->byminute:[I

    move-object/from16 v56, v0

    aget v6, v56, v38

    :goto_a
    const/16 v43, 0x0

    :cond_14
    if-eqz v53, :cond_1f

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->bysecond:[I

    move-object/from16 v56, v0

    aget v5, v56, v43

    :goto_b
    invoke-virtual/range {v4 .. v10}, Landroid/text/format/Time;->set(IIIIII)V

    invoke-static {v4}, Lcom/android/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    invoke-static {v4}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v28

    cmp-long v56, v28, v18

    if-ltz v56, :cond_18

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/android/calendarcommon2/RecurrenceProcessor;->filter(Lcom/android/calendarcommon2/EventRecurrence;Landroid/text/format/Time;)I

    move-result v24

    if-nez v24, :cond_18

    cmp-long v56, v18, v28

    if-nez v56, :cond_15

    if-eqz p7, :cond_15

    cmp-long v56, v18, p3

    if-ltz v56, :cond_15

    cmp-long v56, v18, p5

    if-ltz v56, :cond_16

    :cond_15
    add-int/lit8 v15, v15, 0x1

    :cond_16
    cmp-long v56, v28, v46

    if-gtz v56, :cond_7

    cmp-long v56, v28, p5

    if-gez v56, :cond_7

    cmp-long v56, v28, p3

    if-ltz v56, :cond_17

    if-eqz p7, :cond_20

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    move-object/from16 v0, p8

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_17
    :goto_c
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    move/from16 v56, v0

    if-lez v56, :cond_18

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    move/from16 v56, v0

    move/from16 v0, v56

    if-eq v0, v15, :cond_7

    :cond_18
    add-int/lit8 v43, v43, 0x1

    if-eqz v53, :cond_19

    move/from16 v0, v43

    if-lt v0, v14, :cond_14

    :cond_19
    add-int/lit8 v38, v38, 0x1

    if-eqz v51, :cond_1a

    move/from16 v0, v38

    if-lt v0, v12, :cond_13

    :cond_1a
    add-int/lit8 v30, v30, 0x1

    if-eqz v50, :cond_1b

    move/from16 v0, v30

    if-lt v0, v11, :cond_12

    :cond_1b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6

    :cond_1c
    move/from16 v8, v32

    goto/16 :goto_8

    :cond_1d
    move/from16 v7, v33

    goto/16 :goto_9

    :cond_1e
    move/from16 v6, v34

    goto/16 :goto_a

    :cond_1f
    move/from16 v5, v36

    goto :goto_b

    :cond_20
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    move-object/from16 v0, p8

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    :pswitch_7
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->second:I

    :goto_d
    invoke-static/range {v31 .. v31}, Lcom/android/calendarcommon2/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    const/16 v56, 0x6

    move/from16 v0, v27

    move/from16 v1, v56

    if-eq v0, v1, :cond_22

    const/16 v56, 0x5

    move/from16 v0, v27

    move/from16 v1, v56

    if-eq v0, v1, :cond_22

    :cond_21
    move/from16 v23, v22

    goto/16 :goto_3

    :pswitch_8
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->minute:I

    goto :goto_d

    :pswitch_9
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->hour:I

    goto :goto_d

    :pswitch_a
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_d

    :pswitch_b
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->month:I

    goto :goto_d

    :pswitch_c
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_d

    :pswitch_d
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_d

    :pswitch_e
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_d

    :cond_22
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v56, v0

    move/from16 v0, v56

    move/from16 v1, v41

    if-eq v0, v1, :cond_21

    add-int/lit8 v40, v40, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V
    :try_end_2
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public expand(Landroid/text/format/Time;Lcom/android/calendarcommon2/RecurrenceSet;JJ)[J
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/DateException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v3}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v6

    const-wide/16 v16, -0x1

    cmp-long v3, p5, v16

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v3}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v8

    :goto_0
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    if-eqz v3, :cond_1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    array-length v0, v2

    move/from16 v30, v0

    const/16 v28, 0x0

    :goto_1
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_1

    aget-object v5, v2, v28

    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/calendarcommon2/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon2/EventRecurrence;JJZLjava/util/TreeSet;)V

    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    :cond_0
    const-wide v8, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    if-eqz v3, :cond_2

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    array-length v0, v2

    move/from16 v30, v0

    const/16 v28, 0x0

    :goto_2
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    aget-wide v22, v2, v28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v3}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    if-eqz v3, :cond_3

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    array-length v0, v2

    move/from16 v30, v0

    const/16 v28, 0x0

    :goto_3
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    aget-object v15, v2, v28

    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-object/from16 v21, v11

    invoke-virtual/range {v13 .. v21}, Lcom/android/calendarcommon2/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon2/EventRecurrence;JJZLjava/util/TreeSet;)V

    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    if-eqz v3, :cond_4

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    array-length v0, v2

    move/from16 v30, v0

    const/16 v28, 0x0

    :goto_4
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    aget-wide v22, v2, v28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v3}, Lcom/android/calendarcommon2/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v11}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    new-array v12, v3, [J

    :cond_5
    return-object v12

    :cond_6
    invoke-virtual {v11}, Ljava/util/TreeSet;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v12, v0, [J

    const/16 v26, 0x0

    invoke-virtual {v11}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v3, v0, v1}, Lcom/android/calendarcommon2/RecurrenceProcessor;->setTimeFromLongValue(Landroid/text/format/Time;J)V

    add-int/lit8 v27, v26, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v16

    aput-wide v16, v12, v26

    move/from16 v26, v27

    goto :goto_5
.end method

.method generateByList(III)I
    .locals 1

    const/4 v0, 0x0

    if-lt p3, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLastOccurence(Landroid/text/format/Time;Landroid/text/format/Time;Lcom/android/calendarcommon2/RecurrenceSet;)J
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/DateException;
        }
    .end annotation

    const-wide/16 v16, -0x1

    const/4 v11, 0x0

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    if-eqz v3, :cond_5

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    array-length v15, v2

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v15, :cond_2

    aget-object v18, v2, v14

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    if-eqz v3, :cond_1

    const/4 v11, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    cmp-long v3, v20, v16

    if-lez v3, :cond_0

    move-wide/from16 v16, v20

    goto :goto_1

    :cond_2
    const-wide/16 v4, -0x1

    cmp-long v3, v16, v4

    if-eqz v3, :cond_4

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    if-eqz v3, :cond_4

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    array-length v15, v2

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v15, :cond_4

    aget-wide v12, v2, v14

    cmp-long v3, v12, v16

    if-lez v3, :cond_3

    move-wide/from16 v16, v12

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    const-wide/16 v4, -0x1

    cmp-long v3, v16, v4

    if-eqz v3, :cond_8

    if-nez v11, :cond_8

    move-wide/from16 v4, v16

    :goto_3
    return-wide v4

    :cond_5
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    if-eqz v3, :cond_8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    if-nez v3, :cond_8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    if-nez v3, :cond_8

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    array-length v15, v2

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v15, :cond_7

    aget-wide v12, v2, v14

    cmp-long v3, v12, v16

    if-lez v3, :cond_6

    move-wide/from16 v16, v12

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_7
    move-wide/from16 v4, v16

    goto :goto_3

    :cond_8
    if-nez v11, :cond_9

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    if-nez v3, :cond_9

    if-eqz p2, :cond_c

    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    if-eqz p2, :cond_a

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    :goto_5
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/calendarcommon2/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon2/RecurrenceSet;JJ)[J

    move-result-object v10

    array-length v3, v10

    if-nez v3, :cond_b

    const-wide/16 v4, 0x0

    goto :goto_3

    :cond_a
    const-wide/16 v8, -0x1

    goto :goto_5

    :cond_b
    array-length v3, v10

    add-int/lit8 v3, v3, -0x1

    aget-wide v4, v10, v3

    goto :goto_3

    :cond_c
    const-wide/16 v4, -0x1

    goto :goto_3
.end method

.method public getLastOccurence(Landroid/text/format/Time;Lcom/android/calendarcommon2/RecurrenceSet;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/DateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/calendarcommon2/RecurrenceProcessor;->getLastOccurence(Landroid/text/format/Time;Landroid/text/format/Time;Lcom/android/calendarcommon2/RecurrenceSet;)J

    move-result-wide v0

    return-wide v0
.end method
