.class Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$2;
.super Ljava/lang/Object;
.source "SubtitleView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$2;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mSubtitleSurfaceTexture onSurfaceTextureAvailable "

    invoke-static {p1, p2}, Lcom/market/sdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$2;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$202(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;Z)Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$2;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$000(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$2;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$000(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/ISubtitleView$ISubtitleCallback;->onSurfaceTextureViewCreated()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
