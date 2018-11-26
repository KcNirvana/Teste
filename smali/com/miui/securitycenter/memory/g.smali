.class final Lcom/miui/securitycenter/memory/g;
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/securitycenter/memory/MemoryModel;
    .locals 1

    new-instance v0, Lcom/miui/securitycenter/memory/MemoryModel;

    invoke-direct {v0, p1}, Lcom/miui/securitycenter/memory/MemoryModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/securitycenter/memory/g;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/securitycenter/memory/MemoryModel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/securitycenter/memory/MemoryModel;
    .locals 1

    new-array v0, p1, [Lcom/miui/securitycenter/memory/MemoryModel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/securitycenter/memory/g;->newArray(I)[Lcom/miui/securitycenter/memory/MemoryModel;

    move-result-object v0

    return-object v0
.end method
