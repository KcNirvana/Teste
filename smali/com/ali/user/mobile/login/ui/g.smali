.class Lcom/ali/user/mobile/login/ui/g;
.super Ljava/lang/Object;
.source "AliUserLoginSixPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/g;->a:Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/g;->a:Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->setResult(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/g;->a:Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginSixPasswordActivity;->finish()V

    return-void
.end method
