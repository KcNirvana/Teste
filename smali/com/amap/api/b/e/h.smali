.class final Lcom/amap/api/b/e/h;
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
        "Lcom/amap/api/b/e/g;",
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
.method public a(Landroid/os/Parcel;)Lcom/amap/api/b/e/g;
    .locals 2

    new-instance v0, Lcom/amap/api/b/e/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amap/api/b/e/g;-><init>(Landroid/os/Parcel;Lcom/amap/api/b/e/h;)V

    return-object v0
.end method

.method public a(I)[Lcom/amap/api/b/e/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/b/e/h;->a(Landroid/os/Parcel;)Lcom/amap/api/b/e/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/b/e/h;->a(I)[Lcom/amap/api/b/e/g;

    move-result-object v0

    return-object v0
.end method
