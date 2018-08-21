.class Lcom/ali/user/mobile/login/ui/f;
.super Ljava/lang/Object;
.source "AliUserLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/f;->a:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/f;->a:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getBackButton()Lcom/ali/user/mobile/ui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/APButton;->setEnabled(Z)V

    return-void
.end method
