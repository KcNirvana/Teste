.class public Lcom/alipay/android/app/template/JSPluginManager;
.super Ljava/lang/Object;
.source "JSPluginManager.java"


# static fields
.field private static sInstanse:Lcom/alipay/android/app/template/JSPluginManager;


# instance fields
.field private mPluginFactorys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/template/JsPluginFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/template/JSPlugin;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginsMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginFactorys:Ljava/util/List;

    return-void
.end method

.method public static getInstanse()Lcom/alipay/android/app/template/JSPluginManager;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/template/JSPluginManager;->sInstanse:Lcom/alipay/android/app/template/JSPluginManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/template/JSPluginManager;

    invoke-direct {v0}, Lcom/alipay/android/app/template/JSPluginManager;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/JSPluginManager;->sInstanse:Lcom/alipay/android/app/template/JSPluginManager;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/JSPluginManager;->sInstanse:Lcom/alipay/android/app/template/JSPluginManager;

    return-object v0
.end method

.method public static makeName(Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/alipay/android/app/template/JSPluginManager$1;->$SwitchMap$com$alipay$android$app$template$JSPlugin$FromCall:[I

    invoke-virtual {p0}, Lcom/alipay/android/app/template/JSPlugin$FromCall;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object p1

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getProp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setProp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invoke_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addJsPluginFactory(Lcom/alipay/android/app/template/JsPluginFactory;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginFactorys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginFactorys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public cleanUpContextHandlePlugin(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public containsInvoke(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/alipay/android/app/template/JSPlugin$FromCall;->INVOKE:Lcom/alipay/android/app/template/JSPlugin$FromCall;

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/alipay/android/app/template/JSPluginManager;->getRegisteredPlugin(Landroid/content/Context;Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;Z)Lcom/alipay/android/app/template/JSPlugin;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public executePlugin(Landroid/content/Context;Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/alipay/android/app/template/JSPluginManager;->getRegisteredPlugin(Landroid/content/Context;Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;Z)Lcom/alipay/android/app/template/JSPlugin;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "The plugin [%s] for context [%x] has not register!"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {v0, p2, p3, p4}, Lcom/alipay/android/app/template/JSPlugin;->execute(Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "An Error occur while execute plugin [%s]!"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRegisteredPlugin(Landroid/content/Context;Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;Z)Lcom/alipay/android/app/template/JSPlugin;
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p2, p3}, Lcom/alipay/android/app/template/JSPluginManager;->makeName(Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/JSPlugin;

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/JSPlugin;

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginFactorys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/JsPluginFactory;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/android/app/template/JsPluginFactory;->createJsPlugin(Landroid/content/Context;Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;)Lcom/alipay/android/app/template/JSPlugin;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2, p3, v0}, Lcom/alipay/android/app/template/JSPluginManager;->registerJSPlugin(Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;Lcom/alipay/android/app/template/JSPlugin;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public performGetProp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/alipay/android/app/template/JSPlugin$FromCall;->GET_PROP:Lcom/alipay/android/app/template/JSPlugin$FromCall;

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/alipay/android/app/template/JSPluginManager;->executePlugin(Landroid/content/Context;Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public performInvoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/template/JSPlugin$FromCall;->INVOKE:Lcom/alipay/android/app/template/JSPlugin$FromCall;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/alipay/android/app/template/JSPluginManager;->executePlugin(Landroid/content/Context;Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public performSetProp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/template/JSPlugin$FromCall;->SET_PROP:Lcom/alipay/android/app/template/JSPlugin$FromCall;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/alipay/android/app/template/JSPluginManager;->executePlugin(Landroid/content/Context;Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public registerJSPlugin(Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;Lcom/alipay/android/app/template/JSPlugin;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/alipay/android/app/template/JSPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/alipay/android/app/template/JSPluginManager;->getRegisteredPlugin(Landroid/content/Context;Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;Z)Lcom/alipay/android/app/template/JSPlugin;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/alipay/android/app/template/JSPlugin;->getContextHashCode()I

    move-result v1

    iget-object v0, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-static {p1, p2}, Lcom/alipay/android/app/template/JSPluginManager;->makeName(Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_1
.end method

.method public registerJSPlugin(Lcom/alipay/android/app/template/JSPlugin;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "the plugin should not null!"

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/android/app/template/JSPlugin;->pluginName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "the plugin name should not be empty!"

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/android/app/template/JSPlugin;->pluginName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/template/JSPlugin$FromCall;->GET_PROP:Lcom/alipay/android/app/template/JSPlugin$FromCall;

    invoke-virtual {p0, v1, v0, p1}, Lcom/alipay/android/app/template/JSPluginManager;->registerJSPlugin(Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;Lcom/alipay/android/app/template/JSPlugin;)V

    sget-object v1, Lcom/alipay/android/app/template/JSPlugin$FromCall;->SET_PROP:Lcom/alipay/android/app/template/JSPlugin$FromCall;

    invoke-virtual {p0, v1, v0, p1}, Lcom/alipay/android/app/template/JSPluginManager;->registerJSPlugin(Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;Lcom/alipay/android/app/template/JSPlugin;)V

    sget-object v1, Lcom/alipay/android/app/template/JSPlugin$FromCall;->INVOKE:Lcom/alipay/android/app/template/JSPlugin$FromCall;

    invoke-virtual {p0, v1, v0, p1}, Lcom/alipay/android/app/template/JSPluginManager;->registerJSPlugin(Lcom/alipay/android/app/template/JSPlugin$FromCall;Ljava/lang/String;Lcom/alipay/android/app/template/JSPlugin;)V

    goto :goto_0
.end method

.method public removeJsPluginFactory(Lcom/alipay/android/app/template/JsPluginFactory;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginFactorys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginFactorys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterJSPlugin(ILjava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "the plugin name should not be empty!"

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/JSPluginManager;->mPluginsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
