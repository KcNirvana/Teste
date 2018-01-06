.class final Landroid/support/v4/media/session/b;
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
        "Landroid/support/v4/media/session/a$a;",
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
.method public a(Landroid/os/Parcel;)Landroid/support/v4/media/session/a$a;
    .locals 2

    new-instance v0, Landroid/support/v4/media/session/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v4/media/session/a$a;-><init>(Landroid/os/Parcel;Landroid/support/v4/media/session/a$1;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/v4/media/session/a$a;
    .locals 1

    new-array v0, p1, [Landroid/support/v4/media/session/a$a;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/b;->a(Landroid/os/Parcel;)Landroid/support/v4/media/session/a$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/b;->a(I)[Landroid/support/v4/media/session/a$a;

    move-result-object v0

    return-object v0
.end method
