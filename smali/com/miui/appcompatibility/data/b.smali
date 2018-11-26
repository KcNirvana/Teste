.class final Lcom/miui/appcompatibility/data/b;
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/appcompatibility/data/AppCompatibilityData;
    .locals 1

    new-instance v0, Lcom/miui/appcompatibility/data/AppCompatibilityData;

    invoke-direct {v0, p1}, Lcom/miui/appcompatibility/data/AppCompatibilityData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/appcompatibility/data/b;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/appcompatibility/data/AppCompatibilityData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/appcompatibility/data/AppCompatibilityData;
    .locals 1

    new-array v0, p1, [Lcom/miui/appcompatibility/data/AppCompatibilityData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/appcompatibility/data/b;->newArray(I)[Lcom/miui/appcompatibility/data/AppCompatibilityData;

    move-result-object v0

    return-object v0
.end method
