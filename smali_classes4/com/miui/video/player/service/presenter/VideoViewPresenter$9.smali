.class Lcom/miui/video/player/service/presenter/VideoViewPresenter$9;
.super Ljava/lang/Object;
.source "VideoViewPresenter.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/presenter/VideoViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$9;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    sget-object v0, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange   focusChange == :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    const-string v0, "audio loss"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$9;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$1200(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->TAG:Ljava/lang/String;

    const-string v0, "audio gain"

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$9;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$1300(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V

    :goto_0
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
