.class public final Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final STATE_CANCELED:I = 0x3

.field public static final STATE_COMPLETED:I = 0x2

.field public static final STATE_FAILED:I = 0x4

.field public static final STATE_QUEUED:I = 0x0

.field public static final STATE_STARTED:I = 0x1


# instance fields
.field public final action:Lcom/google/android/exoplayer2/offline/DownloadAction;

.field public final downloadPercentage:F

.field public final downloadedBytes:J

.field public final error:Ljava/lang/Throwable;

.field public final state:I

.field public final taskId:I


# direct methods
.method private constructor <init>(ILcom/google/android/exoplayer2/offline/DownloadAction;IFJLjava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->taskId:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->action:Lcom/google/android/exoplayer2/offline/DownloadAction;

    iput p3, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->state:I

    iput p4, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->downloadPercentage:F

    iput-wide p5, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->downloadedBytes:J

    iput-object p7, p0, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;->error:Ljava/lang/Throwable;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/exoplayer2/offline/DownloadAction;IFJLjava/lang/Throwable;Lcom/google/android/exoplayer2/offline/DownloadManager$1;)V
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/offline/DownloadManager$TaskState;-><init>(ILcom/google/android/exoplayer2/offline/DownloadAction;IFJLjava/lang/Throwable;)V

    return-void
.end method

.method public static getStateString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    const-string/jumbo v0, "QUEUED"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "STARTED"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "COMPLETED"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "CANCELED"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "FAILED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
