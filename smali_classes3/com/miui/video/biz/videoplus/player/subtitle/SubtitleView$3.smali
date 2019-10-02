.class Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$3;
.super Ljava/lang/Object;
.source "SubtitleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;
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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$3;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$3;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$3;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$300(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/base/database/LocalVideoEntity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$400(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;Lcom/miui/video/base/database/LocalVideoEntity;)V

    return-void
.end method
