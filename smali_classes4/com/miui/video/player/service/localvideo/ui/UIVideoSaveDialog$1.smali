.class Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog$1;
.super Landroid/os/Handler;
.source "UIVideoSaveDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;->initFindViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog$1;->this$0:Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog$1;->this$0:Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog$1;->this$0:Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;->access$000(Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideo/ui/UIVideoSaveDialog;->setProgress(I)V

    return-void
.end method
