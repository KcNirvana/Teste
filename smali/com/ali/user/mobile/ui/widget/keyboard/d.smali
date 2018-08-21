.class Lcom/ali/user/mobile/ui/widget/keyboard/d;
.super Ljava/lang/Object;
.source "APSafeEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/ui/widget/keyboard/c;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/ui/widget/keyboard/c;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/ui/widget/keyboard/d;->a:Lcom/ali/user/mobile/ui/widget/keyboard/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/ui/widget/keyboard/d;->a:Lcom/ali/user/mobile/ui/widget/keyboard/c;

    iget-object v0, v0, Lcom/ali/user/mobile/ui/widget/keyboard/c;->a:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->showNormalKeyboard(Landroid/widget/EditText;)V

    return-void
.end method
