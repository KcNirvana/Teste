.class final Lse/dirac/acs/api/Device$1;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lse/dirac/acs/api/Device;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lse/dirac/acs/api/Device$1;->createFromParcel(Landroid/os/Parcel;)Lse/dirac/acs/api/Device;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lse/dirac/acs/api/Device;
    .locals 0

    invoke-static {p1}, Lse/dirac/acs/api/Device;->access$000(Landroid/os/Parcel;)Lse/dirac/acs/api/Device;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lse/dirac/acs/api/Device$1;->newArray(I)[Lse/dirac/acs/api/Device;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lse/dirac/acs/api/Device;
    .locals 0

    new-array p1, p1, [Lse/dirac/acs/api/Device;

    return-object p1
.end method
