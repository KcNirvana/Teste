.class Lcom/ali/user/mobile/ui/widget/a;
.super Ljava/lang/Object;
.source "APBasePwdInputBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/a;->b:Lcom/ali/user/mobile/ui/widget/APBasePwdInputBox;

    iput-object p2, p0, Lcom/ali/user/mobile/ui/widget/a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/a;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
