.class Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$3;
.super Ljava/lang/Object;
.source "VideoPlusPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->showPreviewFrameAtTime(Landroid/view/Surface;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

.field final synthetic val$filepathTemp:Ljava/lang/String;

.field final synthetic val$positionTemp:J

.field final synthetic val$surfaceTemp:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;Ljava/lang/String;Landroid/view/Surface;J)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$3;->this$0:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$3;->val$filepathTemp:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$3;->val$surfaceTemp:Landroid/view/Surface;

    iput-wide p4, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$3;->val$positionTemp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$3;->val$filepathTemp:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$3;->val$surfaceTemp:Landroid/view/Surface;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->setPreviewFrameSurface(Ljava/lang/String;Landroid/view/Surface;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->getInstance()Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$3;->val$filepathTemp:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$3;->val$positionTemp:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/biz/videoplus/player/utils/SeekBarFrameUtils;->showPreviewFrameAtTime(Ljava/lang/String;J)V

    return-void
.end method
