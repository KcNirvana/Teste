.class public Lcom/miui/appcompatibility/data/AppCompatibilityData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private bao:Ljava/lang/String;

.field private bap:Ljava/lang/String;

.field private baq:Ljava/util/List;

.field private bar:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/appcompatibility/data/b;

    invoke-direct {v0}, Lcom/miui/appcompatibility/data/b;-><init>()V

    sput-object v0, Lcom/miui/appcompatibility/data/AppCompatibilityData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/appcompatibility/data/AppCompatibilityData;->baq:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/appcompatibility/data/AppCompatibilityData;->baq:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appcompatibility/data/AppCompatibilityData;->bao:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appcompatibility/data/AppCompatibilityData;->bap:Ljava/lang/String;

    sget-object v0, Lcom/miui/appcompatibility/data/PackageData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appcompatibility/data/AppCompatibilityData;->baq:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/appcompatibility/data/AppCompatibilityData;->bar:I

    return-void
.end method


# virtual methods
.method public bwf()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/appcompatibility/data/AppCompatibilityData;->baq:Ljava/util/List;

    return-object v0
.end method

.method public bwg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appcompatibility/data/AppCompatibilityData;->bao:Ljava/lang/String;

    return-void
.end method

.method public bwh(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appcompatibility/data/AppCompatibilityData;->bap:Ljava/lang/String;

    return-void
.end method

.method public bwi(I)V
    .locals 0

    iput p1, p0, Lcom/miui/appcompatibility/data/AppCompatibilityData;->bar:I

    return-void
.end method

.method public bwj(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appcompatibility/data/AppCompatibilityData;->baq:Ljava/util/List;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appcompatibility/data/AppCompatibilityData;->bao:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/appcompatibility/data/AppCompatibilityData;->bap:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/appcompatibility/data/AppCompatibilityData;->baq:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget v0, p0, Lcom/miui/appcompatibility/data/AppCompatibilityData;->bar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
