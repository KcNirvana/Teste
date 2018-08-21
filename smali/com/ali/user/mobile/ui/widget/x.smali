.class Lcom/ali/user/mobile/ui/widget/x;
.super Ljava/lang/Object;
.source "AUBoxInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/AUBoxInput;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/AUBoxInput;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/x;->a:Lcom/ali/user/mobile/ui/widget/AUBoxInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/x;->a:Lcom/ali/user/mobile/ui/widget/AUBoxInput;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->access$000(Lcom/ali/user/mobile/ui/widget/AUBoxInput;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/ali/user/mobile/ui/widget/x;->a:Lcom/ali/user/mobile/ui/widget/AUBoxInput;

    invoke-static {v1}, Lcom/ali/user/mobile/ui/widget/AUBoxInput;->access$000(Lcom/ali/user/mobile/ui/widget/AUBoxInput;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
