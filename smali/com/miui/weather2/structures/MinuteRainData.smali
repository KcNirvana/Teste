.class public Lcom/miui/weather2/structures/MinuteRainData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final COLORFUL_WEATHER_ICON:[I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/weather2/structures/MinuteRainData;",
            ">;"
        }
    .end annotation
.end field

.field private static HEAD_ICON_TYPE_HEAVY_RAIN:Ljava/lang/String; = null

.field private static HEAD_ICON_TYPE_HEAVY_SNOW:Ljava/lang/String; = null

.field private static HEAD_ICON_TYPE_MIDDLE_RAIN:Ljava/lang/String; = null

.field private static HEAD_ICON_TYPE_MIDDLE_SNOW:Ljava/lang/String; = null

.field private static HEAD_ICON_TYPE_NO_RAIN:Ljava/lang/String; = null

.field private static HEAD_ICON_TYPE_NO_SNOW:Ljava/lang/String; = null

.field private static HEAD_ICON_TYPE_SMALL_RAIN:Ljava/lang/String; = null

.field private static HEAD_ICON_TYPE_SMALL_SNOW:Ljava/lang/String; = null

.field private static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Wth2:MinuteRainData"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mFgUpdateTime:J

.field private mHeadDescription:Ljava/lang/String;

.field private mHeadIconType:Ljava/lang/String;

.field private mIsModify:Z

.field private mIsShow:Z

.field private mLocalDate:Ljava/lang/String;

.field private mPrecipitationProbability:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mPubTime:Ljava/lang/String;

.field private mShortDescription:Ljava/lang/String;

.field private mStatus:I

