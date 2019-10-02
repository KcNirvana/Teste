.class Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$4;
.super Ljava/lang/Object;
.source "MediaControllerPresenter.java"

# interfaces
.implements Lcom/miui/video/base/common/impl/IUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->clickHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$4;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$4;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->access$000(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;)Lcom/miui/video/biz/videoplus/player/IPlayerActivity;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/IPlayerActivity;->removeCheckedList()V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$4;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->exitEditMode()V

    :cond_0
    return-void
.end method
