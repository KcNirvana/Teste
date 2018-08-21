.class public Lcom/alipay/android/app/ctemplate/a;
.super Ljava/lang/Object;
.source "CdynamicTemplateEngine.java"


# instance fields
.field private a:Lcom/alipay/android/app/ctemplate/transport/TemplateManager;

.field private b:Lcom/alipay/android/app/ctemplate/a/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;

    invoke-direct {v0}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/a;->a:Lcom/alipay/android/app/ctemplate/transport/TemplateManager;

    new-instance v0, Lcom/alipay/android/app/ctemplate/a/d;

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/ctemplate/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/a;->b:Lcom/alipay/android/app/ctemplate/a/d;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ctemplate/a;)Lcom/alipay/android/app/ctemplate/transport/TemplateManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/a;->a:Lcom/alipay/android/app/ctemplate/transport/TemplateManager;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "CdynamicTemplateEngine::buildBirdParams"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ori birdParams:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/alipay/android/app/ctemplate/a;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "template"

    const-string/jumbo v2, "TplManagerBirdParamsNull"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "birdParams is null. tplId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", birdParams="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method private a(Ljava/lang/String;Lcom/alipay/android/app/ctemplate/model/Template;Landroid/content/res/Resources;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/ctemplate/model/Template;",
            "Landroid/content/res/Resources;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;",
            ">;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    :try_start_0
    iget-object v0, p2, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "CdynamicTemplateEngine::checkTplStatus_1"

    const-string/jumbo v2, "serverTpl.data is not empty"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/alipay/android/app/ctemplate/a;->a(Lcom/alipay/android/app/ctemplate/model/Template;)Z

    move-result v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-NULL-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/alipay/android/app/ctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/sys/a;->l()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->ADD:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    iget-object v3, v3, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    if-eqz v8, :cond_0

    const-string/jumbo v4, "T"

    :goto_0
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "CdynamicTemplateEngine::checkTplStatus_1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save serverTpl, result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v4, "F"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Lcom/alipay/android/app/ctemplate/model/Template;Lcom/alipay/android/app/ctemplate/model/Template;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "CdynamicTemplateEngine::checkTplStatus_1"

    const-string/jumbo v2, "need update serverTpl"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p3}, Lcom/alipay/android/app/ctemplate/a;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;

    sget-object v2, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->ADD:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    invoke-direct {v1, p1, v0, v2}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;)V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v6

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/a;->a:Lcom/alipay/android/app/ctemplate/transport/TemplateManager;

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Lcom/alipay/android/app/ctemplate/model/Template;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "CdynamicTemplateEngine::checkTplStatus_1"

    const-string/jumbo v2, "don\'t need update serverTpl"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "template"

    const-string/jumbo v3, "TplManagerCheckTpl_1_Ex"

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v7

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lcom/alipay/android/app/ctemplate/model/Template;Lcom/alipay/android/app/ctemplate/model/Template;Landroid/content/res/Resources;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/ctemplate/model/Template;",
            "Lcom/alipay/android/app/ctemplate/model/Template;",
            "Landroid/content/res/Resources;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p2, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "CdynamicTemplateEngine::checkTplStatus_2"

    const-string/jumbo v2, "serverTpl.data is not empty"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/alipay/android/app/ctemplate/a;->a(Lcom/alipay/android/app/ctemplate/model/Template;)Z

    move-result v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/alipay/android/app/ctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/alipay/android/app/ctemplate/model/Template;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/sys/a;->l()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->UPDATE:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    iget-object v3, v3, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    if-eqz v6, :cond_0

    const-string/jumbo v4, "T"

    :goto_0
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "CdynamicTemplateEngine::checkTplStatus_2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save serverTpl, result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v4, "F"

    goto :goto_0

    :cond_1
    invoke-static {p2, p3}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Lcom/alipay/android/app/ctemplate/model/Template;Lcom/alipay/android/app/ctemplate/model/Template;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "CdynamicTemplateEngine::checkTplStatus_2"

    const-string/jumbo v2, "need update serverTpl"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p4}, Lcom/alipay/android/app/ctemplate/a;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    sget-object v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->UPDATE:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    invoke-static {p2, p3}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->b(Lcom/alipay/android/app/ctemplate/model/Template;Lcom/alipay/android/app/ctemplate/model/Template;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->FORCE:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    :cond_2
    new-instance v2, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;

    invoke-direct {v2, p1, v1, v0}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;)V

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "template"

    const-string/jumbo v3, "TplManagerCheckTpl_2_Ex"

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/a;->a:Lcom/alipay/android/app/ctemplate/transport/TemplateManager;

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Lcom/alipay/android/app/ctemplate/model/Template;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "CdynamicTemplateEngine::checkTplStatus_2"

    const-string/jumbo v2, "don\'t need update serverTpl"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "opt_defer_download"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "opt_defer_download"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/android/app/ctemplate/model/Template;
    .locals 6

    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/a;->a:Lcom/alipay/android/app/ctemplate/transport/TemplateManager;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Ljava/lang/String;)Lcom/alipay/android/app/ctemplate/model/Template;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/a;->a:Lcom/alipay/android/app/ctemplate/transport/TemplateManager;

    invoke-virtual {p0, p1, p3}, Lcom/alipay/android/app/ctemplate/a;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Ljava/lang/String;)Lcom/alipay/android/app/ctemplate/model/Template;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "template"

    const-string/jumbo v3, "TplManagerBirdParamsIllegal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "birdParams is Illegal. tplId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", birdParams="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/ctemplate/a;->b(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/android/app/ctemplate/model/Template;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/a;->a:Lcom/alipay/android/app/ctemplate/transport/TemplateManager;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Lcom/alipay/android/app/ctemplate/model/Template;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"tplVersion\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", \"platform\":\"android\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/util/Map;Landroid/content/res/Resources;Ljava/util/Map;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "CdynamicTemplateEngine::handleBirdResponse"

    const-string/jumbo v2, "response is null or empty"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p3}, Lcom/alipay/android/app/ctemplate/a;->a(Ljava/util/Map;)Z

    move-result v7

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "CdynamicTemplateEngine::handleBirdResponse"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "tplId:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "CdynamicTemplateEngine::handleBirdResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tplId is null for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0, p2}, Lcom/alipay/android/app/ctemplate/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2}, Lcom/alipay/android/app/ctemplate/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/android/app/ctemplate/model/Template;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/a;->b:Lcom/alipay/android/app/ctemplate/a/d;

    invoke-virtual {v0, v1, p2}, Lcom/alipay/android/app/ctemplate/a/d;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/android/app/ctemplate/model/Template;

    move-result-object v3

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v4, "CdynamicTemplateEngine::handleBirdResponse"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "localTpl: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_3

    invoke-direct {p0, v1, v2, p2, v5}, Lcom/alipay/android/app/ctemplate/a;->a(Ljava/lang/String;Lcom/alipay/android/app/ctemplate/model/Template;Landroid/content/res/Resources;Ljava/util/List;)Z

    move-result v0

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3
    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/ctemplate/a;->a(Ljava/lang/String;Lcom/alipay/android/app/ctemplate/model/Template;Lcom/alipay/android/app/ctemplate/model/Template;Landroid/content/res/Resources;Ljava/util/List;)Z

    move-result v0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    if-eqz v7, :cond_7

    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/a;->a:Lcom/alipay/android/app/ctemplate/transport/TemplateManager;

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;

    invoke-virtual {v1, v2, v0, p2}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Landroid/content/Context;Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;Landroid/content/res/Resources;)Ljava/util/Map;

    move-result-object v0

    move-object v2, v0

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;

    iget-object v4, v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->c:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    sget-object v5, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->ADD:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    if-eq v1, v5, :cond_6

    iget-object v0, v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$a;->c:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    sget-object v1, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->FORCE:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    if-ne v0, v1, :cond_5

    :cond_6
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/a;->a:Lcom/alipay/android/app/ctemplate/transport/TemplateManager;

    invoke-virtual {v0, v5, p2, p3}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager;->a(Ljava/util/List;Landroid/content/res/Resources;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :cond_8
    move-object v0, v6

    goto/16 :goto_0

    :cond_9
    move-object v2, v0

    goto :goto_3
.end method

.method public a(Landroid/content/res/Resources;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "CdynamicTemplateEngine::triggerTemplateUpdate"

    const-string/jumbo v2, "res == null"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/ctemplate/b;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/ctemplate/b;-><init>(Lcom/alipay/android/app/ctemplate/a;Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public a(Lcom/alipay/android/app/ctemplate/model/Template;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/a;->b:Lcom/alipay/android/app/ctemplate/a/d;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ctemplate/a/d;->a(Lcom/alipay/android/app/ctemplate/model/Template;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/android/app/ctemplate/model/Template;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/a;->b:Lcom/alipay/android/app/ctemplate/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/ctemplate/a/d;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/android/app/ctemplate/model/Template;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
