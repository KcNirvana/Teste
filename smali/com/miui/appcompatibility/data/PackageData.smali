.class public Lcom/miui/appcompatibility/data/PackageData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private bam:Ljava/lang/String;

.field private ban:Ljava/lang/String;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/appcompatibility/data/a;

    invoke-direct {v0}, Lcom/miui/appcompatibility/data/a;-><init>()V

    sput-object v0, Lcom/miui/appcompatibility/data/PackageData;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-object v0, p0, Lcom/miui/appcompatibility/data/PackageData;->bam:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appcompatibility/data/PackageData;->ban:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/appcompatibility/data/PackageData;->status:I

    return-void
.end method


# virtual methods
.method public bwa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appcompatibility/data/PackageData;->bam:Ljava/lang/String;

    return-object v0
.end method

.method public bwb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appcompatibility/data/PackageData;->ban:Ljava/lang/String;

    return-object v0
.end method

.method public bwc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appcompatibility/data/PackageData;->bam:Ljava/lang/String;

    return-void
.end method

.method public bwd(I)V
    .locals 0

    iput p1, p0, Lcom/miui/appcompatibility/data/PackageData;->status:I

    return-void
.end method

.method public bwe(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appcompatibility/data/PackageData;->ban:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/miui/appcompatibility/data/PackageData;->status:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appcompatibility/data/PackageData;->bam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/appcompatibility/data/PackageData;->ban:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/appcompatibility/data/PackageData;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
