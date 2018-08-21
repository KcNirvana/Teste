.class Lcom/ali/user/mobile/login/ui/n;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/n;->a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/n;->a:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/i/b;->a(Landroid/app/Activity;)V

    return-void
.end method
