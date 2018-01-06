.class final Landroid/support/a/a/m;
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
        "Landroid/support/a/a/l$d;",
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
.method public a(Landroid/os/Parcel;)Landroid/support/a/a/l$d;
    .locals 1

    new-instance v0, Landroid/support/a/a/l$d;

    invoke-direct {v0, p1}, Landroid/support/a/a/l$d;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/a/a/l$d;
    .locals 1

    new-array v0, p1, [Landroid/support/a/a/l$d;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/a/a/m;->a(Landroid/os/Parcel;)Landroid/support/a/a/l$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/a/a/m;->a(I)[Landroid/support/a/a/l$d;

    move-result-object v0

    return-object v0
.end method
