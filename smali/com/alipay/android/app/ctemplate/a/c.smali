.class public Lcom/alipay/android/app/ctemplate/a/c;
.super Ljava/lang/Object;
.source "TemplateSetting.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/ctemplate/c;->c()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "cashier_template_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "template"

    const-string/jumbo v3, "TplSettingPutStringEx"

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/ctemplate/c;->c()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "cashier_template_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a()Lcom/alipay/android/app/ctemplate/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "template"

    const-string/jumbo v3, "TplSettingGetStringEx"

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
