.class public final Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final componentSplicePlaybackPositionUs:J

.field public final componentSplicePts:J

.field public final componentTag:I


# direct methods
.method private constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentTag:I

    iput-wide p2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentSplicePts:J

    iput-wide p4, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentSplicePlaybackPositionUs:J

    return-void
.end method

.method synthetic constructor <init>(IJJLcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJJ)V

    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;
    .locals 6

    new-instance v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJJ)V

    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentTag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentSplicePts:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentSplicePlaybackPositionUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
