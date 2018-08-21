.class public Lcom/alipay/android/app/ctemplate/api/TemplateEngine;
.super Ljava/lang/Object;
.source "TemplateEngine.java"

# interfaces
.implements Lcom/alipay/android/app/plugin/d;


# instance fields
.field private templateService:Lcom/alipay/android/app/ctemplate/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/statistic/logfield/a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBirdParamsVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/ctemplate/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/api/TemplateEngine;->templateService:Lcom/alipay/android/app/ctemplate/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/ctemplate/c;

    invoke-direct {v0}, Lcom/alipay/android/app/ctemplate/c;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/api/TemplateEngine;->templateService:Lcom/alipay/android/app/ctemplate/c;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/api/TemplateEngine;->templateService:Lcom/alipay/android/app/ctemplate/c;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ctemplate/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleBirdResponse(Ljava/util/Map;Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
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

    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/api/TemplateEngine;->templateService:Lcom/alipay/android/app/ctemplate/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/ctemplate/c;

    invoke-direct {v0}, Lcom/alipay/android/app/ctemplate/c;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/api/TemplateEngine;->templateService:Lcom/alipay/android/app/ctemplate/c;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/api/TemplateEngine;->templateService:Lcom/alipay/android/app/ctemplate/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/app/ctemplate/c;->a(Ljava/util/Map;Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public triggerTemplateUpdate(Landroid/content/res/Resources;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/api/TemplateEngine;->templateService:Lcom/alipay/android/app/ctemplate/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/ctemplate/c;

    invoke-direct {v0}, Lcom/alipay/android/app/ctemplate/c;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/api/TemplateEngine;->templateService:Lcom/alipay/android/app/ctemplate/c;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/api/TemplateEngine;->templateService:Lcom/alipay/android/app/ctemplate/c;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ctemplate/c;->a(Landroid/content/res/Resources;)V

    return-void
.end method
