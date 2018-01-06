.class final Lcom/xiaomi/vip/a/b;
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
        "Lcom/xiaomi/vip/a/a;",
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
.method public a(Landroid/os/Parcel;)Lcom/xiaomi/vip/a/a;
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/vip/a/a;->a(Landroid/os/Parcel;)Lcom/xiaomi/vip/a/a;

    move-result-object v0

    return-object v0
.end method

.method public a(I)[Lcom/xiaomi/vip/a/a;
    .locals 1

    new-array v0, p1, [Lcom/xiaomi/vip/a/a;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/vip/a/b;->a(Landroid/os/Parcel;)Lcom/xiaomi/vip/a/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/vip/a/b;->a(I)[Lcom/xiaomi/vip/a/a;

    move-result-object v0

    return-object v0
.end method
