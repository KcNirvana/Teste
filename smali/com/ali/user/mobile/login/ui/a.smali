.class Lcom/ali/user/mobile/login/ui/a;
.super Ljava/lang/Object;
.source "AliUserLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/a;->a:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/a;->a:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/a;->a:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/a;->a:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    iget-object v1, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->mTitleBar:Lcom/ali/user/mobile/ui/widget/APTitleBar;

    invoke-static {}, Lcom/ali/user/mobile/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/a;->a:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->finishAndNotify()V

    goto :goto_1
.end method
