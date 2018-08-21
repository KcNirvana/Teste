.class public Lcom/alipay/android/app/birdnest/a;
.super Ljava/lang/Object;
.source "FlybirdRuntime.java"


# static fields
.field private static k:Lcom/alipay/android/app/birdnest/a;


# instance fields
.field private a:Lcom/alipay/android/app/template/ITemplateClickCallback;

.field private b:Lcom/alipay/android/app/template/FBContext;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/alipay/android/app/template/FBContext;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/android/app/birdnest/service/a;

.field private e:Lcom/alipay/android/app/template/FBPluginFactory;

.field private f:Lcom/alipay/android/app/template/TemplatePasswordService;

.field private g:Lcom/alipay/android/app/ui/a/a/a;

.field private h:Lcom/alipay/android/app/birdnest/service/a;

.field private i:I

.field private j:I

.field private final l:Lcom/alipay/birdnest/api/BirdNestEngine$f;

.field private m:Lcom/alipay/birdnest/api/BirdNestEngine;

.field private n:Lcom/alipay/birdnest/api/BirdNestEngine$j;

.field private o:Lcom/alipay/birdnest/api/BirdNestEngine$c;

.field private p:Lcom/alipay/android/app/template/provider/APResourceProvider;

.field private q:Lcom/alipay/birdnest/api/BirdNestEngine$i;

.field private r:Lcom/alipay/birdnest/api/BirdNestEngine$l;

.field private s:Lcom/alipay/android/app/template/provider/SightPlayViewProvider;

.field private t:Lcom/alipay/birdnest/api/BirdNestEngine$b;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/birdnest/a;->a:Lcom/alipay/android/app/template/ITemplateClickCallback;

    iput-object v1, p0, Lcom/alipay/android/app/birdnest/a;->b:Lcom/alipay/android/app/template/FBContext;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/a;->c:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/alipay/android/app/birdnest/a;->d:Lcom/alipay/android/app/birdnest/service/a;

    iput-object v1, p0, Lcom/alipay/android/app/birdnest/a;->e:Lcom/alipay/android/app/template/FBPluginFactory;

    iput-object v1, p0, Lcom/alipay/android/app/birdnest/a;->f:Lcom/alipay/android/app/template/TemplatePasswordService;

    iput-object v1, p0, Lcom/alipay/android/app/birdnest/a;->g:Lcom/alipay/android/app/ui/a/a/a;

    iput-object v1, p0, Lcom/alipay/android/app/birdnest/a;->h:Lcom/alipay/android/app/birdnest/service/a;

    iput v2, p0, Lcom/alipay/android/app/birdnest/a;->i:I

    iput v2, p0, Lcom/alipay/android/app/birdnest/a;->j:I

    new-instance v0, Lcom/alipay/android/app/birdnest/j;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/birdnest/j;-><init>(Lcom/alipay/android/app/birdnest/a;)V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/a;->l:Lcom/alipay/birdnest/api/BirdNestEngine$f;

    iput-object v1, p0, Lcom/alipay/android/app/birdnest/a;->m:Lcom/alipay/birdnest/api/BirdNestEngine;

    return-void
.end method

.method public static a()Lcom/alipay/android/app/birdnest/a;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/birdnest/a;->k:Lcom/alipay/android/app/birdnest/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/birdnest/a;

    invoke-direct {v0}, Lcom/alipay/android/app/birdnest/a;-><init>()V

    sput-object v0, Lcom/alipay/android/app/birdnest/a;->k:Lcom/alipay/android/app/birdnest/a;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/birdnest/a;->k:Lcom/alipay/android/app/birdnest/a;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/birdnest/a;Lcom/alipay/android/app/template/ITemplateClickCallback;)Lcom/alipay/android/app/template/ITemplateClickCallback;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/birdnest/a;->a:Lcom/alipay/android/app/template/ITemplateClickCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/birdnest/a;)Lcom/alipay/android/app/ui/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->g:Lcom/alipay/android/app/ui/a/a/a;

    return-object v0
.end method

