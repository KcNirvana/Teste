.class public Lcom/alipay/android/app/birdnest/n;
.super Ljava/lang/Object;
.source "MspPluginFactory.java"

# interfaces
.implements Lcom/alipay/android/app/template/FBPluginFactory;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/birdnest/n;->a:I

    return-void
.end method

.method public createPluginInstance(Landroid/content/Context;Lcom/alipay/android/app/template/FBPluginCtx;Ljava/util/Map;)Lcom/alipay/android/app/template/FBPlugin;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alipay/android/app/template/FBPluginCtx;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/android/app/template/FBPlugin;"
        }
    .end annotation

    const-string/jumbo v0, "type"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "MQPPayPwdView"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/alipay/android/app/birdnest/input/a;

    iget v1, p0, Lcom/alipay/android/app/birdnest/n;->a:I

    invoke-direct {v0, p1, p2, v1}, Lcom/alipay/android/app/birdnest/input/a;-><init>(Landroid/content/Context;Lcom/alipay/android/app/template/FBPluginCtx;I)V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "MQPPayGifView"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/android/app/birdnest/gifimage/b;

    invoke-direct {v0, p1, p2}, Lcom/alipay/android/app/birdnest/gifimage/b;-><init>(Landroid/content/Context;Lcom/alipay/android/app/template/FBPluginCtx;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
