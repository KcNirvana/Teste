.class final Lcom/xiaomi/miot/DeviceInfo$1;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miot/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xiaomi/miot/DeviceInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/miot/DeviceInfo;
    .locals 1

    new-instance v0, Lcom/xiaomi/miot/DeviceInfo;

    invoke-direct {v0, p1}, Lcom/xiaomi/miot/DeviceInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/miot/DeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/miot/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/xiaomi/miot/DeviceInfo;
    .locals 1

    new-array v0, p1, [Lcom/xiaomi/miot/DeviceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/miot/DeviceInfo$1;->newArray(I)[Lcom/xiaomi/miot/DeviceInfo;

    move-result-object v0

    return-object v0
.end method
