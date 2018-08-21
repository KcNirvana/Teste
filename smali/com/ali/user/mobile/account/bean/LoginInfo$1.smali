.class final Lcom/ali/user/mobile/account/bean/LoginInfo$1;
.super Ljava/lang/Object;
.source "LoginInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/ali/user/mobile/account/bean/LoginInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ali/user/mobile/account/bean/LoginInfo;
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/account/bean/LoginInfo;

    invoke-direct {v0, p1}, Lcom/ali/user/mobile/account/bean/LoginInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/account/bean/LoginInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ali/user/mobile/account/bean/LoginInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ali/user/mobile/account/bean/LoginInfo;
    .locals 1

    new-array v0, p1, [Lcom/ali/user/mobile/account/bean/LoginInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/account/bean/LoginInfo$1;->newArray(I)[Lcom/ali/user/mobile/account/bean/LoginInfo;

    move-result-object v0

    return-object v0
.end method