.method private b(I)Lcom/alipay/android/app/template/FBPluginFactory;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->e:Lcom/alipay/android/app/template/FBPluginFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/birdnest/n;

    invoke-direct {v0}, Lcom/alipay/android/app/birdnest/n;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/a;->e:Lcom/alipay/android/app/template/FBPluginFactory;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->e:Lcom/alipay/android/app/template/FBPluginFactory;

    check-cast v0, Lcom/alipay/android/app/birdnest/n;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/birdnest/n;->a(I)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->e:Lcom/alipay/android/app/template/FBPluginFactory;

    return-object v0
.end method

.method private b()Lcom/alipay/birdnest/api/BirdNestEngine$j;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->n:Lcom/alipay/birdnest/api/BirdNestEngine$j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/birdnest/g;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/birdnest/g;-><init>(Lcom/alipay/android/app/birdnest/a;)V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/a;->n:Lcom/alipay/birdnest/api/BirdNestEngine$j;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->n:Lcom/alipay/birdnest/api/BirdNestEngine$j;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    iget v0, p0, Lcom/alipay/android/app/birdnest/a;->i:I

    if-gez v0, :cond_0

    const-string/jumbo v0, "alipay_msp_tag_view_holder"

    const-string/jumbo v1, "string"

    const-string/jumbo v2, "com.alipay.android.app.template"

    invoke-static {p1, v0, v1, v2}, Lcom/alipay/android/app/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/birdnest/a;->i:I

    :cond_0
    iget v0, p0, Lcom/alipay/android/app/birdnest/a;->j:I

    if-gez v0, :cond_1

    const-string/jumbo v0, "tag_view_nav"

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "com.alipay.android.app.template"

    invoke-static {p1, v0, v1, v2}, Lcom/alipay/android/app/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/birdnest/a;->j:I

    :cond_1
    return-void
.end method

.method private c()Lcom/alipay/birdnest/api/BirdNestEngine$c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->o:Lcom/alipay/birdnest/api/BirdNestEngine$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/birdnest/h;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/birdnest/h;-><init>(Lcom/alipay/android/app/birdnest/a;)V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/a;->o:Lcom/alipay/birdnest/api/BirdNestEngine$c;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->o:Lcom/alipay/birdnest/api/BirdNestEngine$c;

    return-object v0
.end method

