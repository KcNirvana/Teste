.class public final synthetic Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$K9rRRqVNdwgUCYW-Dixj2ue9elg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroid/view/Surface;

.field private final synthetic f$2:I

.field private final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/view/Surface;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$K9rRRqVNdwgUCYW-Dixj2ue9elg;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$K9rRRqVNdwgUCYW-Dixj2ue9elg;->f$1:Landroid/view/Surface;

    iput p3, p0, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$K9rRRqVNdwgUCYW-Dixj2ue9elg;->f$2:I

    iput-wide p4, p0, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$K9rRRqVNdwgUCYW-Dixj2ue9elg;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$K9rRRqVNdwgUCYW-Dixj2ue9elg;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$K9rRRqVNdwgUCYW-Dixj2ue9elg;->f$1:Landroid/view/Surface;

    iget v2, p0, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$K9rRRqVNdwgUCYW-Dixj2ue9elg;->f$2:I

    iget-wide v3, p0, Lcom/miui/video/localvideoplayer/-$$Lambda$VideoFrameService$1$K9rRRqVNdwgUCYW-Dixj2ue9elg;->f$3:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/video/localvideoplayer/VideoFrameService$1;->lambda$showPreviewFrameAtTime$48(Ljava/lang/String;Landroid/view/Surface;IJ)V

    return-void
.end method
