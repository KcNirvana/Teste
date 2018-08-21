.class public Lcom/miui/payment/captor/parser/DateParserImpl;
.super Ljava/lang/Object;
.source "DateParserImpl.java"

# interfaces
.implements Lcom/miui/payment/captor/parser/DateParser;


# static fields
.field private static final sAMData:[Ljava/lang/String;

.field private static final sChineseDateDayGroups:[I

.field private static final sChineseDateMonthGroups:[I

.field private static final sChineseDateRegex:Ljava/lang/String; = "(?:(?:(\\d{4})[/\\.\\-])?(1[0-2]|0?[1-9])[/\\.\\-](1[0-9]|2[0-8]|3[01]|0?[1-9])(?:[/\\.\\-](\\d{4}))?)|(?:(?:(\\d{4})\u5e74)?(?:(1[0-2]|0?[1-9])\u6708)?(1[0-9]|2[0-8]|3[01]|0?[1-9])\u65e5)"

.field private static final sChineseDateYearGroups:[I

.field private static final sChineseTimeHourGroups:[I

.field private static final sChineseTimeMinuteGroups:[I

.field private static final sChineseTimeRegex:Ljava/lang/String; = "(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?\\s*(2[0-3]|[01]?[0-9])[:\u65f6\u6642]([0-5]?[0-9])(?:[:\u5206]([0-5]?[0-9]))?\\s*(AM|am|PM|pm)?"

.field private static final sChineseTimeRelativeGroup:[I

.field private static final sChineseTimeSecondGroups:[I

.field private static sFullDateTimeFormatLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPMData:[Ljava/lang/String;


# instance fields
.field private mDay:I

.field private mHour:I

.field private mMinute:I

.field private mMonth:I

.field private mRelativeTime:Ljava/lang/String;

.field private mSecond:I

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    new-instance v0, Lcom/miui/payment/captor/parser/DateParserImpl$1;

    invoke-direct {v0}, Lcom/miui/payment/captor/parser/DateParserImpl$1;-><init>()V

    sput-object v0, Lcom/miui/payment/captor/parser/DateParserImpl;->sFullDateTimeFormatLocal:Ljava/lang/ThreadLocal;

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/payment/captor/parser/DateParserImpl;->sChineseDateYearGroups:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/payment/captor/parser/DateParserImpl;->sChineseDateMonthGroups:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/payment/captor/parser/DateParserImpl;->sChineseDateDayGroups:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/miui/payment/captor/parser/DateParserImpl;->sChineseTimeRelativeGroup:[I

    new-array v0, v5, [I

    aput v3, v0, v4

    sput-object v0, Lcom/miui/payment/captor/parser/DateParserImpl;->sChineseTimeHourGroups:[I

    new-array v0, v5, [I

    aput v6, v0, v4

    sput-object v0, Lcom/miui/payment/captor/parser/DateParserImpl;->sChineseTimeMinuteGroups:[I

    new-array v0, v5, [I

    aput v7, v0, v4

    sput-object v0, Lcom/miui/payment/captor/parser/DateParserImpl;->sChineseTimeSecondGroups:[I

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u51cc\u6668"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u4e0a\u5348"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u65e9\u4e0a"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u4e2d\u5348"

    aput-object v1, v0, v6

    const-string/jumbo v1, "AM"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "am"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/payment/captor/parser/DateParserImpl;->sAMData:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u4e0b\u5348"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u508d\u665a"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u665a\u4e0a"

    aput-object v1, v0, v3

    const-string/jumbo v1, "PM"

    aput-object v1, v0, v6

    const-string/jumbo v1, "pm"

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/payment/captor/parser/DateParserImpl;->sPMData:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x6
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x7
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mYear:I

    iput v0, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mMonth:I

    iput v0, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mDay:I

    iput v1, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mHour:I

    iput v1, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mMinute:I

    iput v1, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mSecond:I

    return-void
.end method

.method private findFiledIntValue(Ljava/util/regex/Matcher;[I)I
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/miui/payment/captor/parser/DateParserImpl;->findGroupValue(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private findGroupValue(Ljava/util/regex/Matcher;[I)Ljava/lang/String;
    .locals 5

    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p2, v2

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private findMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDateTime(IIIIIILjava/lang/String;)J
    .locals 8

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-lez p1, :cond_0

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    :cond_0
    if-lez p2, :cond_1

    const/4 v1, 0x2

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    :cond_1
    if-lez p3, :cond_2

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    :cond_2
    if-ltz p4, :cond_3

    sget-object v1, Lcom/miui/payment/captor/parser/DateParserImpl;->sAMData:[Ljava/lang/String;

    invoke-direct {p0, p7, v1}, Lcom/miui/payment/captor/parser/DateParserImpl;->inStringArrays(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v6, p4}, Ljava/util/Calendar;->set(II)V

    :cond_3
    :goto_0
    if-ltz p5, :cond_4

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p5}, Ljava/util/Calendar;->set(II)V

    :cond_4
    if-ltz p6, :cond_7

    invoke-virtual {v0, v7, p6}, Ljava/util/Calendar;->set(II)V

    :goto_1
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2

    :cond_5
    sget-object v1, Lcom/miui/payment/captor/parser/DateParserImpl;->sPMData:[Ljava/lang/String;

    invoke-direct {p0, p7, v1}, Lcom/miui/payment/captor/parser/DateParserImpl;->inStringArrays(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v6, p4}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_6
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_1
.end method

.method private inStringArrays(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    array-length v3, p2

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p2, v2

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private parseDateTimeWithDateFormat(Ljava/lang/String;[Ljava/text/SimpleDateFormat;)Ljava/util/Date;
    .locals 5

    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p2, v2

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private tryChineseDate(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v1, "(?:(?:(\\d{4})[/\\.\\-])?(1[0-2]|0?[1-9])[/\\.\\-](1[0-9]|2[0-8]|3[01]|0?[1-9])(?:[/\\.\\-](\\d{4}))?)|(?:(?:(\\d{4})\u5e74)?(?:(1[0-2]|0?[1-9])\u6708)?(1[0-9]|2[0-8]|3[01]|0?[1-9])\u65e5)"

    invoke-direct {p0, p1, v1}, Lcom/miui/payment/captor/parser/DateParserImpl;->findMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/miui/payment/captor/parser/DateParserImpl;->sChineseDateYearGroups:[I

    invoke-direct {p0, v0, v1}, Lcom/miui/payment/captor/parser/DateParserImpl;->findFiledIntValue(Ljava/util/regex/Matcher;[I)I

    move-result v1

    iput v1, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mYear:I

    sget-object v1, Lcom/miui/payment/captor/parser/DateParserImpl;->sChineseDateMonthGroups:[I

    invoke-direct {p0, v0, v1}, Lcom/miui/payment/captor/parser/DateParserImpl;->findFiledIntValue(Ljava/util/regex/Matcher;[I)I

    move-result v1

    iput v1, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mMonth:I

    sget-object v1, Lcom/miui/payment/captor/parser/DateParserImpl;->sChineseDateDayGroups:[I

    invoke-direct {p0, v0, v1}, Lcom/miui/payment/captor/parser/DateParserImpl;->findFiledIntValue(Ljava/util/regex/Matcher;[I)I

    move-result v1

    iput v1, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mDay:I

    :cond_0
    return-void
.end method

.method private tryParseDateTimeWithDateFormat(Ljava/lang/String;)J
    .locals 4

    sget-object v1, Lcom/miui/payment/captor/parser/DateParserImpl;->sFullDateTimeFormatLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/text/SimpleDateFormat;

    invoke-direct {p0, p1, v1}, Lcom/miui/payment/captor/parser/DateParserImpl;->parseDateTimeWithDateFormat(Ljava/lang/String;[Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private tryParseDateTimeWithPattern(Ljava/lang/String;)J
    .locals 8

    invoke-direct {p0, p1}, Lcom/miui/payment/captor/parser/DateParserImpl;->tryChineseDate(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/payment/captor/parser/DateParserImpl;->tryTime(Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mYear:I

    iget v2, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mMonth:I

    iget v3, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mDay:I

    iget v4, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mHour:I

    iget v5, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mMinute:I

    iget v6, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mSecond:I

    iget-object v7, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mRelativeTime:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/payment/captor/parser/DateParserImpl;->getDateTime(IIIIIILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private tryTime(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v1, "(\u51cc\u6668|\u4e0a\u5348|\u4e0b\u5348|\u65e9\u4e0a|\u665a\u4e0a|\u508d\u665a|\u4e2d\u5348)?\\s*(2[0-3]|[01]?[0-9])[:\u65f6\u6642]([0-5]?[0-9])(?:[:\u5206]([0-5]?[0-9]))?\\s*(AM|am|PM|pm)?"

    invoke-direct {p0, p1, v1}, Lcom/miui/payment/captor/parser/DateParserImpl;->findMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/miui/payment/captor/parser/DateParserImpl;->sChineseTimeRelativeGroup:[I

    invoke-direct {p0, v0, v1}, Lcom/miui/payment/captor/parser/DateParserImpl;->findGroupValue(Ljava/util/regex/Matcher;[I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mRelativeTime:Ljava/lang/String;

    sget-object v1, Lcom/miui/payment/captor/parser/DateParserImpl;->sChineseTimeHourGroups:[I

    invoke-direct {p0, v0, v1}, Lcom/miui/payment/captor/parser/DateParserImpl;->findFiledIntValue(Ljava/util/regex/Matcher;[I)I

    move-result v1

    iput v1, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mHour:I

    sget-object v1, Lcom/miui/payment/captor/parser/DateParserImpl;->sChineseTimeMinuteGroups:[I

    invoke-direct {p0, v0, v1}, Lcom/miui/payment/captor/parser/DateParserImpl;->findFiledIntValue(Ljava/util/regex/Matcher;[I)I

    move-result v1

    iput v1, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mMinute:I

    sget-object v1, Lcom/miui/payment/captor/parser/DateParserImpl;->sChineseTimeSecondGroups:[I

    invoke-direct {p0, v0, v1}, Lcom/miui/payment/captor/parser/DateParserImpl;->findFiledIntValue(Ljava/util/regex/Matcher;[I)I

    move-result v1

    iput v1, p0, Lcom/miui/payment/captor/parser/DateParserImpl;->mSecond:I

    :cond_0
    return-void
.end method


# virtual methods
.method public parseDateTime(Ljava/lang/String;)J
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v0, -0x1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/payment/captor/parser/DateParserImpl;->tryParseDateTimeWithDateFormat(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/payment/captor/parser/DateParserImpl;->tryParseDateTimeWithPattern(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method
