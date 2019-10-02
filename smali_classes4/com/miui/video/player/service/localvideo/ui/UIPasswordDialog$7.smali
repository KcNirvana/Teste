.class Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$7;
.super Ljava/lang/Object;
.source "UIPasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;->setViews(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$IPasswordListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$7;->this$0:Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$7;->this$0:Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;->access$600(Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;)Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$IPasswordListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$7;->this$0:Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;->access$600(Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog;)Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$IPasswordListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/player/service/localvideo/ui/UIPasswordDialog$IPasswordListener;->onCancel()V

    :cond_0
    return-void
.end method
