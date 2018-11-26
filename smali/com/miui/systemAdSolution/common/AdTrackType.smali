.class public Lcom/miui/systemAdSolution/common/AdTrackType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final TAG:Ljava/lang/String; = "AdTrackType"


# instance fields
.field private mValue:Lcom/miui/systemAdSolution/common/AdTrackType$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/systemAdSolution/common/AdTrackType$1;

    invoke-direct {v0}, Lcom/miui/systemAdSolution/common/AdTrackType$1;-><init>()V

    sput-object v0, Lcom/miui/systemAdSolution/common/AdTrackType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    :cond_0
    if-ltz v0, :cond_1

    invoke-static {}, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->values()[Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_2

    :cond_1
    sget-object v1, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_UNKOWN:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    iput-object v1, p0, Lcom/miui/systemAdSolution/common/AdTrackType;->mValue:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    const-string/jumbo v1, "AdTrackType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the type["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] is not support."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->values()[Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/miui/systemAdSolution/common/AdTrackType;->mValue:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/miui/systemAdSolution/common/AdTrackType$Type;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/miui/systemAdSolution/common/AdTrackType;->mValue:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Lcom/miui/systemAdSolution/common/AdTrackType$Type;
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/AdTrackType;->mValue:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/systemAdSolution/common/AdTrackType;->mValue:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
