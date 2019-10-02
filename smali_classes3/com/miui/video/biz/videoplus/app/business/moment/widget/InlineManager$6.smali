.class Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$6;
.super Ljava/lang/Object;
.source "InlineManager.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->startInternal(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$6;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;)V
    .locals 1

    const-string p1, "inlineManager"

    const-string v0, " inlineManager OnPrepare  "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$6;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$800(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$6;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$200(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->start()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$6;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$200(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/videoview/VideoPlusVideoView;->setLooping(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$6;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$902(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;Z)Z

    return-void
.end method
