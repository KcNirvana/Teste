.class public Lcom/miui/weather2/structures/CityDataLight;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/weather2/structures/CityDataLight;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mBelongings:Ljava/lang/String;

.field protected mCityId:Ljava/lang/String;

.field protected mLatitude:Ljava/lang/String;

.field protected mLocateFlag:I

.field protected mLongitude:Ljava/lang/String;

.field protected mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/weather2/structures/CityDataLight$1;

    invoke-direct {v0}, Lcom/miui/weather2/structures/CityDataLight$1;-><init>()V

    sput-object v0, Lcom/miui/weather2/structures/CityDataLight;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mCityId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mBelongings:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mLocateFlag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mLatitude:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mLongitude:Ljava/lang/String;

    return-void
.end method

.method private generateCityId()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mLatitude:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mLongitude:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/weather2/structures/CityDataLight;->mLatitude:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/CityDataLight;->mLongitude:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mCityId:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public cityEqual(Lcom/miui/weather2/structures/CityDataLight;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityDataLight;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/structures/CityDataLight;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/weather2/structures/CityDataLight;->isLocationCity()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityDataLight;->getCityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityDataLight;->getCityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/structures/CityDataLight;->getCityId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityDataLight;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/weather2/structures/CityDataLight;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityDataLight;->getBelongings()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/miui/weather2/structures/CityDataLight;->getBelongings()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/weather2/structures/CityDataLight;->getBelongings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBelongings()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mBelongings:Ljava/lang/String;

    return-object v0
.end method

.method public getCityId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mCityId:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLng()Lcom/amap/api/maps2d/a/h;
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mLatitude:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/weather2/structures/CityDataLight;->mLongitude:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocateFlag()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mLocateFlag:I

    return v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isLocationCity()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/miui/weather2/structures/CityDataLight;->mLocateFlag:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBelongings(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/CityDataLight;->mBelongings:Ljava/lang/String;

    return-void
.end method

.method public setCityId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/CityDataLight;->mCityId:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/CityDataLight;->mLatitude:Ljava/lang/String;

    return-void
.end method

.method public setLatitudeLongitudeAndGenerateCityId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/CityDataLight;->mLatitude:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/weather2/structures/CityDataLight;->mLongitude:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/weather2/structures/CityDataLight;->generateCityId()V

    return-void
.end method

.method public setLocateFlag(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/structures/CityDataLight;->mLocateFlag:I

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/CityDataLight;->mLongitude:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/structures/CityDataLight;->mName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mCityId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mBelongings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mLocateFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mLatitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/CityDataLight;->mLongitude:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
