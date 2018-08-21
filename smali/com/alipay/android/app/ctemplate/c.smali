.class public Lcom/alipay/android/app/ctemplate/c;
.super Ljava/lang/Object;
.source "CdynamicTemplateService.java"


# instance fields
.field private a:Lcom/alipay/android/app/ctemplate/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/app/ctemplate/a;

    invoke-direct {v0}, Lcom/alipay/android/app/ctemplate/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/c;->a:Lcom/alipay/android/app/ctemplate/a;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/alipay/birdnest/api/BirdNestEngine;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "CdynamicTemplateService::getBirdNestVersion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "birdNestVer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/alipay/android/app/ctemplate/c;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "CdynamicTemplateService::getBirdParamsVersion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "birdParamsVer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/c;->a:Lcom/alipay/android/app/ctemplate/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/app/ctemplate/a;->b(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/android/app/ctemplate/model/Template;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/util/Map;Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
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

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/c;->a:Lcom/alipay/android/app/ctemplate/a;

    invoke-virtual {v1, p1, v0, p3}, Lcom/alipay/android/app/ctemplate/a;->a(Ljava/util/Map;Landroid/content/res/Resources;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/res/Resources;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/c;->a:Lcom/alipay/android/app/ctemplate/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ctemplate/a;->a(Landroid/content/res/Resources;)V

    return-void
.end method
