.class public Lse/dirac/acs/api/Filter;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONTENTS_FILE_DESCRIPTOR:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lse/dirac/acs/api/Filter;",
            ">;"
        }
    .end annotation
.end field

.field public static final LICENSE_DEVICE:I = 0x3

.field public static final LICENSE_FREE:I = 0x1

.field public static final LICENSE_PERSONAL:I = 0x2

.field public static final LICENSE_TRIAL:I = 0x4

.field public static final LICENSE_UNAVAILABLE:I


# instance fields
.field public final eqAvailable:Z

.field public final id:J

.field public final license:I

.field public final name:Ljava/lang/String;

.field public final productID:Ljava/lang/String;

.field public final sfxAvailable:Z

.field public final usecase:Lse/dirac/acs/api/Usecase;

.field public final vendor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lse/dirac/acs/api/Filter$1;

    invoke-direct {v0}, Lse/dirac/acs/api/Filter$1;-><init>()V

    sput-object v0, Lse/dirac/acs/api/Filter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lse/dirac/acs/api/Usecase;ZZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lse/dirac/acs/api/Filter;->id:J

    iput-object p3, p0, Lse/dirac/acs/api/Filter;->name:Ljava/lang/String;

    iput-object p4, p0, Lse/dirac/acs/api/Filter;->vendor:Ljava/lang/String;

    iput-object p5, p0, Lse/dirac/acs/api/Filter;->usecase:Lse/dirac/acs/api/Usecase;

    iput-boolean p6, p0, Lse/dirac/acs/api/Filter;->sfxAvailable:Z

    iput-boolean p7, p0, Lse/dirac/acs/api/Filter;->eqAvailable:Z

    iput p8, p0, Lse/dirac/acs/api/Filter;->license:I

    iput-object p9, p0, Lse/dirac/acs/api/Filter;->productID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lse/dirac/acs/api/Filter;
    .locals 0

    invoke-static {p0}, Lse/dirac/acs/api/Filter;->filterFromParcel(Landroid/os/Parcel;)Lse/dirac/acs/api/Filter;

    move-result-object p0

    return-object p0
.end method

.method private static filterFromParcel(Landroid/os/Parcel;)Lse/dirac/acs/api/Filter;
    .locals 11

    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lse/dirac/acs/api/Usecase;->fromInt(I)Lse/dirac/acs/api/Usecase;

    move-result-object v5

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    new-instance v10, Lse/dirac/acs/api/Filter;

    move-object v0, v10

    move v6, v8

    move v8, v9

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lse/dirac/acs/api/Filter;-><init>(JLjava/lang/String;Ljava/lang/String;Lse/dirac/acs/api/Usecase;ZZILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception p0

    new-instance v0, Landroid/os/BadParcelableException;

    invoke-direct {v0, p0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p0

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lse/dirac/acs/api/Filter;->id:J

    check-cast p1, Lse/dirac/acs/api/Filter;

    iget-wide v2, p1, Lse/dirac/acs/api/Filter;->id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lse/dirac/acs/api/Filter;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lse/dirac/acs/api/Filter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lse/dirac/acs/api/Filter;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lse/dirac/acs/api/Filter;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lse/dirac/acs/api/Filter;->vendor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lse/dirac/acs/api/Filter;->usecase:Lse/dirac/acs/api/Usecase;

    invoke-virtual {p2}, Lse/dirac/acs/api/Usecase;->toInt()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lse/dirac/acs/api/Filter;->sfxAvailable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lse/dirac/acs/api/Filter;->eqAvailable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lse/dirac/acs/api/Filter;->license:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lse/dirac/acs/api/Filter;->productID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
