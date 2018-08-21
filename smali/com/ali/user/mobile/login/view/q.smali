.class Lcom/ali/user/mobile/login/view/q;
.super Ljava/lang/Object;
.source "SmsLoginView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ali/user/mobile/login/view/SmsLoginView;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/view/SmsLoginView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/login/view/q;->d:Lcom/ali/user/mobile/login/view/SmsLoginView;

    iput-object p2, p0, Lcom/ali/user/mobile/login/view/q;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/mobile/login/view/q;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ali/user/mobile/login/view/q;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/q;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/login/view/q;->d:Lcom/ali/user/mobile/login/view/SmsLoginView;

    iget-object v0, v0, Lcom/ali/user/mobile/login/view/SmsLoginView;->mAttatchActivity:Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginActivity;->getRdsWraper()Lcom/ali/user/mobile/login/rds/RDSWraper;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/view/q;->d:Lcom/ali/user/mobile/login/view/SmsLoginView;

    iget-object v1, v1, Lcom/ali/user/mobile/login/view/SmsLoginView;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->getRdsData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/view/q;->d:Lcom/ali/user/mobile/login/view/SmsLoginView;

    iget-object v2, p0, Lcom/ali/user/mobile/login/view/q;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/mobile/login/view/q;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/ali/user/mobile/login/view/SmsLoginView;->access$000(Lcom/ali/user/mobile/login/view/SmsLoginView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
