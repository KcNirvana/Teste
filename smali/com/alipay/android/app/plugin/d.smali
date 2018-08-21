.class public interface abstract Lcom/alipay/android/app/plugin/d;
.super Ljava/lang/Object;
.source "ITemplateEngine.java"


# virtual methods
.method public abstract buildFields()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/statistic/logfield/a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBirdParamsVersion()Ljava/lang/String;
.end method

.method public abstract getTemplateData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract handleBirdResponse(Ljava/util/Map;Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
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
.end method

.method public abstract triggerTemplateUpdate(Landroid/content/res/Resources;)V
.end method
