.class final Lcom/xiaomi/accountsdk/account/a/h;
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
        "Lcom/xiaomi/accountsdk/account/a/g;",
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
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/a/g;
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/a/g;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/account/a/g;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/xiaomi/accountsdk/account/a/g;
    .locals 1

    new-array v0, p1, [Lcom/xiaomi/accountsdk/account/a/g;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/a/h;->a(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/a/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/a/h;->a(I)[Lcom/xiaomi/accountsdk/account/a/g;

    move-result-object v0

    return-object v0
.end method
