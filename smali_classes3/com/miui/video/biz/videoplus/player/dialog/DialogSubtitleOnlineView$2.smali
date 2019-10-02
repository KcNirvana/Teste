.class Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$2;
.super Ljava/lang/Object;
.source "DialogSubtitleOnlineView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->initViewEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$2;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView$2;->this$0:Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;->access$200(Lcom/miui/video/biz/videoplus/player/dialog/DialogSubtitleOnlineView;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
