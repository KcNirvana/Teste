.class final Lcom/miui/antivirus/model/k;
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/antivirus/model/DangerousInfo;
    .locals 2

    new-instance v0, Lcom/miui/antivirus/model/DangerousInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/antivirus/model/DangerousInfo;-><init>(Landroid/os/Parcel;Lcom/miui/antivirus/model/DangerousInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/model/k;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/antivirus/model/DangerousInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/antivirus/model/DangerousInfo;
    .locals 1

    new-array v0, p1, [Lcom/miui/antivirus/model/DangerousInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/model/k;->newArray(I)[Lcom/miui/antivirus/model/DangerousInfo;

    move-result-object v0

    return-object v0
.end method
