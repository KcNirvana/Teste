.class final Lmiui/cloud/finddevice/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lmiui/cloud/finddevice/a;",
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
.method public a(Landroid/os/Parcel;)Lmiui/cloud/finddevice/a;
    .locals 2

    new-instance v0, Lmiui/cloud/finddevice/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/cloud/finddevice/a;-><init>(Landroid/os/Parcel;Lmiui/cloud/finddevice/b;)V

    return-object v0
.end method

.method public a(I)[Lmiui/cloud/finddevice/a;
    .locals 1

    new-array v0, p1, [Lmiui/cloud/finddevice/a;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lmiui/cloud/finddevice/b;->a(Landroid/os/Parcel;)Lmiui/cloud/finddevice/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lmiui/cloud/finddevice/b;->a(I)[Lmiui/cloud/finddevice/a;

    move-result-object v0

    return-object v0
.end method
