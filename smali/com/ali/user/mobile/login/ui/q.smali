.class Lcom/ali/user/mobile/login/ui/q;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/q;->a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/q;->a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->clearPassword()V

    return-void
.end method