.field private mWeatherType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "rain_0"

    sput-object v0, Lcom/miui/weather2/structures/MinuteRainData;->HEAD_ICON_TYPE_NO_RAIN:Ljava/lang/String;

    const-string v0, "rain_1"

    sput-object v0, Lcom/miui/weather2/structures/MinuteRainData;->HEAD_ICON_TYPE_SMALL_RAIN:Ljava/lang/String;

    const-string v0, "rain_2"

    sput-object v0, Lcom/miui/weather2/structures/MinuteRainData;->HEAD_ICON_TYPE_MIDDLE_RAIN:Ljava/lang/String;

    const-string v0, "rain_3"

    sput-object v0, Lcom/miui/weather2/structures/MinuteRainData;->HEAD_ICON_TYPE_HEAVY_RAIN:Ljava/lang/String;

    const-string v0, "snow_0"

    sput-object v0, Lcom/miui/weather2/structures/MinuteRainData;->HEAD_ICON_TYPE_NO_SNOW:Ljava/lang/String;

    const-string v0, "snow_1"

    sput-object v0, Lcom/miui/weather2/structures/MinuteRainData;->HEAD_ICON_TYPE_SMALL_SNOW:Ljava/lang/String;

    const-string v0, "snow_2"

    sput-object v0, Lcom/miui/weather2/structures/MinuteRainData;->HEAD_ICON_TYPE_MIDDLE_SNOW:Ljava/lang/String;

    const-string v0, "snow_3"

    sput-object v0, Lcom/miui/weather2/structures/MinuteRainData;->HEAD_ICON_TYPE_HEAVY_SNOW:Ljava/lang/String;

    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/weather2/structures/MinuteRainData;->COLORFUL_WEATHER_ICON:[I

    new-instance v0, Lcom/miui/weather2/structures/MinuteRainData$1;

    invoke-direct {v0}, Lcom/miui/weather2/structures/MinuteRainData$1;-><init>()V

    sput-object v0, Lcom/miui/weather2/structures/MinuteRainData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
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
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mPrecipitationProbability:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mPrecipitationProbability:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mIsModify:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mIsShow:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mLocalDate:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mPubTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mShortDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mWeatherType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mFgUpdateTime:J

    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mPrecipitationProbability:Ljava/util/ArrayList;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/weather2/structures/MinuteRainData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/structures/MinuteRainData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addPrecipitationData(D)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mPrecipitationProbability:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColorfulIconByWeatherType()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/weather2/structures/MinuteRainData;->getWeatherTypeNum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v1, Lcom/miui/weather2/structures/MinuteRainData;->COLORFUL_WEATHER_ICON:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/miui/weather2/structures/MinuteRainData;->COLORFUL_WEATHER_ICON:[I

    aget v0, v1, v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/miui/weather2/structures/MinuteRainData;->COLORFUL_WEATHER_ICON:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFgUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mFgUpdateTime:J

    return-wide v0
.end method

.method public getHeadDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mHeadDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadIcon()I
    .locals 4

    const v0, 0x7f02013d

    iget-object v1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mHeadIconType:Ljava/lang/String;

    sget-object v2, Lcom/miui/weather2/structures/MinuteRainData;->HEAD_ICON_TYPE_SMALL_SNOW:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mHeadIconType:Ljava/lang/String;

    sget-object v2, Lcom/miui/weather2/structures/MinuteRainData;->HEAD_ICON_TYPE_MIDDLE_SNOW:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mHeadIconType:Ljava/lang/String;

    sget-object v2, Lcom/miui/weather2/structures/MinuteRainData;->HEAD_ICON_TYPE_HEAVY_SNOW:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const v0, 0x7f02013f

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mHeadIconType:Ljava/lang/String;

    sget-object v2, Lcom/miui/weather2/structures/MinuteRainData;->HEAD_ICON_TYPE_SMALL_RAIN:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f02013e

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mHeadIconType:Ljava/lang/String;

    sget-object v2, Lcom/miui/weather2/structures/MinuteRainData;->HEAD_ICON_TYPE_MIDDLE_RAIN:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f02013c

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mHeadIconType:Ljava/lang/String;

    sget-object v2, Lcom/miui/weather2/structures/MinuteRainData;->HEAD_ICON_TYPE_HEAVY_RAIN:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x7f02013b

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mHeadIconType:Ljava/lang/String;

    sget-object v2, Lcom/miui/weather2/structures/MinuteRainData;->HEAD_ICON_TYPE_NO_RAIN:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mHeadIconType:Ljava/lang/String;

    sget-object v2, Lcom/miui/weather2/structures/MinuteRainData;->HEAD_ICON_TYPE_NO_SNOW:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Wth2:MinuteRainData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown head icon type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/structures/MinuteRainData;->mHeadIconType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/weather2/tools/ae;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPrecipitationProbability()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mPrecipitationProbability:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRealTimeWeatherDescription(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/miui/weather2/structures/MinuteRainData;->getWeatherTypeNum()I

    move-result v0

    const v1, 0x7f07000c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-ltz v0, :cond_0

    array-length v2, v1

    if-gt v0, v2, :cond_0

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRoughWeatherType()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/weather2/structures/MinuteRainData;->getWeatherTypeNum()I

    move-result v0

    invoke-static {v0}, Lcom/miui/weather2/structures/WeatherType;->transformMinuteRainWeatherType(I)I

    move-result v0

    return v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mShortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mWeatherType:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherTypeNum()I
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mWeatherType:Ljava/lang/String;

    const/16 v1, 0x63

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/miui/weather2/structures/WeatherType;->convertV7WeatherTypeToV6WetherType(I)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModify()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mIsModify:Z

    return v0
.end method

.method public isParticleFall()Z
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mPrecipitationProbability:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mPrecipitationProbability:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mPrecipitationProbability:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mPrecipitationProbability:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public isShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mIsShow:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setFgUpdateTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mFgUpdateTime:J

    return-void
.end method

.method public setHeadDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mHeadDescription:Ljava/lang/String;

    return-void
.end method

.method public setHeadIconType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mHeadIconType:Ljava/lang/String;

    return-void
.end method

.method public setIsModify(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mIsModify:Z

    return-void
.end method

.method public setIsShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mIsShow:Z

    return-void
.end method

.method public setLocalDate(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mLocalDate:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/miui/weather2/tools/bi;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mPubTime:Ljava/lang/String;

    return-void
.end method

.method public setShortDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mShortDescription:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mStatus:I

    return-void
.end method

.method public setWeatherType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/MinuteRainData;->mWeatherType:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mIsModify:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mIsShow:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mLocalDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mPubTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mShortDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mWeatherType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mFgUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/miui/weather2/structures/MinuteRainData;->mPrecipitationProbability:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
