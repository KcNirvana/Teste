.class Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$7;
.super Ljava/lang/Object;
.source "PlayerBaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->showMoreDialog(Lcom/miui/video/biz/videoplus/player/dialog/PlayerMoreDialog$RootViewType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$7;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment$7;->this$0:Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/PlayerBaseFragment;->onMoreDialogDismiss()V

    return-void
.end method
