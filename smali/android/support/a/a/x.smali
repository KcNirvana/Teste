.class final Landroid/support/a/a/x;
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
        "Landroid/support/a/a/r$r;",
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
.method public a(Landroid/os/Parcel;)Landroid/support/a/a/r$r;
    .locals 1

    new-instance v0, Landroid/support/a/a/r$r;

    invoke-direct {v0, p1}, Landroid/support/a/a/r$r;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/a/a/r$r;
    .locals 1

    new-array v0, p1, [Landroid/support/a/a/r$r;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/a/a/x;->a(Landroid/os/Parcel;)Landroid/support/a/a/r$r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/a/a/x;->a(I)[Landroid/support/a/a/r$r;

    move-result-object v0

    return-object v0
.end method
