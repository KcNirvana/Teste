.class Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$1;
.super Ljava/lang/Object;
.source "SubtitleView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$1;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$1;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$000(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$1;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$000(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;->onSurfaceViewCreated()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$1;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$000(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$1;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$000(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;->onSurfaceViewDestroyed()V

    :cond_0
    return-void
.end method
