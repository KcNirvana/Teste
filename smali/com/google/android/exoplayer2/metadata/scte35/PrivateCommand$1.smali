.class Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand;-><init>(Landroid/os/Parcel;Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand;
    .locals 1

    new-array v0, p1, [Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand$1;->newArray(I)[Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand;

    move-result-object v0

    return-object v0
.end method