.method private c(I)V
    .locals 1

    if-lez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->m:Lcom/alipay/birdnest/api/BirdNestEngine;

    invoke-virtual {v0, p1}, Lcom/alipay/birdnest/api/BirdNestEngine;->a(I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/a;->a:Lcom/alipay/android/app/template/ITemplateClickCallback;

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/plugin/b;->resetResource()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private d()Lcom/alipay/birdnest/api/BirdNestEngine$h;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->p:Lcom/alipay/android/app/template/provider/APResourceProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/template/provider/APResourceProvider;

    invoke-direct {v0}, Lcom/alipay/android/app/template/provider/APResourceProvider;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/a;->p:Lcom/alipay/android/app/template/provider/APResourceProvider;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->p:Lcom/alipay/android/app/template/provider/APResourceProvider;

    return-object v0
.end method

.method private e()Lcom/alipay/birdnest/api/BirdNestEngine$e;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->p:Lcom/alipay/android/app/template/provider/APResourceProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/template/provider/APResourceProvider;

    invoke-direct {v0}, Lcom/alipay/android/app/template/provider/APResourceProvider;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/a;->p:Lcom/alipay/android/app/template/provider/APResourceProvider;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->p:Lcom/alipay/android/app/template/provider/APResourceProvider;

    return-object v0
.end method

.method private f()Lcom/alipay/birdnest/api/BirdNestEngine$i;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->q:Lcom/alipay/birdnest/api/BirdNestEngine$i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/birdnest/i;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/birdnest/i;-><init>(Lcom/alipay/android/app/birdnest/a;)V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/a;->q:Lcom/alipay/birdnest/api/BirdNestEngine$i;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->q:Lcom/alipay/birdnest/api/BirdNestEngine$i;

    return-object v0
.end method

.method private g()Lcom/alipay/birdnest/api/BirdNestEngine$l;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->r:Lcom/alipay/birdnest/api/BirdNestEngine$l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/birdnest/k;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/birdnest/k;-><init>(Lcom/alipay/android/app/birdnest/a;)V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/a;->r:Lcom/alipay/birdnest/api/BirdNestEngine$l;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->r:Lcom/alipay/birdnest/api/BirdNestEngine$l;

    return-object v0
.end method

.method private h()Lcom/alipay/birdnest/api/BirdNestEngine$k;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->s:Lcom/alipay/android/app/template/provider/SightPlayViewProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/template/provider/SightPlayViewProvider;

    invoke-direct {v0}, Lcom/alipay/android/app/template/provider/SightPlayViewProvider;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/a;->s:Lcom/alipay/android/app/template/provider/SightPlayViewProvider;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->s:Lcom/alipay/android/app/template/provider/SightPlayViewProvider;

    return-object v0
.end method

.method private i()Lcom/alipay/birdnest/api/BirdNestEngine$b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->t:Lcom/alipay/birdnest/api/BirdNestEngine$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/birdnest/c;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/birdnest/c;-><init>(Lcom/alipay/android/app/birdnest/a;)V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/a;->t:Lcom/alipay/birdnest/api/BirdNestEngine$b;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->t:Lcom/alipay/birdnest/api/BirdNestEngine$b;

    return-object v0
.end method

.method private j()Lcom/alipay/birdnest/api/BirdNestEngine$d;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->p:Lcom/alipay/android/app/template/provider/APResourceProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/template/provider/APResourceProvider;

    invoke-direct {v0}, Lcom/alipay/android/app/template/provider/APResourceProvider;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/a;->p:Lcom/alipay/android/app/template/provider/APResourceProvider;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->p:Lcom/alipay/android/app/template/provider/APResourceProvider;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;Landroid/app/Activity;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;Landroid/view/View;I)Landroid/view/View;
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/a;->b:Lcom/alipay/android/app/template/FBContext;

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/alipay/android/app/birdnest/a;->b(I)Lcom/alipay/android/app/template/FBPluginFactory;

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->b:Lcom/alipay/android/app/template/FBContext;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBContext;->getAutoFocusable()Lcom/alipay/android/app/template/FBFocusable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/alipay/android/app/birdnest/e;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/app/birdnest/e;-><init>(Lcom/alipay/android/app/birdnest/a;Lcom/alipay/android/app/template/FBFocusable;)V

    const-wide/16 v6, 0x2bc

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->b:Lcom/alipay/android/app/template/FBContext;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBContext;->getContentView()Landroid/view/View;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->b:Lcom/alipay/android/app/template/FBContext;

    const-string/jumbo v2, "#navTxtM"

    invoke-interface {v0, v2}, Lcom/alipay/android/app/template/FBContext;->queryView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->b:Lcom/alipay/android/app/template/FBContext;

    const-string/jumbo v2, "#iNavTxtM"

    invoke-interface {v0, v2}, Lcom/alipay/android/app/template/FBContext;->queryView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    :cond_1
    const/4 v2, 0x0

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_7

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v2, "view_title_id"

    const-string/jumbo v3, "id"

    const-string/jumbo v6, "com.alipay.android.app"

    invoke-static {p6, v2, v3, v6}, Lcom/alipay/android/app/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->c:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alipay/android/app/birdnest/a;->b:Lcom/alipay/android/app/template/FBContext;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v3, "samsung"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "GT-N7100"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "4.4.2"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "4.4.4"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "K-Touch E806"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/alipay/android/app/birdnest/a;->b:Lcom/alipay/android/app/template/FBContext;

    invoke-interface {v3}, Lcom/alipay/android/app/template/FBContext;->isFullscreen()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_6

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Lcom/alipay/android/app/birdnest/a/b;->a(Landroid/view/View;F)V

    :goto_3
    const-string/jumbo v0, "tag_view_nav"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/alipay/android/app/birdnest/a;->b:Lcom/alipay/android/app/template/FBContext;

    invoke-interface {v2}, Lcom/alipay/android/app/template/FBContext;->isFullscreen()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const-string/jumbo v0, "alipay_msp_tag_view_holder"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/alipay/android/app/birdnest/a;->b:Lcom/alipay/android/app/template/FBContext;

    invoke-interface {v2}, Lcom/alipay/android/app/template/FBContext;->getBodyView()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v0, v1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    const/4 v1, 0x4

    const-string/jumbo v4, "phonecashier"

    const-string/jumbo v5, "MspAssistUtil.generateView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "generateViewTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "msms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v5, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->b:Lcom/alipay/android/app/template/FBContext;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBContext;->getBodyOpacity()F

    move-result v0

    invoke-static {v1, v0}, Lcom/alipay/android/app/birdnest/a/b;->a(Landroid/view/View;F)V

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public a(Lcom/alipay/android/app/template/Builder;)Lcom/alipay/android/app/template/FBContext;
    .locals 17

    new-instance v16, Lcom/alipay/birdnest/api/BirdNestEngine$g;

    invoke-direct/range {v16 .. v16}, Lcom/alipay/birdnest/api/BirdNestEngine$g;-><init>()V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/android/app/template/Builder;->tplId:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/android/app/template/Builder;->tplHtml:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->f:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/android/app/template/Builder;->tplJson:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->g:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/android/app/template/Builder;->data:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->h:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/android/app/template/Builder;->elementEventHandler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/alipay/android/app/template/EventHandlerWrapper;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/android/app/template/Builder;->elementEventHandler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/template/EventHandlerWrapper;-><init>(Lcom/alipay/android/app/template/event/TElementEventHandler;)V

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->i:Lcom/alipay/android/app/template/EventHandler;

    :cond_0
    move-object/from16 v0, p1

    iget v1, v0, Lcom/alipay/android/app/template/Builder;->actionBarHeight:I

    move-object/from16 v0, v16

    iput v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->j:I

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/android/app/template/Builder;->businessId:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->k:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/android/app/template/Builder;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->l:Landroid/app/Activity;

    const/4 v1, 0x0

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->n:Landroid/view/View;

    const/4 v1, 0x0

    move-object/from16 v0, v16

    iput-boolean v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->o:Z

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/android/app/template/Builder;->factory:Lcom/alipay/android/app/template/FBPluginFactory;

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->p:Lcom/alipay/android/app/template/FBPluginFactory;

    const/4 v1, 0x0

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->q:Lcom/alipay/android/app/template/JsPluginFactory;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/android/app/template/Builder;->callback:Lcom/alipay/android/app/template/OnLoadCallback;

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->r:Lcom/alipay/android/app/template/OnLoadCallback;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/android/app/template/Builder;->mKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->s:Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/android/app/template/Builder;->mPasswordService:Lcom/alipay/android/app/template/TemplatePasswordService;

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->t:Lcom/alipay/android/app/template/TemplatePasswordService;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/android/app/template/Builder;->bundleName:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->m:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/android/app/template/Builder;->appParams:Ljava/util/Map;

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->u:Ljava/util/Map;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/android/app/template/Builder;->eventTarget:Ljava/lang/Object;

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->v:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/android/app/template/Builder;->eventBridge:Lcom/alipay/android/app/template/FBBridge;

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->w:Lcom/alipay/android/app/template/FBBridge;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/android/app/template/Builder;->resourceClient:Lcom/alipay/android/app/template/FBResourceClient;

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->x:Lcom/alipay/android/app/template/FBResourceClient;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/android/app/template/Builder;->contextResources:Landroid/content/res/Resources;

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->y:Landroid/content/res/Resources;

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/alipay/android/app/template/Builder;->jsDebugger:Z

    move-object/from16 v0, v16

    iput-boolean v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->A:Z

    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/app/birdnest/a;->i()Lcom/alipay/birdnest/api/BirdNestEngine$b;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->z:Lcom/alipay/birdnest/api/BirdNestEngine$b;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "{}"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_1
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->g:Ljava/lang/String;

    const/4 v1, 0x1

    move v3, v1

    move-object v4, v2

    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->c:Lcom/alipay/android/app/template/FBResourceClient$Type;

    sget-object v5, Lcom/alipay/android/app/template/FBResourceClient$Type;->MAIN_FRAME:Lcom/alipay/android/app/template/FBResourceClient$Type;

    if-ne v1, v5, :cond_9

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->u:Ljava/util/Map;

    if-eqz v1, :cond_9

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->x:Lcom/alipay/android/app/template/FBResourceClient;

    if-eqz v1, :cond_9

    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->u:Ljava/util/Map;

    const-string/jumbo v5, "indexUrl"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->x:Lcom/alipay/android/app/template/FBResourceClient;

    sget-object v5, Lcom/alipay/android/app/template/FBResourceClient$Type;->MAIN_FRAME:Lcom/alipay/android/app/template/FBResourceClient$Type;

    invoke-interface {v2, v1, v5}, Lcom/alipay/android/app/template/FBResourceClient;->shouldInterceptResource(Ljava/lang/String;Lcom/alipay/android/app/template/FBResourceClient$Type;)Ljava/lang/Object;

    move-result-object v2

    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_9

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_5

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->f:Ljava/lang/String;

    const/16 v3, 0x15

    move v15, v3

    :goto_1
    if-nez v2, :cond_8

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/alipay/android/app/template/Builder;->useQuickPayTemplateManager:Z

    if-nez v2, :cond_8

    :try_start_0
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->l:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/app/birdnest/a;->m:Lcom/alipay/birdnest/api/BirdNestEngine;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/android/app/template/Builder;->tplId:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/alipay/birdnest/api/BirdNestEngine;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/android/app/ctemplate/model/Template;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v2, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    move-object v14, v1

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/birdnest/a;->m:Lcom/alipay/birdnest/api/BirdNestEngine;

    if-nez v1, :cond_4

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/android/app/template/Builder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/birdnest/api/BirdNestEngine;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/alipay/birdnest/api/BirdNestEngine$a;

    sget-boolean v2, Lcom/alipay/android/app/pay/a;->h:Z

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alipay/android/app/template/Builder;->context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/app/birdnest/a;->b()Lcom/alipay/birdnest/api/BirdNestEngine$j;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/app/birdnest/a;->c()Lcom/alipay/birdnest/api/BirdNestEngine$c;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/app/birdnest/a;->d()Lcom/alipay/birdnest/api/BirdNestEngine$h;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/app/birdnest/a;->e()Lcom/alipay/birdnest/api/BirdNestEngine$e;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/app/birdnest/a;->f()Lcom/alipay/birdnest/api/BirdNestEngine$i;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/android/app/birdnest/a;->l:Lcom/alipay/birdnest/api/BirdNestEngine$f;

    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/app/birdnest/a;->g()Lcom/alipay/birdnest/api/BirdNestEngine$l;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/app/birdnest/a;->h()Lcom/alipay/birdnest/api/BirdNestEngine$k;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/app/birdnest/a;->i()Lcom/alipay/birdnest/api/BirdNestEngine$b;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/app/birdnest/a;->j()Lcom/alipay/birdnest/api/BirdNestEngine$d;

    move-result-object v13

    invoke-direct/range {v1 .. v13}, Lcom/alipay/birdnest/api/BirdNestEngine$a;-><init>(ZLandroid/content/Context;Lcom/alipay/birdnest/api/BirdNestEngine$j;Lcom/alipay/birdnest/api/BirdNestEngine$c;Lcom/alipay/birdnest/api/BirdNestEngine$h;Lcom/alipay/birdnest/api/BirdNestEngine$e;Lcom/alipay/birdnest/api/BirdNestEngine$i;Lcom/alipay/birdnest/api/BirdNestEngine$f;Lcom/alipay/birdnest/api/BirdNestEngine$l;Lcom/alipay/birdnest/api/BirdNestEngine$k;Lcom/alipay/birdnest/api/BirdNestEngine$b;Lcom/alipay/birdnest/api/BirdNestEngine$d;)V

    :try_start_1
    invoke-static {v1}, Lcom/alipay/birdnest/api/BirdNestEngine;->a(Lcom/alipay/birdnest/api/BirdNestEngine$a;)Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/android/app/birdnest/a;->m:Lcom/alipay/birdnest/api/BirdNestEngine;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/app/birdnest/a;->m:Lcom/alipay/birdnest/api/BirdNestEngine;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v14, v15}, Lcom/alipay/birdnest/api/BirdNestEngine;->a(Lcom/alipay/birdnest/api/BirdNestEngine$g;Ljava/lang/String;I)Lcom/alipay/android/app/template/FBContext;

    move-result-object v1

    return-object v1

    :cond_5
    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->g:Ljava/lang/String;

    const/16 v3, 0x16

    const-string/jumbo v4, "\"tplVersion\""

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->g:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    move v15, v3

    goto/16 :goto_1

    :catch_0
    move-exception v4

    :cond_7
    move v15, v3

    goto/16 :goto_1

    :catch_1
    move-exception v2

    :cond_8
    move-object v14, v1

    goto/16 :goto_2

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    move v15, v3

    move-object v1, v4

    goto/16 :goto_1

    :cond_a
    move v3, v1

    move-object v4, v2

    goto/16 :goto_0
