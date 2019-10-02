.class public Lse/dirac/acs/api/OutputSettings;
.super Ljava/lang/Object;
.source "OutputSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONTENTS_FILE_DESCRIPTOR:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lse/dirac/acs/api/OutputSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUM_EQ_BANDS:I = 0x7


# instance fields
.field public final device:Lse/dirac/acs/api/Device;

.field private diracEnabled:Z

.field private final eqBands:[F

.field private eqEnabled:Z

.field public final filter:Lse/dirac/acs/api/Filter;

.field private filterEnabled:Z

.field private sfxEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lse/dirac/acs/api/OutputSettings$1;

    invoke-direct {v0}, Lse/dirac/acs/api/OutputSettings$1;-><init>()V

    sput-object v0, Lse/dirac/acs/api/OutputSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [F

    iput-object v0, p0, Lse/dirac/acs/api/OutputSettings;->eqBands:[F

    :try_start_0
    const-class v0, Lse/dirac/acs/api/Device;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/Device;

    iput-object v0, p0, Lse/dirac/acs/api/OutputSettings;->device:Lse/dirac/acs/api/Device;

    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->device:Lse/dirac/acs/api/Device;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->diracEnabled:Z

    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->filterEnabled:Z

    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->sfxEnabled:Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lse/dirac/acs/api/OutputSettings;->eqEnabled:Z

    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->eqBands:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    const-class v0, Lse/dirac/acs/api/Filter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lse/dirac/acs/api/Filter;

    iput-object p1, p0, Lse/dirac/acs/api/OutputSettings;->filter:Lse/dirac/acs/api/Filter;

    return-void

    :cond_0
    new-instance p1, Landroid/os/BadParcelableException;

    const-string v0, "No valid device in parcel"

    invoke-direct {p1, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Landroid/os/BadParcelableException;

    invoke-direct {v0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lse/dirac/acs/api/OutputSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lse/dirac/acs/api/OutputSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lse/dirac/acs/api/Device;Lse/dirac/acs/api/Filter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [F

    iput-object v0, p0, Lse/dirac/acs/api/OutputSettings;->eqBands:[F

    if-eqz p1, :cond_1

    iput-object p1, p0, Lse/dirac/acs/api/OutputSettings;->device:Lse/dirac/acs/api/Device;

    if-eqz p2, :cond_0

    iget-object p1, p1, Lse/dirac/acs/api/Device;->filters:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object p2, p0, Lse/dirac/acs/api/OutputSettings;->filter:Lse/dirac/acs/api/Filter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid filter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a valid device"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lse/dirac/acs/api/OutputSettings;

    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->device:Lse/dirac/acs/api/Device;

    iget-object v2, p1, Lse/dirac/acs/api/OutputSettings;->device:Lse/dirac/acs/api/Device;

    invoke-virtual {v0, v2}, Lse/dirac/acs/api/Device;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->filter:Lse/dirac/acs/api/Filter;

    iget-object v2, p1, Lse/dirac/acs/api/OutputSettings;->filter:Lse/dirac/acs/api/Filter;

    invoke-virtual {v0, v2}, Lse/dirac/acs/api/Filter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lse/dirac/acs/api/OutputSettings;->diracEnabled:Z

    iget-boolean v2, p1, Lse/dirac/acs/api/OutputSettings;->diracEnabled:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lse/dirac/acs/api/OutputSettings;->filterEnabled:Z

    iget-boolean v2, p1, Lse/dirac/acs/api/OutputSettings;->filterEnabled:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lse/dirac/acs/api/OutputSettings;->sfxEnabled:Z

    iget-boolean v2, p1, Lse/dirac/acs/api/OutputSettings;->sfxEnabled:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lse/dirac/acs/api/OutputSettings;->eqEnabled:Z

    iget-boolean v2, p1, Lse/dirac/acs/api/OutputSettings;->eqEnabled:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->eqBands:[F

    iget-object p1, p1, Lse/dirac/acs/api/OutputSettings;->eqBands:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDiracEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lse/dirac/acs/api/OutputSettings;->diracEnabled:Z

    return v0
.end method

.method public getEqBand(I)F
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->eqBands:[F

    aget p1, v0, p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid eq band"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEqEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lse/dirac/acs/api/OutputSettings;->eqEnabled:Z

    return v0
.end method

.method public getFilterEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lse/dirac/acs/api/OutputSettings;->filterEnabled:Z

    return v0
.end method

.method public getSfxEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lse/dirac/acs/api/OutputSettings;->sfxEnabled:Z

    return v0
.end method

.method public setDiracEnabled(Z)Lse/dirac/acs/api/OutputSettings;
    .locals 0

    iput-boolean p1, p0, Lse/dirac/acs/api/OutputSettings;->diracEnabled:Z

    return-object p0
.end method

.method public setEqBand(IF)Lse/dirac/acs/api/OutputSettings;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->eqBands:[F

    aput p2, v0, p1

    return-object p0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid eq band"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setEqEnabled(Z)Lse/dirac/acs/api/OutputSettings;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->filter:Lse/dirac/acs/api/Filter;

    iget-boolean v0, v0, Lse/dirac/acs/api/Filter;->eqAvailable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filter do not support EQ"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lse/dirac/acs/api/OutputSettings;->eqEnabled:Z

    return-object p0
.end method

.method public setFilterEnabled(Z)Lse/dirac/acs/api/OutputSettings;
    .locals 0

    iput-boolean p1, p0, Lse/dirac/acs/api/OutputSettings;->filterEnabled:Z

    return-object p0
.end method

.method public setSfxEnabled(Z)Lse/dirac/acs/api/OutputSettings;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lse/dirac/acs/api/OutputSettings;->filter:Lse/dirac/acs/api/Filter;

    iget-boolean v0, v0, Lse/dirac/acs/api/Filter;->sfxAvailable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filter do not support SFX"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lse/dirac/acs/api/OutputSettings;->sfxEnabled:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object p2, p0, Lse/dirac/acs/api/OutputSettings;->device:Lse/dirac/acs/api/Device;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const/4 p2, 0x4

    new-array p2, p2, [Z

    iget-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->diracEnabled:Z

    aput-boolean v1, p2, v0

    iget-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->filterEnabled:Z

    const/4 v2, 0x1

    aput-boolean v1, p2, v2

    iget-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->sfxEnabled:Z

    const/4 v2, 0x2

    aput-boolean v1, p2, v2

    iget-boolean v1, p0, Lse/dirac/acs/api/OutputSettings;->eqEnabled:Z

    const/4 v2, 0x3

    aput-boolean v1, p2, v2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object p2, p0, Lse/dirac/acs/api/OutputSettings;->eqBands:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object p2, p0, Lse/dirac/acs/api/OutputSettings;->filter:Lse/dirac/acs/api/Filter;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
