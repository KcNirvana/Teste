.class final Lcom/miui/gamebooster/gamead/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/gamebooster/gamead/User;
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/gamead/User;

    invoke-direct {v0, p1}, Lcom/miui/gamebooster/gamead/User;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/gamead/r;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/gamebooster/gamead/User;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/gamebooster/gamead/User;
    .locals 1

    new-array v0, p1, [Lcom/miui/gamebooster/gamead/User;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/gamead/r;->newArray(I)[Lcom/miui/gamebooster/gamead/User;

    move-result-object v0

    return-object v0
.end method
