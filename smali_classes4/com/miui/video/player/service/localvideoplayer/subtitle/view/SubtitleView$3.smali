.class Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView$3;
.super Ljava/lang/Object;
.source "SubtitleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->access$100(Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
