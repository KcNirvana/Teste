.class public final Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1$onProgressChanged$1;
.super Ljava/lang/Object;
.source "OnlineMediaControllerBar.kt"

# interfaces
.implements Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->onProgressChanged(Landroid/widget/SeekBar;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1$onProgressChanged$1",
        "Lcom/miui/video/player/service/media/IAsyncVideoView$GetDurationCallback;",
        "onDuration",
        "",
        "playerDuration",
        "",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $bar:Landroid/widget/SeekBar;

.field final synthetic $fromuser:Z

.field final synthetic $progress:I

.field final synthetic this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;Landroid/widget/SeekBar;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SeekBar;",
            "IZ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1$onProgressChanged$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1$onProgressChanged$1;->$bar:Landroid/widget/SeekBar;

    iput p3, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1$onProgressChanged$1;->$progress:I

    iput-boolean p4, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1$onProgressChanged$1;->$fromuser:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDuration(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1$onProgressChanged$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-static {v0, p1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->access$setMDuration$p(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;I)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1$onProgressChanged$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;->access$getMDuration$p(Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar;)I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1$onProgressChanged$1;->this$0:Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1$onProgressChanged$1;->$bar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1$onProgressChanged$1;->$progress:I

    iget-boolean v2, p0, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1$onProgressChanged$1;->$fromuser:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/video/biz/player/online/ui/control/OnlineMediaControllerBar$mSeekListener$1;->onProgressChangedAfterGetDuration(Landroid/widget/SeekBar;IZ)V

    return-void
.end method
