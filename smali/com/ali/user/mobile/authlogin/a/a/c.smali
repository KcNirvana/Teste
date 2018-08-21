.class Lcom/ali/user/mobile/authlogin/a/a/c;
.super Ljava/lang/Object;
.source "AlipaySSOAuthLoginApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ali/user/mobile/authlogin/a/a/b;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/authlogin/a/a/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/authlogin/a/a/c;->b:Lcom/ali/user/mobile/authlogin/a/a/b;

    iput-object p2, p0, Lcom/ali/user/mobile/authlogin/a/a/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/ali/user/mobile/authlogin/a/a/c;->b:Lcom/ali/user/mobile/authlogin/a/a/b;

    iget-object v0, v0, Lcom/ali/user/mobile/authlogin/a/a/b;->a:Lcom/ali/user/mobile/authlogin/a/c;

    invoke-interface {v0}, Lcom/ali/user/mobile/authlogin/a/c;->dismissPreProgress()V

    iget-object v0, p0, Lcom/ali/user/mobile/authlogin/a/a/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/authlogin/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/info/AppInfo;->setAuthApdidToken(Ljava/lang/String;)V

    const-string/jumbo v0, "event"

    const-string/jumbo v1, "AliAuthLoginSDK_syncReqUuidSuccess"

    const-string/jumbo v2, "ALIAUTH_0415_10"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/authlogin/a/a/c;->b:Lcom/ali/user/mobile/authlogin/a/a/b;

    iget-object v0, v0, Lcom/ali/user/mobile/authlogin/a/a/b;->g:Lcom/ali/user/mobile/authlogin/a/a/a;

    iget-object v1, p0, Lcom/ali/user/mobile/authlogin/a/a/c;->b:Lcom/ali/user/mobile/authlogin/a/a/b;

    iget-object v1, v1, Lcom/ali/user/mobile/authlogin/a/a/b;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ali/user/mobile/authlogin/a/a/c;->b:Lcom/ali/user/mobile/authlogin/a/a/b;

    iget-object v2, v2, Lcom/ali/user/mobile/authlogin/a/a/b;->a:Lcom/ali/user/mobile/authlogin/a/c;

    iget-object v3, p0, Lcom/ali/user/mobile/authlogin/a/a/c;->b:Lcom/ali/user/mobile/authlogin/a/a/b;

    iget-object v3, v3, Lcom/ali/user/mobile/authlogin/a/a/b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/authlogin/a/a/c;->b:Lcom/ali/user/mobile/authlogin/a/a/b;

    iget-object v4, v4, Lcom/ali/user/mobile/authlogin/a/a/b;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/ali/user/mobile/authlogin/a/a/c;->b:Lcom/ali/user/mobile/authlogin/a/a/b;

    iget-object v5, v5, Lcom/ali/user/mobile/authlogin/a/a/b;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/ali/user/mobile/authlogin/a/a/c;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/ali/user/mobile/authlogin/a/a/c;->b:Lcom/ali/user/mobile/authlogin/a/a/b;

    iget-object v7, v7, Lcom/ali/user/mobile/authlogin/a/a/b;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/ali/user/mobile/authlogin/a/a/a;->a(Lcom/ali/user/mobile/authlogin/a/a/a;Landroid/app/Activity;Lcom/ali/user/mobile/authlogin/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "event"

    const-string/jumbo v1, "AliAuthLoginSDK_syncReqUuidFailure"

    const-string/jumbo v2, "ALIAUTH_0415_09"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/authlogin/a/a/c;->b:Lcom/ali/user/mobile/authlogin/a/a/b;

    iget-object v0, v0, Lcom/ali/user/mobile/authlogin/a/a/b;->a:Lcom/ali/user/mobile/authlogin/a/c;

    const/16 v1, 0x3ed

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/authlogin/a/c;->preAuthFailed(I)V

    goto :goto_0
.end method
