.class Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$5;
.super Ljava/lang/Object;
.source "UIPlusPasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->setViews(Ljava/lang/String;Ljava/lang/String;IILcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$5;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$5;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$600(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$5;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$600(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$IPasswordListener;->onCancel()V

    :cond_0
    return-void
.end method
