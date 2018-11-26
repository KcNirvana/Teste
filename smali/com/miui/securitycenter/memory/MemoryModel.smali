.class public Lcom/miui/securitycenter/memory/MemoryModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private aXp:Ljava/lang/String;

.field private aXq:Landroid/util/SparseBooleanArray;

.field private aXr:J

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/securitycenter/memory/g;

    invoke-direct {v0}, Lcom/miui/securitycenter/memory/g;-><init>()V

    sput-object v0, Lcom/miui/securitycenter/memory/MemoryModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securitycenter/memory/MemoryModel;->bpw(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securitycenter/memory/MemoryModel;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/securitycenter/memory/MemoryModel;->bpy(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securitycenter/memory/MemoryModel;->bpx(Landroid/util/SparseBooleanArray;)V

    return-void
.end method


# virtual methods
.method public bpu()Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryModel;->aXq:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method public bpv()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/securitycenter/memory/MemoryModel;->aXr:J

    return-wide v0
.end method

.method public bpw(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/memory/MemoryModel;->aXp:Ljava/lang/String;

    return-void
.end method

.method public bpx(Landroid/util/SparseBooleanArray;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/memory/MemoryModel;->aXq:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public bpy(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/securitycenter/memory/MemoryModel;->aXr:J

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryModel;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/memory/MemoryModel;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ProcessModel : AppName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securitycenter/memory/MemoryModel;->aXp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " PkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securitycenter/memory/MemoryModel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " MemorySize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/securitycenter/memory/MemoryModel;->aXr:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " LockState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securitycenter/memory/MemoryModel;->aXq:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryModel;->aXp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryModel;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/miui/securitycenter/memory/MemoryModel;->aXr:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryModel;->aXq:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    return-void
.end method
