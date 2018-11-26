.class Lcom/miui/hybrid/accessory/sdk/icondialog/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)[Lcom/miui/hybrid/accessory/sdk/icondialog/IconData;
    .locals 1

    new-array v0, p1, [Lcom/miui/hybrid/accessory/sdk/icondialog/IconData;

    return-object v0
.end method

.method public bCw(Landroid/os/Parcel;)Lcom/miui/hybrid/accessory/sdk/icondialog/IconData;
    .locals 1

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/icondialog/IconData;

    invoke-direct {v0, p1}, Lcom/miui/hybrid/accessory/sdk/icondialog/IconData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/hybrid/accessory/sdk/icondialog/a;->bCw(Landroid/os/Parcel;)Lcom/miui/hybrid/accessory/sdk/icondialog/IconData;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/hybrid/accessory/sdk/icondialog/a;->a(I)[Lcom/miui/hybrid/accessory/sdk/icondialog/IconData;

    move-result-object v0

    return-object v0
.end method