.end method

.method public a(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/android/app/b/e/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/birdnest/a;->c(I)V

    :goto_0
    return-void

    :cond_0
    if-lez p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->m:Lcom/alipay/birdnest/api/BirdNestEngine;

    invoke-virtual {v0, p1}, Lcom/alipay/birdnest/api/BirdNestEngine;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->b()Lcom/alipay/android/app/plugin/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/plugin/d;->buildFields()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/android/app/plugin/b;->getResources(Landroid/app/Activity;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->b()Lcom/alipay/android/app/plugin/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/app/plugin/d;->triggerTemplateUpdate(Landroid/content/res/Resources;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iput-object v2, p0, Lcom/alipay/android/app/birdnest/a;->a:Lcom/alipay/android/app/template/ITemplateClickCallback;

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/plugin/b;->resetResource()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    const/4 v3, 0x1

    const-string/jumbo v0, ""

    const-string/jumbo v1, "keyboard-lj"

    const-string/jumbo v2, "MspAssistUtil-hideKeyboard-enter"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/d;->b(I)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "keyboard-lj"

    const-string/jumbo v4, "MspAssistUtil-hideKeyboard-hide"

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;->hideKeyboard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/widget/EditText;ZLandroid/view/View;Landroid/view/View;Z)V
    .locals 7

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->d:Lcom/alipay/android/app/birdnest/service/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/birdnest/service/a;

    invoke-direct {v0}, Lcom/alipay/android/app/birdnest/service/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/a;->d:Lcom/alipay/android/app/birdnest/service/a;

    :cond_0
    if-eqz p2, :cond_1

    sget-object v2, Lcom/alipay/android/app/template/KeyboardType;->num:Lcom/alipay/android/app/template/KeyboardType;

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->d:Lcom/alipay/android/app/birdnest/service/a;

    const/16 v6, 0xc8

    move-object v1, p1

    move-object v3, p4

    move-object v4, p3

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/app/birdnest/service/a;->showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z

    return-void

    :cond_1
    sget-object v2, Lcom/alipay/android/app/template/KeyboardType;->text:Lcom/alipay/android/app/template/KeyboardType;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->a:Lcom/alipay/android/app/template/ITemplateClickCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    const-string/jumbo v3, "phonecashier"

    const-string/jumbo v4, "MspAssistUtil.backToFlyBird"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "backToFlyBird.isJson:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/birdnest/a;->a:Lcom/alipay/android/app/template/ITemplateClickCallback;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/android/app/template/ITemplateClickCallback;->onClickCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v0, v3

    if-ltz v0, :cond_2

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    aget-object v6, v5, v1

    aget-object v5, v5, v8

    invoke-virtual {v2, v6, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "phonecashier"

    const-string/jumbo v1, "MspAssistUtil.backToFlyBird"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "backToFlyBird.notJson:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v0, v1, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->a:Lcom/alipay/android/app/template/ITemplateClickCallback;

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/ITemplateClickCallback;->onClickCallback(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/view/View;)V
    .locals 4

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/FBContext;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "deferDownload"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "deferDownloadFilter"

    new-instance v3, Lcom/alipay/android/app/birdnest/f;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/birdnest/f;-><init>(Lcom/alipay/android/app/birdnest/a;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/FBContext;->destroy(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x4

    const-string/jumbo v1, ""

    const-string/jumbo v2, "MspAssistUtil::loadTemplate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/birdnest/b;

    invoke-direct {v1, p0, p6, p1}, Lcom/alipay/android/app/birdnest/b;-><init>(Lcom/alipay/android/app/birdnest/a;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;I)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->g:Lcom/alipay/android/app/ui/a/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/ui/a/a/a;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/a;->g:Lcom/alipay/android/app/ui/a/a/a;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->f:Lcom/alipay/android/app/template/TemplatePasswordService;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/android/app/birdnest/d;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/birdnest/d;-><init>(Lcom/alipay/android/app/birdnest/a;)V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/a;->f:Lcom/alipay/android/app/template/TemplatePasswordService;

    :cond_1
    new-instance v0, Lcom/alipay/android/app/birdnest/service/a;

    invoke-direct {v0}, Lcom/alipay/android/app/birdnest/service/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/a;->h:Lcom/alipay/android/app/birdnest/service/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x4

    const-string/jumbo v4, ""

    const-string/jumbo v5, "MspAssistUtil::loadTemplate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "call CdynamicTemplateService.handleBirdResponse() start:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v4, v5, v6}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->b()Lcom/alipay/android/app/plugin/d;

    const-string/jumbo v5, "opt_defer_download"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->b()Lcom/alipay/android/app/plugin/d;

    move-result-object v5

    invoke-interface {v5, v0, p4, v4}, Lcom/alipay/android/app/plugin/d;->handleBirdResponse(Ljava/util/Map;Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const/4 v4, 0x4

    const-string/jumbo v5, ""

    const-string/jumbo v6, "MspAssistUtil::loadTemplate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "call CdynamicTemplateService.handleBirdResponse() end:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "template"

    const-string/jumbo v5, "TemplateHandleBirdResponse"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/alipay/android/app/statistic/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "CdynamicTemplateService::handleBirdResponse failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->b()Lcom/alipay/android/app/plugin/d;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/alipay/android/app/plugin/d;->getTemplateData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    const-string/jumbo v3, ""

    const-string/jumbo v4, "MspAssistUtil::loadTemplate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "create FBContext start:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "var flybird = flybird || {}; flybird.rpcData ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/app/template/Builder;

    invoke-direct {v4, p4}, Lcom/alipay/android/app/template/Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/alipay/android/app/birdnest/a;->b(I)Lcom/alipay/android/app/template/FBPluginFactory;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/template/Builder;->setPluginFactory(Lcom/alipay/android/app/template/FBPluginFactory;)Lcom/alipay/android/app/template/Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/alipay/android/app/template/Builder;->setTemplateId(Ljava/lang/String;)Lcom/alipay/android/app/template/Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alipay/android/app/template/Builder;->setDataContent(Ljava/lang/String;)Lcom/alipay/android/app/template/Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/template/Builder;->setTElementEventHandler(Lcom/alipay/android/app/template/event/TElementEventHandler;)Lcom/alipay/android/app/template/Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/android/app/birdnest/a;->h:Lcom/alipay/android/app/birdnest/service/a;

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/template/Builder;->setmKeyboardService(Lcom/alipay/android/app/template/TemplateKeyboardService;)Lcom/alipay/android/app/template/Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/android/app/birdnest/a;->f:Lcom/alipay/android/app/template/TemplatePasswordService;

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/template/Builder;->setmPasswordService(Lcom/alipay/android/app/template/TemplatePasswordService;)Lcom/alipay/android/app/template/Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/Builder;->setTemplateJson(Ljava/lang/String;)Lcom/alipay/android/app/template/Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/Builder;->setUseQuickPayTemplateManager(Z)Lcom/alipay/android/app/template/Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/Builder;->setFlybirdRuntime(Lcom/alipay/android/app/birdnest/a;)Lcom/alipay/android/app/template/Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/Builder;->create()Lcom/alipay/android/app/template/FBContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/a;->b:Lcom/alipay/android/app/template/FBContext;

    const-string/jumbo v0, "template"

    const-string/jumbo v1, "CreateFBContext"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string/jumbo v1, ""

    const-string/jumbo v2, "MspAssistUtil::loadTemplate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "create FBContext end:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->b:Lcom/alipay/android/app/template/FBContext;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/view/View;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/birdnest/a;->b(Landroid/content/Context;)V

    iget v0, p0, Lcom/alipay/android/app/birdnest/a;->i:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/ITemplateDisposable;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/alipay/android/app/template/ITemplateDisposable;->hiddenKeyboardService(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {v0, p1, v2, v3}, Lcom/alipay/android/app/template/ITemplateDisposable;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/FBContext;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "{}"

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/FBContext;->reloadData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
