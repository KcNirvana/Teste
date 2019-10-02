.class Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$3;
.super Ljava/lang/Object;
.source "PlayerVideoFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$3;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;II)Z
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment$3;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/PlayerVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p3, p2, v0}, Lcom/miui/video/biz/videoplus/player/dialog/OnErrorAlertDialog;->build(Landroid/app/Activity;Landroid/net/Uri;IZ)Lcom/miui/video/base/widget/ui/MiVAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/base/widget/ui/MiVAlertDialog;->show()V

    const/4 p1, 0x0

    return p1
.end method
