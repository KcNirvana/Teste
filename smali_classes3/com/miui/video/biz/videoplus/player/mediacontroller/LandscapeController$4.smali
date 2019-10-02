.class Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$4;
.super Ljava/lang/Object;
.source "LandscapeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->hideTimeTxt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

.field final synthetic val$t:I


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$4;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$4;->val$t:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$4;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$4;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$4;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->getCurrentPlayState()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$4;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$500(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)J

    move-result-wide v0

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$4;->val$t:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$4;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$600(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$4;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$500(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)J

    move-result-wide v0

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$4;->val$t:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/FormatUtils;->formatPlayTimeWithMillis(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$4;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$600(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/miui/video/framework/utils/FormatUtils;->formatPlayTimeWithMillis(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$4;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$200(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Landroid/widget/TextView;

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

    :cond_2
    return-void
.end method
