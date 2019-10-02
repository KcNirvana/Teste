.class Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$5;
.super Ljava/lang/Object;
.source "PortraitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->showTimePosition(JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;

.field final synthetic val$currentPos:J

.field final synthetic val$duration:J

.field final synthetic val$t:I


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;JIJ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;

    iput-wide p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$5;->val$currentPos:J

    iput p4, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$5;->val$t:I

    iput-wide p5, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$5;->val$duration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$5;->val$currentPos:J

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$5;->val$t:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$5;->val$duration:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$5;->val$currentPos:J

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$5;->val$t:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/FormatUtils;->formatPlayTimeWithMillis(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$5;->val$duration:J

    invoke-static {v1, v2}, Lcom/miui/video/framework/utils/FormatUtils;->formatPlayTimeWithMillis(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->access$200(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController$5;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;->access$200(Lcom/miui/video/biz/videoplus/player/mediacontroller/PortraitController;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
