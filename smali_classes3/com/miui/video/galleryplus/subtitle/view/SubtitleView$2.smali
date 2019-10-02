.class Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$2;
.super Ljava/lang/Object;
.source "SubtitleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$2;->this$0:Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$2;->this$0:Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->access$100(Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$2;->this$0:Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;

    iget-object v0, v0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mOffsetHide:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/video/galleryplus/subtitle/JobRunner;->removeJob(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView$2;->this$0:Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;

    iget-object v0, v0, Lcom/miui/video/galleryplus/subtitle/view/SubtitleView;->mOffsetHide:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/miui/video/galleryplus/subtitle/JobRunner;->postJobDelay(Ljava/lang/Runnable;J)V

    return-void
.end method
