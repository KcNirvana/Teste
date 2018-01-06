.class public Lcom/miui/weather2/structures/AQIData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ANALYSIS_TABLE_SIZE:I = 0x7

.field private static final AQILEVEL_DANGEROUS:I = 0x4

.field private static final AQILEVEL_GOOD:I = 0x0

.field private static final AQILEVEL_HAZARDOUS:I = 0x5

.field private static final AQILEVEL_LIGHT_POLLUTION:I = 0x2

.field private static final AQILEVEL_MODERATE:I = 0x1

.field private static final AQILEVEL_UNHEALTHY:I = 0x3

.field private static final AQI_COLOR:[I

.field private static final AQI_ICON:[I

.field private static final CO_ANALYSIS_TABLE:[I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/weather2/structures/AQIData;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOURLY_AQI_ICON:[I

.field public static final MAX_VALUE:I = 0x1f4

.field public static final MAX_VALUE_CO:I = 0x96

.field public static final MAX_VALUE_NO2:I = 0xf00

.field public static final MAX_VALUE_O3:I = 0x4b0

.field public static final MAX_VALUE_PM10:I = 0x258

.field public static final MAX_VALUE_PM25:I = 0x1f4

.field public static final MAX_VALUE_SO2:I = 0x320

.field private static final NO2_ANALYSIS_TABLE:[I

.field public static final NONE_DATA:Ljava/lang/String; = "--"

.field private static final O3_ANALYSIS_TABLE:[I

.field private static final PARTICLE_STANDARD:[I

.field private static final PARTICLE_STANDARD_COLOR:[I

.field private static final PM10_ANALYSIS_TABLE:[I

.field private static final PM25_ANALYSIS_TABLE:[I

.field private static final PROGRESS_BAR_STYLE:[I

.field private static final REALTIME_AQI_ICON:[I

.field private static final SO2_ANALYSIS_TABLE:[I

.field private static final TYPE_EXCEEDED_THE_STANDARD:I = 0x1

.field private static final TYPE_NOT_EXCEEDED:I = 0x0

.field private static final TYPE_SERIOUS_EXCEEDED:I = 0x2


# instance fields
.field private mAqi:Ljava/lang/String;

.field private mAqiSuggest:Ljava/lang/String;

.field private mBrandArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/Brand;",
            ">;"
        }
    .end annotation
.end field

.field private mCo:Ljava/lang/String;

.field private mCoDesc:Ljava/lang/String;

.field private mNo2:Ljava/lang/String;

.field private mNo2Desc:Ljava/lang/String;

.field private mO3:Ljava/lang/String;

.field private mO3Desc:Ljava/lang/String;

.field private mPm10:Ljava/lang/String;

.field private mPm10Desc:Ljava/lang/String;

.field private mPm25:Ljava/lang/String;

.field private mPm25Desc:Ljava/lang/String;

.field private mPrimary:Ljava/lang/String;

.field private mPubTime:Ljava/lang/String;

.field private mSo2:Ljava/lang/String;

.field private mSo2Desc:Ljava/lang/String;

.field private mSpot:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x6

    const/4 v1, 0x7

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/weather2/structures/AQIData;->PM25_ANALYSIS_TABLE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/weather2/structures/AQIData;->PM10_ANALYSIS_TABLE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/weather2/structures/AQIData;->NO2_ANALYSIS_TABLE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/miui/weather2/structures/AQIData;->CO_ANALYSIS_TABLE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/miui/weather2/structures/AQIData;->SO2_ANALYSIS_TABLE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/miui/weather2/structures/AQIData;->O3_ANALYSIS_TABLE:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/miui/weather2/structures/AQIData;->PARTICLE_STANDARD_COLOR:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/miui/weather2/structures/AQIData;->PROGRESS_BAR_STYLE:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/miui/weather2/structures/AQIData;->PARTICLE_STANDARD:[I

    new-instance v0, Lcom/miui/weather2/structures/AQIData$1;

    invoke-direct {v0}, Lcom/miui/weather2/structures/AQIData$1;-><init>()V

    sput-object v0, Lcom/miui/weather2/structures/AQIData;->CREATOR:Landroid/os/Parcelable$Creator;

    new-array v0, v2, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/miui/weather2/structures/AQIData;->REALTIME_AQI_ICON:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/miui/weather2/structures/AQIData;->HOURLY_AQI_ICON:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/miui/weather2/structures/AQIData;->AQI_ICON:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/miui/weather2/structures/AQIData;->AQI_COLOR:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x23
        0x4b
        0x73
        0x96
        0xfa
        0x1f4
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x32
        0x96
        0xfa
        0x15e
        0x1a4
        0x258
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x64
        0xc8
        0x2bc
        0x4b0
        0x924
        0x924
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1388
        0x2710
        0x88b8
        0xea60
        0x15f90
        0x15f90
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x96
        0x1f4
        0x28a
        0x320
        0x640
        0x640
    .end array-data

    :array_5
    .array-data 4
        0x0
        0xa0
        0xc8
        0x12c
        0x190
        0x320
        0x320
    .end array-data

    :array_6
    .array-data 4
        0x7f0b0026
        0x7f0b0027
        0x7f0b0024
    .end array-data

    :array_7
    .array-data 4
        0x7f02017f
        0x7f020180
        0x7f02017e
    .end array-data

    :array_8
    .array-data 4
        0x7f0900b2
        0x7f0900b1
        0x7f0900b3
    .end array-data

    :array_9
    .array-data 4
        0x7f020160
        0x7f020160
        0x7f020161
        0x7f020161
        0x7f02015f
        0x7f02015f
    .end array-data

    :array_a
    .array-data 4
        0x7f0200fa
        0x7f0200fb
        0x7f0200fc
        0x7f0200fd
        0x7f0200f9
        0x7f0200ff
    .end array-data

    :array_b
    .array-data 4
        0x7f020028
        0x7f02002e
        0x7f02002c
        0x7f02003a
        0x7f02002a
        0x7f020026
    .end array-data

    :array_c
    .array-data 4
        0x7f0b0018
        0x7f0b001b
        0x7f0b001a
        0x7f0b002a
        0x7f0b0019
        0x7f0b000d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mAqi:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mAqiSuggest:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mNo2:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mNo2Desc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPm10:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPm10Desc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPm25:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPm25Desc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mSo2:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mSo2Desc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mCo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mCoDesc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mO3:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mO3Desc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPubTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mSpot:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPrimary:Ljava/lang/String;

    const-class v0, Lcom/miui/weather2/structures/Brand;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mBrandArray:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/weather2/structures/AQIData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/structures/AQIData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getAQILevel()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v0

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/miui/weather2/structures/AQIData;->getInternationalAQILevel(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/miui/weather2/structures/AQIData;->getAQILevel(I)I

    move-result v0

    goto :goto_0
.end method

.method static getAQILevel(I)I
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

.method public static getAqiColor(Landroid/content/Context;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/weather2/structures/AQIData;->getAqiColorResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getAqiColorResId(I)I
    .locals 2

    invoke-static {p0}, Lcom/miui/weather2/structures/AQIData;->getAQILevel(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/miui/weather2/structures/AQIData;->AQI_COLOR:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/miui/weather2/structures/AQIData;->AQI_COLOR:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method public static getAqiIcon(I)I
    .locals 2

    invoke-static {p0}, Lcom/miui/weather2/structures/AQIData;->getAQILevel(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/miui/weather2/structures/AQIData;->AQI_ICON:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/miui/weather2/structures/AQIData;->AQI_ICON:[I

    aget v0, v1, v0

    goto :goto_0
.end method

.method public static getAqiValue(Lcom/miui/weather2/structures/AQIData;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/miui/weather2/structures/AQIData;->getAQILevel()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public static getDetailTitleWithAppend(ILandroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/miui/weather2/structures/AQIData;->getAQILevel(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f070000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    new-array v3, v4, [Ljava/lang/Object;

    aget-object v0, v1, v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getHourlyAqiIcon(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-static {p0}, Lcom/miui/weather2/structures/AQIData;->getAQILevel(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/miui/weather2/structures/AQIData;->HOURLY_AQI_ICON:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
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

.method private getParticleStandardDesc(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/weather2/structures/AQIData;->PARTICLE_STANDARD:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getParticleStandardDescColor(Landroid/content/res/Resources;I)I
    .locals 1

    sget-object v0, Lcom/miui/weather2/structures/AQIData;->PARTICLE_STANDARD_COLOR:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private getPollutionExceededType([ID)I
    .locals 4

    const/4 v1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget v2, p1, v1

    int-to-double v2, v2

    cmpg-double v2, p2, v2

    if-lez v2, :cond_0

    const/4 v0, 0x4

    aget v0, p1, v0

    int-to-double v2, v0

    cmpg-double v0, p2, v2

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private getPollutionFraction([ID)I
    .locals 6

    const/4 v4, 0x6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget v1, p1, v4

    int-to-double v2, v1

    cmpl-double v1, p2, v2

    if-lez v1, :cond_2

    const/16 v0, 0x64

    goto :goto_0

    :cond_2
    aget v1, p1, v4

    int-to-double v2, v1

    div-double v2, p2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    double-to-int v0, v2

    goto :goto_0
.end method

.method private getPollutionLevel([ID)I
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmpg-double v1, p2, v2

    if-gez v1, :cond_1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget v1, p1, v0

    int-to-double v2, v1

    cmpg-double v1, p2, v2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static getPrimaryPollution(Lcom/miui/weather2/structures/AQIData;Landroid/content/Context;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/weather2/structures/AQIData;",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const v7, 0x7f0900e3

    const v6, 0x7f0900e0

    const v5, 0x7f0900df

    const v4, 0x7f0900e2

    const/4 v3, -0x1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPm25()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f0900e1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPm10()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getSo2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getNo2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f0900de

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getCo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getO3()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPrimary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_1

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    new-instance v0, Landroid/util/Pair;

    const v1, 0x7f09013d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPrimary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f09012f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f09012b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x7f09012c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPrimary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_0
.end method

.method private getProgressBarDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/miui/weather2/structures/AQIData;->PROGRESS_BAR_STYLE:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getRealTimeAqiIcon(I)I
    .locals 2

    invoke-static {p0}, Lcom/miui/weather2/structures/AQIData;->getAQILevel(I)I

    move-result v0

    sget-object v1, Lcom/miui/weather2/structures/AQIData;->REALTIME_AQI_ICON:[I

    aget v0, v1, v0

    return v0
.end method

.method public static getTitle(ILandroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/miui/weather2/structures/AQIData;->getAQILevel(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTitleWithAppend(ILandroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/miui/weather2/structures/AQIData;->getAQILevel(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    new-array v3, v4, [Ljava/lang/Object;

    aget-object v0, v1, v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTitleWithPrefixAndAppend(ILandroid/content/Context;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/miui/weather2/structures/AQIData;->getAQILevel(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    new-array v4, v6, [Ljava/lang/Object;

    aget-object v2, v2, v0

    new-array v5, v6, [Ljava/lang/Object;

    aget-object v0, v1, v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTopPollution(Lcom/miui/weather2/structures/AQIData;Landroid/content/Context;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/weather2/structures/AQIData;",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const v5, 0x7f0900e2

    const/4 v4, 0x0

    const/4 v3, -0x1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/weather2/structures/AQIData;->getAQILevel()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPm25()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_2

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0900e1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPm10()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0900e3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getSo2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0900df

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getNo2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0900de

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getCo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0900e0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getO3()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/miui/weather2/structures/AQIData$2;

    invoke-direct {v0}, Lcom/miui/weather2/structures/AQIData$2;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Landroid/util/Pair;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAqi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mAqi:Ljava/lang/String;

    return-object v0
.end method

.method public getAqiColor(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getAqiNum()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/weather2/structures/AQIData;->getAqiColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getAqiNum()I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mAqi:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getAqiSuggest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mAqiSuggest:Ljava/lang/String;

    return-object v0
.end method

.method public getBrandArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/Brand;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mBrandArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCo()Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mCo:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "--"

    goto :goto_0
.end method

.method public getCoDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mCoDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getNo2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mNo2:Ljava/lang/String;

    return-object v0
.end method

.method public getNo2Desc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mNo2Desc:Ljava/lang/String;

    return-object v0
.end method

.method public getO3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mO3:Ljava/lang/String;

    return-object v0
.end method

.method public getO3Desc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mO3Desc:Ljava/lang/String;

    return-object v0
.end method

.method public getPm10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPm10:Ljava/lang/String;

    return-object v0
.end method

.method public getPm10Desc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPm10Desc:Ljava/lang/String;

    return-object v0
.end method

.method public getPm25()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPm25:Ljava/lang/String;

    return-object v0
.end method

.method public getPm25Desc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPm25Desc:Ljava/lang/String;

    return-object v0
.end method

.method public getPollutionItemDesc(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPm25Desc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPm10Desc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getSo2Desc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getNo2Desc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getCoDesc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getO3Desc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getPollutionItemFraction(I)I
    .locals 4

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->PM25_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPm25()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionFraction([ID)I

    move-result v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->PM10_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPm10()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionFraction([ID)I

    move-result v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->SO2_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getSo2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionFraction([ID)I

    move-result v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->NO2_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getNo2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionFraction([ID)I

    move-result v0

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->CO_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getCo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionFraction([ID)I

    move-result v0

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->O3_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getO3()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionFraction([ID)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getPollutionItemLevel(I)I
    .locals 4

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->PM25_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPm25()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionLevel([ID)I

    move-result v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->PM10_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPm10()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionLevel([ID)I

    move-result v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->SO2_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getSo2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionLevel([ID)I

    move-result v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->NO2_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getNo2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionLevel([ID)I

    move-result v0

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->CO_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getCo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionLevel([ID)I

    move-result v0

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->O3_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getO3()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionLevel([ID)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getPollutionItemParticleStandardDesc(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 4

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    sget-object v0, Lcom/miui/weather2/structures/AQIData;->PARTICLE_STANDARD:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->PM25_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPm25()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionExceededType([ID)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/structures/AQIData;->getParticleStandardDesc(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->PM10_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPm10()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionExceededType([ID)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/structures/AQIData;->getParticleStandardDesc(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->SO2_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getSo2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionExceededType([ID)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/structures/AQIData;->getParticleStandardDesc(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->NO2_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getNo2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionExceededType([ID)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/structures/AQIData;->getParticleStandardDesc(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->CO_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getCo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionExceededType([ID)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/structures/AQIData;->getParticleStandardDesc(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->O3_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getO3()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionExceededType([ID)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/structures/AQIData;->getParticleStandardDesc(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getPollutionItemParticleStandardDescColor(Landroid/content/res/Resources;I)I
    .locals 4

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    sget-object v0, Lcom/miui/weather2/structures/AQIData;->PARTICLE_STANDARD_COLOR:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->PM25_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPm25()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionExceededType([ID)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/structures/AQIData;->getParticleStandardDescColor(Landroid/content/res/Resources;I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->PM10_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPm10()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionExceededType([ID)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/structures/AQIData;->getParticleStandardDescColor(Landroid/content/res/Resources;I)I

    move-result v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->SO2_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getSo2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionExceededType([ID)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/structures/AQIData;->getParticleStandardDescColor(Landroid/content/res/Resources;I)I

    move-result v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->NO2_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getNo2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionExceededType([ID)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/structures/AQIData;->getParticleStandardDescColor(Landroid/content/res/Resources;I)I

    move-result v0

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->CO_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getCo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionExceededType([ID)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/structures/AQIData;->getParticleStandardDescColor(Landroid/content/res/Resources;I)I

    move-result v0

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->O3_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getO3()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionExceededType([ID)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/structures/AQIData;->getParticleStandardDescColor(Landroid/content/res/Resources;I)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getPollutionItemProgressBarDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    sget-object v0, Lcom/miui/weather2/structures/AQIData;->PROGRESS_BAR_STYLE:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->PM25_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPm25()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionExceededType([ID)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/structures/AQIData;->getProgressBarDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->PM10_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPm10()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionExceededType([ID)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/structures/AQIData;->getProgressBarDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->SO2_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getSo2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionExceededType([ID)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/structures/AQIData;->getProgressBarDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->NO2_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getNo2()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionExceededType([ID)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/structures/AQIData;->getProgressBarDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->CO_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getCo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionExceededType([ID)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/structures/AQIData;->getProgressBarDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/miui/weather2/structures/AQIData;->O3_ANALYSIS_TABLE:[I

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getO3()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/weather2/structures/AQIData;->getPollutionExceededType([ID)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/structures/AQIData;->getProgressBarDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getPollutionItemTitle(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f090037

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f090036

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f090038

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f090034

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const v0, 0x7f09002e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const v0, 0x7f090035

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getPollutionItemValue(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPm25()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPm10()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getSo2()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getNo2()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getCo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getO3()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getPrimary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPrimary:Ljava/lang/String;

    return-object v0
.end method

.method public getPubTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPubTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPubTimeNum()J
    .locals 3

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/miui/weather2/structures/AQIData;->mPubTime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSo2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mSo2:Ljava/lang/String;

    return-object v0
.end method

.method public getSo2Desc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mSo2Desc:Ljava/lang/String;

    return-object v0
.end method

.method public getSpot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mSpot:Ljava/lang/String;

    return-object v0
.end method

.method public isPollutionItemPopupWindowStart(Landroid/content/Context;I)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/miui/weather2/tools/bi;->U(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_0

    if-eq v3, p2, :cond_0

    if-ne v4, p2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p2, :cond_3

    if-eq v3, p2, :cond_3

    if-eq v4, p2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public setAqi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AQIData;->mAqi:Ljava/lang/String;

    return-void
.end method

.method public setAqiSuggest(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AQIData;->mAqiSuggest:Ljava/lang/String;

    return-void
.end method

.method public setBrandArray(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/weather2/structures/Brand;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/weather2/structures/AQIData;->mBrandArray:Ljava/util/ArrayList;

    return-void
.end method

.method public setCo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AQIData;->mCo:Ljava/lang/String;

    return-void
.end method

.method public setCoDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AQIData;->mCoDesc:Ljava/lang/String;

    return-void
.end method

.method public setNo2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AQIData;->mNo2:Ljava/lang/String;

    return-void
.end method

.method public setNo2Desc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AQIData;->mNo2Desc:Ljava/lang/String;

    return-void
.end method

.method public setO3(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AQIData;->mO3:Ljava/lang/String;

    return-void
.end method

.method public setO3Desc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AQIData;->mO3Desc:Ljava/lang/String;

    return-void
.end method

.method public setPm10(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AQIData;->mPm10:Ljava/lang/String;

    return-void
.end method

.method public setPm10Desc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AQIData;->mPm10Desc:Ljava/lang/String;

    return-void
.end method

.method public setPm25(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AQIData;->mPm25:Ljava/lang/String;

    return-void
.end method

.method public setPm25Desc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AQIData;->mPm25Desc:Ljava/lang/String;

    return-void
.end method

.method public setPrimary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AQIData;->mPrimary:Ljava/lang/String;

    return-void
.end method

.method public setPubTime(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-static {p2, p1}, Lcom/miui/weather2/tools/bi;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPubTime:Ljava/lang/String;

    return-void
.end method

.method public setSo2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AQIData;->mSo2:Ljava/lang/String;

    return-void
.end method

.method public setSo2Desc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AQIData;->mSo2Desc:Ljava/lang/String;

    return-void
.end method

.method public setSpot(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/AQIData;->mSpot:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AQIData{mAqi=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mAqi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mAqiSuggest=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mAqiSuggest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNo2=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mNo2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNo2Desc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mNo2Desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPm10=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mPm10:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPm10Desc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mPm10Desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPm25=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mPm25:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPm25Desc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mPm25Desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSo2=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mSo2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSo2Desc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mSo2Desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mCo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoDesc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mCoDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mO3=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mO3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mO3Desc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mO3Desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPubTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mPubTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSpot=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mSpot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPrimary=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mPrimary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBrandArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/AQIData;->mBrandArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateSelf(Lcom/miui/weather2/structures/AQIData;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/weather2/structures/AQIData;->getPubTimeNum()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/weather2/structures/AQIData;->getPubTimeNum()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPubTime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPubTime:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPubTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mAqi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mAqi:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mAqi:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/miui/weather2/structures/AQIData;->mPubTime:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/miui/weather2/structures/AQIData;->mAqi:Ljava/lang/String;

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mAqi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mAqiSuggest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mNo2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mNo2Desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPm10:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPm10Desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPm25:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPm25Desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mSo2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mSo2Desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mCo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mCoDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mO3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mO3Desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPubTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mSpot:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mPrimary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/AQIData;->mBrandArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
