.class final Lcom/xiaomi/accountsdk/account/data/MiLoginResult$1;
.super Ljava/lang/Object;
.source "MiLoginResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/accountsdk/account/data/MiLoginResult;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
    .locals 0

    new-array p1, p1, [Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/MiLoginResult$1;->newArray(I)[Lcom/xiaomi/accountsdk/account/data/MiLoginResult;

    move-result-object p1

    return-object p1
.end method
