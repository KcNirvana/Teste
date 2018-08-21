.class Lcom/ali/user/mobile/ui/widget/ab;
.super Ljava/lang/Object;
.source "AUInputBox.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/AUInputBox;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/AUInputBox;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/ab;->a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/ab;->a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$000(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/ab;->a:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->access$000(Lcom/ali/user/mobile/ui/widget/AUInputBox;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
