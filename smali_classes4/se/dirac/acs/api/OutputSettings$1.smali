.class final Lse/dirac/acs/api/OutputSettings$1;
.super Ljava/lang/Object;
.source "OutputSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/OutputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lse/dirac/acs/api/OutputSettings;",
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

    invoke-virtual {p0, p1}, Lse/dirac/acs/api/OutputSettings$1;->createFromParcel(Landroid/os/Parcel;)Lse/dirac/acs/api/OutputSettings;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lse/dirac/acs/api/OutputSettings;
    .locals 2

    new-instance v0, Lse/dirac/acs/api/OutputSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lse/dirac/acs/api/OutputSettings;-><init>(Landroid/os/Parcel;Lse/dirac/acs/api/OutputSettings$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lse/dirac/acs/api/OutputSettings$1;->newArray(I)[Lse/dirac/acs/api/OutputSettings;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lse/dirac/acs/api/OutputSettings;
    .locals 0

    new-array p1, p1, [Lse/dirac/acs/api/OutputSettings;

    return-object p1
.end method
