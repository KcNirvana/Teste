.class public Lcom/miui/weather2/structures/WeatherData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final COLORFUL_WEATHER_ICON:[I

.field private static final COLORFUL_WEATHER_ICON_NIGHT:[I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/weather2/structures/WeatherData;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOGO_TYPE_ACCU:I = 0x0

.field public static final MAX_AQI_DELTA:I = 0xfa

.field public static final MAX_TEMPERTATURE_DELTA:I = 0xa

.field private static final NO_DATA:Ljava/lang/String; = "--"

.field private static final TAG:Ljava/lang/String; = "Wth2:WeatherData"

.field private static final WEATHER_ICON:[I

.field private static final WEATHER_ICON_NIGHT:[I

.field private static final WIND_DIRECTION_ICON:[I


# instance fields
.field private mAQIData:Lcom/miui/weather2/structures/AQIData;

.field private mAlertArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/Alert;",
            ">;"
        }
    .end annotation
.end field

.field private mBrandInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/BrandInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCityId:Ljava/lang/String;

.field private mCityName:Ljava/lang/String;

.field private mFgUpdateTime:J

.field private mForecastData:Lcom/miui/weather2/structures/ForecastData;

.field private mHourlyData:Lcom/miui/weather2/structures/HourlyData;

.field private mIndicesData:Lcom/miui/weather2/structures/IndicesData;

.field private mLocale:Ljava/lang/String;

.field private mLogoLink:Ljava/lang/String;

.field private mLogoType:I

.field private mMinuteRainData:Lcom/miui/weather2/structures/MinuteRainData;

.field private mMinuteRainJson:Ljava/lang/String;

.field private mPreHourDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/PreHourData;",
            ">;"
        }
    .end annotation
.end field

.field private mRawData:Ljava/lang/String;

.field private mRealtimeData:Lcom/miui/weather2/structures/RealTimeData;

.field private mTodayData:Lcom/miui/weather2/structures/TodayData;

.field private mUpdateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x1b

    new-instance v0, Lcom/miui/weather2/structures/WeatherData$1;

    invoke-direct {v0}, Lcom/miui/weather2/structures/WeatherData$1;-><init>()V

    sput-object v0, Lcom/miui/weather2/structures/WeatherData;->CREATOR:Landroid/os/Parcelable$Creator;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/weather2/structures/WeatherData;->WEATHER_ICON:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/weather2/structures/WeatherData;->WEATHER_ICON_NIGHT:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/weather2/structures/WeatherData;->COLORFUL_WEATHER_ICON:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/miui/weather2/structures/WeatherData;->COLORFUL_WEATHER_ICON_NIGHT:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/miui/weather2/structures/WeatherData;->WIND_DIRECTION_ICON:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0200d3
        0x7f0200c3
        0x7f0200cf
        0x7f0200c6
        0x7f0200c7
        0x7f0200c7
        0x7f0200c7
        0x7f0200d5
        0x7f0200ca
        0x7f0200c7
        0x7f0200cc
        0x7f0200ca
        0x7f0200d1
        0x7f0200c8
        0x7f0200cb
        0x7f0200c8
        0x7f0200cd
        0x7f0200cb
        0x7f0200d2
        0x7f0200d2
        0x7f0200d2
        0x7f0200d2
        0x7f0200c9
        0x7f0200d2
        0x7f0200d0
        0x7f0200d1
        0x7f0200d3
    .end array-data

    :array_1
    .array-data 4
        0x7f0200d4
        0x7f0200c4
        0x7f0200cf
        0x7f0200c6
        0x7f0200c7
        0x7f0200c7
        0x7f0200c7
        0x7f0200d5
        0x7f0200ca
        0x7f0200c7
        0x7f0200cc
        0x7f0200ca
        0x7f0200d1
        0x7f0200c8
        0x7f0200cb
        0x7f0200c8
        0x7f0200cd
        0x7f0200cb
        0x7f0200d2
        0x7f0200d2
        0x7f0200d2
        0x7f0200d2
        0x7f0200c9
        0x7f0200d2
        0x7f0200d0
        0x7f0200d1
        0x7f0200d4
    .end array-data

    :array_2
    .array-data 4
        0x7f02011e
        0x7f020103
        0x7f020114
        0x7f020105
        0x7f020106
        0x7f020106
        0x7f020106
        0x7f020122
        0x7f02010d
        0x7f020106
        0x7f020112
        0x7f02010d
        0x7f020119
        0x7f020109
        0x7f020110
        0x7f020109
        0x7f020113
        0x7f020110
        0x7f02011b
        0x7f02011b
        0x7f02011b
        0x7f02011b
        0x7f02010c
        0x7f02011b
        0x7f020117
        0x7f020119
        0x7f02011e
    .end array-data

    :array_3
    .array-data 4
        0x7f02011f
        0x7f020104
        0x7f020114
        0x7f020105
        0x7f020106
        0x7f020106
        0x7f020106
        0x7f020122
        0x7f02010d
        0x7f020106
        0x7f020112
        0x7f02010d
        0x7f020119
        0x7f020109
        0x7f020110
        0x7f020109
        0x7f020113
        0x7f020110
        0x7f02011b
        0x7f02011b
        0x7f02011b
        0x7f02011b
        0x7f02010c
        0x7f02011b
        0x7f020117
        0x7f020119
        0x7f02011f
    .end array-data

    :array_4
    .array-data 4
        0x7f0201a8
        0x7f0201aa
        0x7f0201ab
        0x7f0201a7
        0x7f0201a5
        0x7f0201a6
        0x7f0201a4
        0x7f0201a9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mCityId:Ljava/lang/String;

    const-class v0, Lcom/miui/weather2/structures/Alert;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mAlertArray:Ljava/util/ArrayList;

    const-class v0, Lcom/miui/weather2/structures/BrandInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mBrandInfo:Ljava/util/ArrayList;

    const-class v0, Lcom/miui/weather2/structures/PreHourData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mPreHourDataList:Ljava/util/ArrayList;

    const-class v0, Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/AQIData;

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mAQIData:Lcom/miui/weather2/structures/AQIData;

    const-class v0, Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/ForecastData;

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mForecastData:Lcom/miui/weather2/structures/ForecastData;

    const-class v0, Lcom/miui/weather2/structures/RealTimeData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/RealTimeData;

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mRealtimeData:Lcom/miui/weather2/structures/RealTimeData;

    const-class v0, Lcom/miui/weather2/structures/TodayData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/TodayData;

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mTodayData:Lcom/miui/weather2/structures/TodayData;

    const-class v0, Lcom/miui/weather2/structures/HourlyData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/HourlyData;

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mHourlyData:Lcom/miui/weather2/structures/HourlyData;

    const-class v0, Lcom/miui/weather2/structures/IndicesData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/IndicesData;

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mIndicesData:Lcom/miui/weather2/structures/IndicesData;

    const-class v0, Lcom/miui/weather2/structures/MinuteRainData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/MinuteRainData;

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mMinuteRainData:Lcom/miui/weather2/structures/MinuteRainData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mLogoLink:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/structures/WeatherData;->mLogoType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mLocale:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/weather2/structures/WeatherData;->mUpdateTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/weather2/structures/WeatherData;->mFgUpdateTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mCityName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mRawData:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/weather2/structures/WeatherData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/structures/WeatherData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/weather2/structures/WeatherData;->mCityId:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/weather2/structures/WeatherData;->mLocale:Ljava/lang/String;

    iput-wide p5, p0, Lcom/miui/weather2/structures/WeatherData;->mUpdateTime:J

    iput-wide p5, p0, Lcom/miui/weather2/structures/WeatherData;->mFgUpdateTime:J

    iput-object p7, p0, Lcom/miui/weather2/structures/WeatherData;->mCityName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/weather2/structures/WeatherData;->mRawData:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/weather2/structures/WeatherData;->mMinuteRainJson:Ljava/lang/String;

    invoke-static {p3, p8}, Lcom/miui/weather2/e/c;->c(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/weather2/structures/RealTimeData;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mRealtimeData:Lcom/miui/weather2/structures/RealTimeData;

    invoke-static {p3, p8}, Lcom/miui/weather2/e/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/weather2/structures/ForecastData;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mForecastData:Lcom/miui/weather2/structures/ForecastData;

    invoke-static {p3, p8}, Lcom/miui/weather2/e/c;->d(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/weather2/structures/AQIData;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mAQIData:Lcom/miui/weather2/structures/AQIData;

    invoke-static {p3, p0}, Lcom/miui/weather2/e/c;->a(Ljava/lang/String;Lcom/miui/weather2/structures/WeatherData;)V

    invoke-static {p3, p8}, Lcom/miui/weather2/e/c;->f(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/weather2/structures/TodayData;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mTodayData:Lcom/miui/weather2/structures/TodayData;

    invoke-static {p3, p8}, Lcom/miui/weather2/e/c;->e(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mAlertArray:Ljava/util/ArrayList;

    invoke-static {p3, p8}, Lcom/miui/weather2/e/c;->b(Ljava/lang/String;Landroid/content/Context;)Lcom/miui/weather2/structures/HourlyData;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mHourlyData:Lcom/miui/weather2/structures/HourlyData;

    invoke-static {p3}, Lcom/miui/weather2/e/c;->a(Ljava/lang/String;)Lcom/miui/weather2/structures/IndicesData;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mIndicesData:Lcom/miui/weather2/structures/IndicesData;

    invoke-static {p3}, Lcom/miui/weather2/e/c;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mBrandInfo:Ljava/util/ArrayList;

    invoke-static {p3, p8}, Lcom/miui/weather2/e/c;->g(Ljava/lang/String;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mPreHourDataList:Ljava/util/ArrayList;

    invoke-static {p4, p5, p6, p8}, Lcom/miui/weather2/e/c;->a(Ljava/lang/String;JLandroid/content/Context;)Lcom/miui/weather2/structures/MinuteRainData;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mMinuteRainData:Lcom/miui/weather2/structures/MinuteRainData;

    return-void
.end method

.method private static convertSpeedToKilometresPerHour(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertSpeedToKnot(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v0

    const-wide v2, 0x3fe147ae147ae148L    # 0.54

    mul-double/2addr v0, v2

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertSpeedToLevelDesc(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {p0, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_2

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_3

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_3

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    :cond_3
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_4

    const-wide/high16 v4, 0x403d000000000000L    # 29.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_4

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_0

    :cond_4
    const-wide/high16 v4, 0x403d000000000000L    # 29.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_5

    const-wide v4, 0x4043800000000000L    # 39.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_5

    const/4 v1, 0x5

    aget-object v0, v0, v1

    goto :goto_0

    :cond_5
    const-wide v4, 0x4043800000000000L    # 39.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_6

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_6

    const/4 v1, 0x6

    aget-object v0, v0, v1

    goto :goto_0

    :cond_6
    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_7

    const-wide/high16 v4, 0x404f000000000000L    # 62.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_7

    const/4 v1, 0x7

    aget-object v0, v0, v1

    goto :goto_0

    :cond_7
    const-wide/high16 v4, 0x404f000000000000L    # 62.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_8

    const-wide v4, 0x4052c00000000000L    # 75.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_8

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto/16 :goto_0

    :cond_8
    const-wide v4, 0x4052c00000000000L    # 75.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_9

    const-wide v4, 0x4056400000000000L    # 89.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_9

    const/16 v1, 0x9

    aget-object v0, v0, v1

    goto/16 :goto_0

    :cond_9
    const-wide v4, 0x4056400000000000L    # 89.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_a

    const-wide v4, 0x4059c00000000000L    # 103.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_a

    const/16 v1, 0xa

    aget-object v0, v0, v1

    goto/16 :goto_0

    :cond_a
    const-wide v4, 0x4059c00000000000L    # 103.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_b

    const-wide v4, 0x405d400000000000L    # 117.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_b

    const/16 v1, 0xb

    aget-object v0, v0, v1

    goto/16 :goto_0

    :cond_b
    const-wide v4, 0x405d400000000000L    # 117.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_c

    const/16 v1, 0xc

    aget-object v0, v0, v1

    goto/16 :goto_0

    :cond_c
    const-string v0, ""

    goto/16 :goto_0
.end method

.method private static convertSpeedToMetrePerSecond(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v0

    const-wide v2, 0x3fd1eb851eb851ecL    # 0.28

    mul-double/2addr v0, v2

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertSpeedToMilesPerHour(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v0

    const-wide v2, 0x3fe3d70a3d70a3d7L    # 0.62

    mul-double/2addr v0, v2

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    double-to-int v0, v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertWeatherTypeToIconIndex(I)I
    .locals 1

    if-ltz p0, :cond_0

    sget-object v0, Lcom/miui/weather2/structures/WeatherData;->COLORFUL_WEATHER_ICON:[I

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/miui/weather2/structures/WeatherData;->COLORFUL_WEATHER_ICON:[I

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    :cond_1
    return p0
.end method

.method public static convertWindAngleToWindDirectionDesc(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {p0, v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_2

    const v0, 0x7f07000e

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-wide v4, 0x4075180000000000L    # 337.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const-wide v4, 0x4076800000000000L    # 360.0

    cmpg-double v1, v2, v4

    if-lez v1, :cond_1

    :cond_0
    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_3

    const-wide v4, 0x4036800000000000L    # 22.5

    cmpg-double v1, v2, v4

    if-gez v1, :cond_3

    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_1
    return-object v0

    :cond_2
    const v0, 0x7f07000d

    goto :goto_0

    :cond_3
    const-wide v4, 0x4036800000000000L    # 22.5

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_4

    const-wide v4, 0x4050e00000000000L    # 67.5

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_4

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_1

    :cond_4
    const-wide v4, 0x4050e00000000000L    # 67.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_5

    const-wide v4, 0x405c200000000000L    # 112.5

    cmpg-double v1, v2, v4

    if-gez v1, :cond_5

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_1

    :cond_5
    const-wide v4, 0x405c200000000000L    # 112.5

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_6

    const-wide v4, 0x4063b00000000000L    # 157.5

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_6

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_1

    :cond_6
    const-wide v4, 0x4063b00000000000L    # 157.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_7

    const-wide v4, 0x4069500000000000L    # 202.5

    cmpg-double v1, v2, v4

    if-gez v1, :cond_7

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_1

    :cond_7
    const-wide v4, 0x4069500000000000L    # 202.5

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_8

    const-wide v4, 0x406ef00000000000L    # 247.5

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_8

    const/4 v1, 0x5

    aget-object v0, v0, v1

    goto :goto_1

    :cond_8
    const-wide v4, 0x406ef00000000000L    # 247.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_9

    const-wide v4, 0x4072480000000000L    # 292.5

    cmpg-double v1, v2, v4

    if-gez v1, :cond_9

    const/4 v1, 0x6

    aget-object v0, v0, v1

    goto/16 :goto_1

    :cond_9
    const-wide v4, 0x4072480000000000L    # 292.5

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_a

    const-wide v4, 0x4075180000000000L    # 337.5

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_a

    const/4 v1, 0x7

    aget-object v0, v0, v1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static getColorfulIconByWeatherType(I)I
    .locals 2

    sget-object v0, Lcom/miui/weather2/structures/WeatherData;->COLORFUL_WEATHER_ICON:[I

    invoke-static {p0}, Lcom/miui/weather2/structures/WeatherData;->convertWeatherTypeToIconIndex(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static getColorfulIconNightByWeatherType(I)I
    .locals 2

    sget-object v0, Lcom/miui/weather2/structures/WeatherData;->COLORFUL_WEATHER_ICON_NIGHT:[I

    invoke-static {p0}, Lcom/miui/weather2/structures/WeatherData;->convertWeatherTypeToIconIndex(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static getTransparentIconByWeatherType(I)I
    .locals 2

    sget-object v0, Lcom/miui/weather2/structures/WeatherData;->WEATHER_ICON:[I

    invoke-static {p0}, Lcom/miui/weather2/structures/WeatherData;->convertWeatherTypeToIconIndex(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static getTransparentIconNightByWeatherType(I)I
    .locals 2

    sget-object v0, Lcom/miui/weather2/structures/WeatherData;->WEATHER_ICON_NIGHT:[I

    invoke-static {p0}, Lcom/miui/weather2/structures/WeatherData;->convertWeatherTypeToIconIndex(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public static getWeatherName(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/weather2/structures/WeatherData;->getWeatherName(ILandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWeatherName(ILandroid/content/Context;Z)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080007

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    if-ltz p0, :cond_0

    array-length v2, v1

    if-ge p0, v2, :cond_0

    aget-object v0, v1, p0

    goto :goto_1
.end method

.method public static getWindDesc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const v5, 0x7f090054

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {p1, v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-int v0, v0

    if-eqz v0, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/miui/weather2/structures/WeatherData;->getWindPowerDesc(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p2, v2, p0}, Lcom/miui/weather2/structures/WeatherData;->getWindDirectionDesc(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    const v1, 0x7f09004f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p2, v2, p0}, Lcom/miui/weather2/structures/WeatherData;->getWindDirectionDesc(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getWindDirectionDesc(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {p0, v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-int v2, v0

    const/16 v3, 0x168

    if-ne v2, v3, :cond_0

    const v0, 0x7f09004e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    double-to-int v0, v0

    const/16 v1, 0x169

    if-ne v0, v1, :cond_1

    const v0, 0x7f090053

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/miui/weather2/structures/WeatherData;->convertWindAngleToWindDirectionDesc(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getWindDirectionIcon(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/miui/weather2/structures/WeatherData;->WIND_DIRECTION_ICON:[I

    aget v1, v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getWindDirectionLevel(Ljava/lang/String;)I
    .locals 14

    const-wide v12, 0x4069500000000000L    # 202.5

    const-wide v10, 0x4063b00000000000L    # 157.5

    const-wide v8, 0x405c200000000000L    # 112.5

    const-wide v6, 0x4050e00000000000L    # 67.5

    const-wide v4, 0x4036800000000000L    # 22.5

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {p0, v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v0

    const-wide v2, 0x4075180000000000L    # 337.5

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    const-wide v2, 0x4076800000000000L    # 360.0

    cmpg-double v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_2

    cmpg-double v2, v0, v4

    if-gez v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_3

    cmpg-double v2, v0, v6

    if-gtz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    cmpl-double v2, v0, v6

    if-lez v2, :cond_4

    cmpg-double v2, v0, v8

    if-gez v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    cmpl-double v2, v0, v8

    if-ltz v2, :cond_5

    cmpg-double v2, v0, v10

    if-gtz v2, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    :cond_5
    cmpl-double v2, v0, v10

    if-lez v2, :cond_6

    cmpg-double v2, v0, v12

    if-gez v2, :cond_6

    const/4 v0, 0x4

    goto :goto_0

    :cond_6
    cmpl-double v2, v0, v12

    if-ltz v2, :cond_7

    const-wide v2, 0x406ef00000000000L    # 247.5

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_7

    const/4 v0, 0x5

    goto :goto_0

    :cond_7
    const-wide v2, 0x406ef00000000000L    # 247.5

    cmpl-double v2, v0, v2

    if-lez v2, :cond_8

    const-wide v2, 0x4072480000000000L    # 292.5

    cmpg-double v2, v0, v2

    if-gez v2, :cond_8

    const/4 v0, 0x6

    goto :goto_0

    :cond_8
    const-wide v2, 0x4072480000000000L    # 292.5

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_9

    const-wide v2, 0x4075180000000000L    # 337.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_9

    const/4 v0, 0x7

    goto :goto_0

    :cond_9
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getWindPowerDesc(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/miui/weather2/tools/bi;->J(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v6, v7}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    cmpl-double v1, v2, v6

    if-nez v1, :cond_0

    const-string v0, "--"

    :goto_0
    return-object v0

    :cond_0
    double-to-int v1, v2

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f09004f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    aget-object v0, v1, v4

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/miui/weather2/structures/WeatherData;->convertSpeedToLevelDesc(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    aget-object v0, v1, v5

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/miui/weather2/structures/WeatherData;->convertSpeedToKilometresPerHour(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    aget-object v0, v1, v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/miui/weather2/structures/WeatherData;->convertSpeedToMetrePerSecond(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    aget-object v0, v1, v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/miui/weather2/structures/WeatherData;->convertSpeedToMilesPerHour(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    aget-object v0, v1, v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/miui/weather2/structures/WeatherData;->convertSpeedToKnot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAQIData()Lcom/miui/weather2/structures/AQIData;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mAQIData:Lcom/miui/weather2/structures/AQIData;

    return-object v0
.end method

.method public getAlertArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/Alert;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mAlertArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBrandInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/BrandInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mBrandInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCityId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mCityId:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method public getFgUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/weather2/structures/WeatherData;->mFgUpdateTime:J

    return-wide v0
.end method

.method public getForecastData()Lcom/miui/weather2/structures/ForecastData;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mForecastData:Lcom/miui/weather2/structures/ForecastData;

    return-object v0
.end method

.method public getHourlyData()Lcom/miui/weather2/structures/HourlyData;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mHourlyData:Lcom/miui/weather2/structures/HourlyData;

    return-object v0
.end method

.method public getIndicesData()Lcom/miui/weather2/structures/IndicesData;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mIndicesData:Lcom/miui/weather2/structures/IndicesData;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mLogoLink:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoType()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/WeatherData;->mLogoType:I

    return v0
.end method

.method public getMinuteRainData()Lcom/miui/weather2/structures/MinuteRainData;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mMinuteRainData:Lcom/miui/weather2/structures/MinuteRainData;

    return-object v0
.end method

.method public getMinuteRainJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mMinuteRainJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPreHourData()Lcom/miui/weather2/structures/PreHourData;
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mPreHourDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mPreHourDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mPreHourDataList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/PreHourData;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreHourDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/PreHourData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mPreHourDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRawData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mRawData:Ljava/lang/String;

    return-object v0
.end method

.method public getRealtimeData()Lcom/miui/weather2/structures/RealTimeData;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mRealtimeData:Lcom/miui/weather2/structures/RealTimeData;

    return-object v0
.end method

.method public getTodayData()Lcom/miui/weather2/structures/TodayData;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mTodayData:Lcom/miui/weather2/structures/TodayData;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/weather2/structures/WeatherData;->mUpdateTime:J

    return-wide v0
.end method

.method public setAlerArray(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/Alert;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/weather2/structures/WeatherData;->mAlertArray:Ljava/util/ArrayList;

    return-void
.end method

.method public setAqiData(Lcom/miui/weather2/structures/AQIData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/WeatherData;->mAQIData:Lcom/miui/weather2/structures/AQIData;

    return-void
.end method

.method public setBrandInfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/BrandInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/weather2/structures/WeatherData;->mBrandInfo:Ljava/util/ArrayList;

    return-void
.end method

.method public setForecast(Lcom/miui/weather2/structures/ForecastData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/WeatherData;->mForecastData:Lcom/miui/weather2/structures/ForecastData;

    return-void
.end method

.method public setLogoLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/WeatherData;->mLogoLink:Ljava/lang/String;

    return-void
.end method

.method public setLogoType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/structures/WeatherData;->mLogoType:I

    return-void
.end method

.method public setPreHourDataList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/PreHourData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/weather2/structures/WeatherData;->mPreHourDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public setRealTime(Lcom/miui/weather2/structures/RealTimeData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/WeatherData;->mRealtimeData:Lcom/miui/weather2/structures/RealTimeData;

    return-void
.end method

.method public setTodayData(Lcom/miui/weather2/structures/TodayData;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/WeatherData;->mTodayData:Lcom/miui/weather2/structures/TodayData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeatherData{mCityId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/WeatherData;->mCityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAlertArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/WeatherData;->mAlertArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAQIData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/WeatherData;->mAQIData:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mForecastData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/WeatherData;->mForecastData:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRealtimeData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/WeatherData;->mRealtimeData:Lcom/miui/weather2/structures/RealTimeData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTodayData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/WeatherData;->mTodayData:Lcom/miui/weather2/structures/TodayData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHourlyData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/WeatherData;->mHourlyData:Lcom/miui/weather2/structures/HourlyData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIndicesData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/WeatherData;->mIndicesData:Lcom/miui/weather2/structures/IndicesData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLogoLink=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/WeatherData;->mLogoLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLogoType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/structures/WeatherData;->mLogoType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocale=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/WeatherData;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/weather2/structures/WeatherData;->mUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFgUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/weather2/structures/WeatherData;->mFgUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCityName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/WeatherData;->mCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRawData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/WeatherData;->mRawData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateSelf(Lcom/miui/weather2/structures/WeatherData;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p1, Lcom/miui/weather2/structures/WeatherData;->mUpdateTime:J

    iget-wide v2, p0, Lcom/miui/weather2/structures/WeatherData;->mUpdateTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mRealtimeData:Lcom/miui/weather2/structures/RealTimeData;

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/weather2/structures/RealTimeData;

    invoke-direct {v0}, Lcom/miui/weather2/structures/RealTimeData;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mRealtimeData:Lcom/miui/weather2/structures/RealTimeData;

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mForecastData:Lcom/miui/weather2/structures/ForecastData;

    if-nez v0, :cond_3

    new-instance v0, Lcom/miui/weather2/structures/ForecastData;

    invoke-direct {v0}, Lcom/miui/weather2/structures/ForecastData;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mForecastData:Lcom/miui/weather2/structures/ForecastData;

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mAQIData:Lcom/miui/weather2/structures/AQIData;

    if-nez v0, :cond_4

    new-instance v0, Lcom/miui/weather2/structures/AQIData;

    invoke-direct {v0}, Lcom/miui/weather2/structures/AQIData;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mAQIData:Lcom/miui/weather2/structures/AQIData;

    :cond_4
    const-string v0, "Wth2:WeatherData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSelf() the background weather data is newer, update now, cityId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getCityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",cityName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/weather2/structures/WeatherData;->getCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/miui/weather2/structures/WeatherData;->mUpdateTime:J

    iput-wide v0, p0, Lcom/miui/weather2/structures/WeatherData;->mUpdateTime:J

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mRealtimeData:Lcom/miui/weather2/structures/RealTimeData;

    iget-object v1, p1, Lcom/miui/weather2/structures/WeatherData;->mRealtimeData:Lcom/miui/weather2/structures/RealTimeData;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/RealTimeData;->updateSelf(Lcom/miui/weather2/structures/RealTimeData;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mForecastData:Lcom/miui/weather2/structures/ForecastData;

    iget-object v1, p1, Lcom/miui/weather2/structures/WeatherData;->mForecastData:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/ForecastData;->updateSelf(Lcom/miui/weather2/structures/ForecastData;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mAQIData:Lcom/miui/weather2/structures/AQIData;

    iget-object v1, p1, Lcom/miui/weather2/structures/WeatherData;->mAQIData:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {v0, v1}, Lcom/miui/weather2/structures/AQIData;->updateSelf(Lcom/miui/weather2/structures/AQIData;)V

    iget-object v0, p1, Lcom/miui/weather2/structures/WeatherData;->mAlertArray:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mAlertArray:Ljava/util/ArrayList;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mAlertArray:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/miui/weather2/structures/WeatherData;->mAlertArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/Alert;

    iget-object v2, p0, Lcom/miui/weather2/structures/WeatherData;->mAlertArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mCityId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mAlertArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mBrandInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mPreHourDataList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mAQIData:Lcom/miui/weather2/structures/AQIData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mForecastData:Lcom/miui/weather2/structures/ForecastData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mRealtimeData:Lcom/miui/weather2/structures/RealTimeData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mTodayData:Lcom/miui/weather2/structures/TodayData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mHourlyData:Lcom/miui/weather2/structures/HourlyData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mIndicesData:Lcom/miui/weather2/structures/IndicesData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mMinuteRainData:Lcom/miui/weather2/structures/MinuteRainData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mLogoLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/weather2/structures/WeatherData;->mLogoType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mLocale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/miui/weather2/structures/WeatherData;->mUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/miui/weather2/structures/WeatherData;->mFgUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/WeatherData;->mRawData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
