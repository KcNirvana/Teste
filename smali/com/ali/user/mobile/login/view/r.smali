.class Lcom/ali/user/mobile/login/view/r;
.super Ljava/lang/Object;
.source "SmsLoginView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/view/SmsLoginView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/view/SmsLoginView;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/r;->a:Lcom/ali/user/mobile/login/view/SmsLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/r;->a:Lcom/ali/user/mobile/login/view/SmsLoginView;

    iget-object v0, v0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    return-void
.end method
