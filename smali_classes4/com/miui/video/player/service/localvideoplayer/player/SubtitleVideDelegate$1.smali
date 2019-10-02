.class Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate$1;
.super Landroid/os/Handler;
.source "SubtitleVideDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->getSubtitleView()Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/player/SubtitleVideDelegate;->getSubtitleView()Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/SubtitleView;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
