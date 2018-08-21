.class Lcom/ali/user/mobile/login/ui/o;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/o;->b:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/o;->b:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/o;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/i/b;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
