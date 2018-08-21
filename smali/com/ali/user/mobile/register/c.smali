.class final Lcom/ali/user/mobile/register/c;
.super Ljava/lang/Object;
.source "RegistParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/ali/user/mobile/register/RegistParam;",
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
.method public a(Landroid/os/Parcel;)Lcom/ali/user/mobile/register/RegistParam;
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/register/RegistParam;

    invoke-direct {v0, p1}, Lcom/ali/user/mobile/register/RegistParam;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/ali/user/mobile/register/RegistParam;
    .locals 1

    new-array v0, p1, [Lcom/ali/user/mobile/register/RegistParam;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/register/c;->a(Landroid/os/Parcel;)Lcom/ali/user/mobile/register/RegistParam;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/register/c;->a(I)[Lcom/ali/user/mobile/register/RegistParam;

    move-result-object v0

    return-object v0
.end method
