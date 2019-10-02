.class public final Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;
.super Ljava/lang/Object;
.source "PlayStartInfoEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0012\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;",
        "",
        "()V",
        "mEndTime",
        "",
        "getMEndTime",
        "()J",
        "setMEndTime",
        "(J)V",
        "mStartTime",
        "getMStartTime",
        "setMStartTime",
        "step",
        "",
        "getStep",
        "()I",
        "setStep",
        "(I)V",
        "getTime",
        "video_service_base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private mEndTime:J

.field private mStartTime:J

.field private step:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->step:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->mStartTime:J

    iput-wide v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->mEndTime:J

    return-void
.end method


# virtual methods
.method public final getMEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->mEndTime:J

    return-wide v0
.end method

.method public final getMStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->mStartTime:J

    return-wide v0
.end method

.method public final getStep()I
    .locals 1

    iget v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->step:I

    return v0
.end method

.method public final getTime()J
    .locals 6

    iget-wide v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->mEndTime:J

    iget-wide v2, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->mStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->mStartTime:J

    const/4 v4, -0x1

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->mEndTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final setMEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->mEndTime:J

    return-void
.end method

.method public final setMStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->mStartTime:J

    return-void
.end method

.method public final setStep(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->step:I

    return-void
.end method
