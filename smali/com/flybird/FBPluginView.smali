.class public Lcom/flybird/FBPluginView;
.super Lcom/flybird/FBView;
.source "FBPluginView.java"


# instance fields
.field private mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFunctions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mPluginFactory:Lcom/alipay/android/app/template/FBPluginFactory;

.field private mStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public plugin:Lcom/alipay/android/app/template/FBPlugin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flybird/FBDocument;Lcom/alipay/android/app/template/FBPluginFactory;)V
    .locals 2

    new-instance v0, Lcom/flybird/FBEmbedView;

    invoke-direct {v0, p1}, Lcom/flybird/FBEmbedView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBPluginView;->mAttributes:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBPluginView;->mStyles:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBPluginView;->mFunctions:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBPluginView;->mEvents:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/flybird/FBPluginView;->mPluginFactory:Lcom/alipay/android/app/template/FBPluginFactory;

    iget-object v0, p0, Lcom/flybird/FBPluginView;->mPluginFactory:Lcom/alipay/android/app/template/FBPluginFactory;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "plugin factory shouldn\'t be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public getEncryptValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBPluginView;->plugin:Lcom/alipay/android/app/template/FBPlugin;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBPlugin;->getEncryptValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/flybird/FBView;->getEncryptValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onLoadFinish()V
    .locals 4

    invoke-virtual {p0}, Lcom/flybird/FBPluginView;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBPluginView;->plugin:Lcom/alipay/android/app/template/FBPlugin;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBPluginView;->mPluginFactory:Lcom/alipay/android/app/template/FBPluginFactory;

    iget-object v1, p0, Lcom/flybird/FBPluginView;->mDoc:Lcom/flybird/FBDocument;

    iget-object v1, v1, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/flybird/FBPluginView;->mDoc:Lcom/flybird/FBDocument;

    invoke-virtual {v2}, Lcom/flybird/FBDocument;->getPluginContext()Lcom/alipay/android/app/template/FBPluginCtx;

    move-result-object v2

    iget-object v3, p0, Lcom/flybird/FBPluginView;->mAttributes:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/android/app/template/FBPluginFactory;->createPluginInstance(Landroid/content/Context;Lcom/alipay/android/app/template/FBPluginCtx;Ljava/util/Map;)Lcom/alipay/android/app/template/FBPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/FBPluginView;->plugin:Lcom/alipay/android/app/template/FBPlugin;

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBPluginView;->plugin:Lcom/alipay/android/app/template/FBPlugin;

    if-nez v0, :cond_2

    const-string/jumbo v0, "FBView"

    const-string/jumbo v1, "createPluginInstance return null!!"

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/flybird/FBPluginView;->plugin:Lcom/alipay/android/app/template/FBPlugin;

    invoke-virtual {p0}, Lcom/flybird/FBPluginView;->getNode()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/app/template/FBPlugin;->setNode(J)V

    invoke-virtual {p0}, Lcom/flybird/FBPluginView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    instance-of v1, v0, Lcom/flybird/FBEmbedView;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/flybird/FBEmbedView;

    iget-object v1, p0, Lcom/flybird/FBPluginView;->plugin:Lcom/alipay/android/app/template/FBPlugin;

    invoke-virtual {v0, v1}, Lcom/flybird/FBEmbedView;->setPlugin(Lcom/alipay/android/app/template/FBPlugin;)V

    invoke-virtual {v0}, Lcom/flybird/FBEmbedView;->apply()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flybird/FBPluginView;->setInnerView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flybird/FBPluginView;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/flybird/FBPluginView;->updateAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/flybird/FBPluginView;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/flybird/FBPluginView;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/flybird/FBPluginView;->updateCSS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/flybird/FBPluginView;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/flybird/FBPluginView;->mFunctions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/flybird/FBPluginView;->updateFunc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/flybird/FBPluginView;->mFunctions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/flybird/FBPluginView;->mEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/flybird/FBPluginView;->updateEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/flybird/FBPluginView;->mEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_7
    invoke-super {p0}, Lcom/flybird/FBView;->onLoadFinish()V

    goto/16 :goto_0
.end method

.method public setRect(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBPluginView;->plugin:Lcom/alipay/android/app/template/FBPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBPluginView;->plugin:Lcom/alipay/android/app/template/FBPlugin;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/android/app/template/FBPlugin;->setRect(FFFF)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/flybird/FBView;->setRect(FFFF)V

    :cond_1
    return-void
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBPluginView;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/flybird/FBPluginView;->plugin:Lcom/alipay/android/app/template/FBPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBPluginView;->plugin:Lcom/alipay/android/app/template/FBPlugin;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/template/FBPlugin;->updateAttr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateAttr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBPluginView;->mStyles:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/flybird/FBPluginView;->plugin:Lcom/alipay/android/app/template/FBPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBPluginView;->plugin:Lcom/alipay/android/app/template/FBPlugin;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/template/FBPlugin;->updateCSS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/flybird/FBPluginView;->getInnerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/flybird/FBPluginView;->getInnerView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/flybird/FBEmbedView;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "visibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "visibility-display"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateCSS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBPluginView;->mEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/flybird/FBPluginView;->plugin:Lcom/alipay/android/app/template/FBPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBPluginView;->plugin:Lcom/alipay/android/app/template/FBPlugin;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/template/FBPlugin;->updateEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateFunc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBPluginView;->mFunctions:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/flybird/FBPluginView;->plugin:Lcom/alipay/android/app/template/FBPlugin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBPluginView;->plugin:Lcom/alipay/android/app/template/FBPlugin;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/template/FBPlugin;->updateFunc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateFunc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
