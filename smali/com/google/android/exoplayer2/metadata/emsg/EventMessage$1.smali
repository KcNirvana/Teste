.class Lcom/google/android/exoplayer2/metadata/emsg/EventMessage$1;
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    .locals 1

    new-array v0, p1, [Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage$1;->newArray(I)[Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-result-object v0

    return-object v0
.end method
