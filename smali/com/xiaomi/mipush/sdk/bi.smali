.class final Lcom/xiaomi/mipush/sdk/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/bi;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/xiaomi/mipush/sdk/bi;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    const-string v0, "do sync info"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/j/a/aj;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v6}, Lcom/xiaomi/j/a/aj;-><init>(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/bi;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v2

    sget-object v0, Lcom/xiaomi/j/a/s;->v:Lcom/xiaomi/j/a/s;

    iget-object v0, v0, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/j/a/aj;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/j/a/aj;->b(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/bi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/j/a/aj;->d(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    iget-object v0, v1, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    const-string v3, "app_version"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/bi;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/bi;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/b/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/xiaomi/b/a/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    const-string v3, "app_version_code"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/bi;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/bi;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaomi/b/a/a/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/xiaomi/b/a/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    const-string v3, "push_sdk_vn"

    const-string v4, "3_6_1"

    invoke-static {v0, v3, v4}, Lcom/xiaomi/b/a/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    const-string v3, "push_sdk_vc"

    const/16 v4, 0x7789

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/xiaomi/b/a/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    const-string v3, "token"

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/e;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/xiaomi/b/a/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/bi;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/b/a/a/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/h/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/bi;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/b/a/a/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v3, v1, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    const-string v4, "imei_md5"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/b/a/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    const-string v3, "reg_id"

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/e;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/xiaomi/b/a/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    const-string v3, "reg_secret"

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/xiaomi/b/a/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/bi;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/w;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    const-string v3, "-"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    const-string v3, "accept_time"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/b/a/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/mipush/sdk/bi;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    const-string v2, "aliases_md5"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/bi;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/w;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/bh;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/xiaomi/b/a/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    const-string v2, "topics_md5"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/bi;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/w;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/bh;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/xiaomi/b/a/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    const-string v2, "accounts_md5"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/bi;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/w;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/bh;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/xiaomi/b/a/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/bi;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ax;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/j/a/a;->i:Lcom/xiaomi/j/a/a;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v6, v3}, Lcom/xiaomi/mipush/sdk/ax;->a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZLcom/xiaomi/j/a/v;)V

    return-void

    :cond_1
    iget-object v0, v1, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    const-string v2, "aliases"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/bi;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/w;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/bh;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/xiaomi/b/a/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    const-string v2, "topics"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/bi;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/w;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/bh;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/xiaomi/b/a/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    const-string v2, "user_accounts"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/bi;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/w;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/bh;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/xiaomi/b/a/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
