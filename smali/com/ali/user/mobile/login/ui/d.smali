.class Lcom/ali/user/mobile/login/ui/d;
.super Ljava/lang/Object;
.source "AliUserLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/d;->a:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/d;->a:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->enterState(I)V

    return-void
.end method
