.class final Lcom/miui/guardprovider/aidl/e;
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/guardprovider/aidl/VirusInfo;
    .locals 1

    new-instance v0, Lcom/miui/guardprovider/aidl/VirusInfo;

    invoke-direct {v0, p1}, Lcom/miui/guardprovider/aidl/VirusInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/guardprovider/aidl/e;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/guardprovider/aidl/VirusInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/guardprovider/aidl/VirusInfo;
    .locals 1

    new-array v0, p1, [Lcom/miui/guardprovider/aidl/VirusInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/guardprovider/aidl/e;->newArray(I)[Lcom/miui/guardprovider/aidl/VirusInfo;

    move-result-object v0

    return-object v0
.end method
