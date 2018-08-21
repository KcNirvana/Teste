.class public Lcom/alibaba/wireless/security/framework/a;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/app/Activity;

.field c:Lcom/alibaba/wireless/security/framework/a/d;

.field d:Lcom/alibaba/wireless/security/framework/a/d;

.field e:Landroid/app/Application;

.field f:Landroid/app/Instrumentation;

.field g:Lcom/alibaba/wireless/security/framework/d;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/Activity;Landroid/app/Application;Lcom/alibaba/wireless/security/framework/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/wireless/security/framework/a;->e:Landroid/app/Application;

    iput-object p4, p0, Lcom/alibaba/wireless/security/framework/a;->g:Lcom/alibaba/wireless/security/framework/d;

    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->f:Landroid/app/Instrumentation;

    invoke-static {p1}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    invoke-static {p2}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->d:Lcom/alibaba/wireless/security/framework/a/d;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 7

    const/16 v2, 0xb

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v1, "mInstrumentation"

    invoke-virtual {v0, v1}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/a;->d:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v2, "attach"

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v6, "mMainThread"

    invoke-virtual {v5, v6}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lcom/alibaba/wireless/security/framework/b;

    iget-object v6, p0, Lcom/alibaba/wireless/security/framework/a;->g:Lcom/alibaba/wireless/security/framework/d;

    invoke-direct {v5, v0, v6}, Lcom/alibaba/wireless/security/framework/b;-><init>(Landroid/app/Instrumentation;Lcom/alibaba/wireless/security/framework/d;)V

    aput-object v5, v3, v4

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mToken"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mEmbeddedID"

    invoke-virtual {v0, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v4

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->e:Landroid/app/Application;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    :goto_2
    aput-object v0, v3, v4

    const/4 v0, 0x6

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x7

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mActivityInfo"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x8

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x9

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xa

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mEmbeddedID"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xb

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xc

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mLastNonConfigurationChildInstances"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xd

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mCurrentConfig"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->d:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v1, "mWindow"

    iget-object v2, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;

    move-result-object v0

    const-string/jumbo v1, "setOuterContext"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/framework/a/e; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/a/e;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mEmbeddedID"

    invoke-virtual {v0, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->e:Landroid/app/Application;

    goto/16 :goto_2

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_7

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_7

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/a;->d:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v2, "attach"

    const/16 v3, 0xd

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v6, "mMainThread"

    invoke-virtual {v5, v6}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lcom/alibaba/wireless/security/framework/b;

    iget-object v6, p0, Lcom/alibaba/wireless/security/framework/a;->g:Lcom/alibaba/wireless/security/framework/d;

    invoke-direct {v5, v0, v6}, Lcom/alibaba/wireless/security/framework/b;-><init>(Landroid/app/Instrumentation;Lcom/alibaba/wireless/security/framework/d;)V

    aput-object v5, v3, v4

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mToken"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mEmbeddedID"

    invoke-virtual {v0, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_4
    aput-object v0, v3, v4

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->e:Landroid/app/Application;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    :goto_5
    aput-object v0, v3, v4

    const/4 v0, 0x6

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x7

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mActivityInfo"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x8

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x9

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xa

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mEmbeddedID"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xb

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xc

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mCurrentConfig"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mEmbeddedID"

    invoke-virtual {v0, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->e:Landroid/app/Application;

    goto :goto_5

    :cond_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/a;->d:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v2, "attach"

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v6, "mMainThread"

    invoke-virtual {v5, v6}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lcom/alibaba/wireless/security/framework/b;

    iget-object v6, p0, Lcom/alibaba/wireless/security/framework/a;->g:Lcom/alibaba/wireless/security/framework/d;

    invoke-direct {v5, v0, v6}, Lcom/alibaba/wireless/security/framework/b;-><init>(Landroid/app/Instrumentation;Lcom/alibaba/wireless/security/framework/d;)V

    aput-object v5, v3, v4

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mToken"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mEmbeddedID"

    invoke-virtual {v0, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_6
    aput-object v0, v3, v4

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->e:Landroid/app/Application;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    :goto_7
    aput-object v0, v3, v4

    const/4 v0, 0x6

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x7

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mActivityInfo"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x8

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x9

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xa

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mEmbeddedID"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xb

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xc

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mCurrentConfig"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xd

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mVoiceInteractor"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mEmbeddedID"

    invoke-virtual {v0, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->e:Landroid/app/Application;

    goto :goto_7

    :cond_a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/a;->d:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v2, "attach"

    const/16 v3, 0xf

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v6, "mMainThread"

    invoke-virtual {v5, v6}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lcom/alibaba/wireless/security/framework/b;

    iget-object v6, p0, Lcom/alibaba/wireless/security/framework/a;->g:Lcom/alibaba/wireless/security/framework/d;

    invoke-direct {v5, v0, v6}, Lcom/alibaba/wireless/security/framework/b;-><init>(Landroid/app/Instrumentation;Lcom/alibaba/wireless/security/framework/d;)V

    aput-object v5, v3, v4

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mToken"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mEmbeddedID"

    invoke-virtual {v0, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_8
    aput-object v0, v3, v4

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->e:Landroid/app/Application;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    :goto_9
    aput-object v0, v3, v4

    const/4 v0, 0x6

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x7

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mActivityInfo"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x8

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x9

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xa

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mEmbeddedID"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xb

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xc

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mCurrentConfig"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xd

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mReferrer"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xe

    iget-object v4, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mVoiceInteractor"

    invoke-virtual {v4, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;

    goto/16 :goto_3

    :cond_b
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->c:Lcom/alibaba/wireless/security/framework/a/d;

    const-string/jumbo v5, "mEmbeddedID"

    invoke-virtual {v0, v5}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_8

    :cond_c
    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->e:Landroid/app/Application;
    :try_end_1
    .catch Lcom/alibaba/wireless/security/framework/a/e; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->f:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->f:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/alibaba/wireless/security/framework/a/d;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->d:Lcom/alibaba/wireless/security/framework/a/d;

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/alibaba/wireless/security/framework/a;->b()Lcom/alibaba/wireless/security/framework/a/d;

    move-result-object v0

    const-string/jumbo v1, "onSaveInstanceState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->f:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/alibaba/wireless/security/framework/a;->b()Lcom/alibaba/wireless/security/framework/a/d;

    move-result-object v0

    const-string/jumbo v1, "onRestoreInstanceState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->f:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->f:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->f:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->f:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->f:Landroid/app/Instrumentation;

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public j()V
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/wireless/security/framework/a;->b()Lcom/alibaba/wireless/security/framework/a/d;

    move-result-object v0

    const-string/jumbo v1, "onPostResume"

    invoke-virtual {v0, v1}, Lcom/alibaba/wireless/security/framework/a/d;->c(Ljava/lang/String;)Lcom/alibaba/wireless/security/framework/a/d;

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onDetachedFromWindow()V

    return-void
.end method
