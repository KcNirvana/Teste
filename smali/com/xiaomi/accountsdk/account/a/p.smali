.class final Lcom/xiaomi/accountsdk/account/a/p;
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
        "Lcom/xiaomi/accountsdk/account/a/o;",
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
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/a/o;
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/a/o;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/account/a/o;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/xiaomi/accountsdk/account/a/o;
    .locals 1

    new-array v0, p1, [Lcom/xiaomi/accountsdk/account/a/o;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/a/p;->a(Landroid/os/Parcel;)Lcom/xiaomi/accountsdk/account/a/o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/a/p;->a(I)[Lcom/xiaomi/accountsdk/account/a/o;

    move-result-object v0

    return-object v0
.end method
