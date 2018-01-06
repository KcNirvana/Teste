.class public Lcom/miui/weather2/structures/IndicesData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CARWASH_TYPE:Ljava/lang/String; = "carWash"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/weather2/structures/IndicesData;",
            ">;"
        }
    .end annotation
.end field

.field public static final FEELSLIKE_TYPE:Ljava/lang/String; = "feelsLike"

.field public static final HUMIDITY_TYPE:Ljava/lang/String; = "humidity"

.field public static final INDEICES_NUM:I = 0x6

.field public static final PRECIP1HR_TYPE:Ljava/lang/String; = "precip1hr"

.field public static final PRESSURE_TYPE:Ljava/lang/String; = "pressure"

.field public static final RESTRICTION_TYPE:Ljava/lang/String; = "restriction"

.field public static final SPORTS_TYPE:Ljava/lang/String; = "sports"

.field public static final UVINDEX_TYPE:Ljava/lang/String; = "uvIndex"

.field public static final VISIBILITY_TYPE:Ljava/lang/String; = "visibility"


# instance fields
.field private mAirPressure:I

.field private mFeelsLikeIndex:I

.field private mHumdityIndex:I

.field private mIndiecesNum:I

.field private types:[Ljava/lang/String;

.field private values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/weather2/structures/IndicesData$1;

    invoke-direct {v0}, Lcom/miui/weather2/structures/IndicesData$1;-><init>()V

    sput-object v0, Lcom/miui/weather2/structures/IndicesData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x6

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/weather2/structures/IndicesData;->types:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/weather2/structures/IndicesData;->values:[Ljava/lang/String;

    iput v1, p0, Lcom/miui/weather2/structures/IndicesData;->mHumdityIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/structures/IndicesData;->mIndiecesNum:I

    iput v1, p0, Lcom/miui/weather2/structures/IndicesData;->mFeelsLikeIndex:I

    iput v1, p0, Lcom/miui/weather2/structures/IndicesData;->mAirPressure:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/weather2/structures/IndicesData;->types:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/weather2/structures/IndicesData;->values:[Ljava/lang/String;

    iput v2, p0, Lcom/miui/weather2/structures/IndicesData;->mHumdityIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/structures/IndicesData;->mIndiecesNum:I

    iput v2, p0, Lcom/miui/weather2/structures/IndicesData;->mFeelsLikeIndex:I

    iput v2, p0, Lcom/miui/weather2/structures/IndicesData;->mAirPressure:I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/weather2/structures/IndicesData;->types:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/weather2/structures/IndicesData;->values:[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/structures/IndicesData;->types:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/IndicesData;->values:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/structures/IndicesData;->mAirPressure:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/structures/IndicesData;->mFeelsLikeIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/structures/IndicesData;->mHumdityIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/structures/IndicesData;->mIndiecesNum:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/weather2/structures/IndicesData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/structures/IndicesData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAirPressureValue()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/miui/weather2/structures/IndicesData;->mAirPressure:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/miui/weather2/structures/IndicesData;->mAirPressure:I

    invoke-virtual {p0, v0}, Lcom/miui/weather2/structures/IndicesData;->getValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFeelsLikeValue()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/IndicesData;->mFeelsLikeIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/weather2/structures/IndicesData;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHumdityValue()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/miui/weather2/structures/IndicesData;->mHumdityIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/miui/weather2/structures/IndicesData;->mHumdityIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/weather2/structures/IndicesData;->getValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIndiecesNum()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/structures/IndicesData;->mIndiecesNum:I

    return v0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/miui/weather2/structures/IndicesData;->mIndiecesNum:I

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/structures/IndicesData;->types:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/miui/weather2/structures/IndicesData;->mIndiecesNum:I

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/structures/IndicesData;->values:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public setTypes(ILjava/lang/String;)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "humidity"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput p1, p0, Lcom/miui/weather2/structures/IndicesData;->mHumdityIndex:I

    :cond_2
    const-string v0, "feelsLike"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput p1, p0, Lcom/miui/weather2/structures/IndicesData;->mFeelsLikeIndex:I

    :cond_3
    const-string v0, "pressure"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput p1, p0, Lcom/miui/weather2/structures/IndicesData;->mAirPressure:I

    :cond_4
    iget-object v0, p0, Lcom/miui/weather2/structures/IndicesData;->types:[Ljava/lang/String;

    aput-object p2, v0, p1

    iget v0, p0, Lcom/miui/weather2/structures/IndicesData;->mIndiecesNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/weather2/structures/IndicesData;->mIndiecesNum:I

    goto :goto_0
.end method

.method public setValues(ILjava/lang/String;)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/structures/IndicesData;->values:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IndicesData{types="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/IndicesData;->types:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/structures/IndicesData;->values:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHumdityIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/structures/IndicesData;->mHumdityIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIndiecesNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/structures/IndicesData;->mIndiecesNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFeelsLikeIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/structures/IndicesData;->mFeelsLikeIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAirPressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/structures/IndicesData;->mAirPressure:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/structures/IndicesData;->types:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/structures/IndicesData;->values:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/weather2/structures/IndicesData;->mAirPressure:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/weather2/structures/IndicesData;->mFeelsLikeIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/weather2/structures/IndicesData;->mHumdityIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/weather2/structures/IndicesData;->mIndiecesNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
