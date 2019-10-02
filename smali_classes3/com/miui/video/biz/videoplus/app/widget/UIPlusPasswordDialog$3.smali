.class Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$3;
.super Ljava/lang/Object;
.source "UIPlusPasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->initViewsEvent()V
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

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$3;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$3;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->access$700(Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog$3;->this$0:Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/widget/UIPlusPasswordDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method
