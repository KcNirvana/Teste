.class Lcom/ali/user/mobile/login/view/o;
.super Ljava/lang/Object;
.source "PasswordLoginView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/view/PasswordLoginView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/view/PasswordLoginView;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/o;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/o;->a:Lcom/ali/user/mobile/login/view/PasswordLoginView;

    iget-object v0, v0, Lcom/ali/user/mobile/login/view/PasswordLoginView;->mPasswordInput:Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
