.class public Lcom/facebook/ads/internal/view/r;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/facebook/ads/internal/view/a;
.implements Lcom/facebook/ads/internal/view/f/b$c;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/r$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/ads/internal/s/c;

.field private final b:Lcom/facebook/ads/internal/adapters/b/q;

.field private final c:Lcom/facebook/ads/internal/adapters/b/n;

.field private final d:Lcom/facebook/ads/internal/adapters/b/b;

.field private e:I

.field private f:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/facebook/ads/AudienceNetworkActivity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/facebook/ads/internal/view/a$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/util/concurrent/Executor;

.field private final j:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

.field private k:Z

.field private l:Lcom/facebook/ads/internal/view/f/b;

.field private m:Z

.field private n:Lcom/facebook/ads/internal/adapters/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/adapters/b/q;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/facebook/ads/internal/w/b/p;->a:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/r;->i:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/internal/view/r$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/r$1;-><init>(Lcom/facebook/ads/internal/view/r;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/r;->j:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/r;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/r;->h:Lcom/facebook/ads/internal/view/a$a;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/r;->a:Lcom/facebook/ads/internal/s/c;

    iput-object p4, p0, Lcom/facebook/ads/internal/view/r;->b:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {p4}, Lcom/facebook/ads/internal/adapters/b/q;->j()Lcom/facebook/ads/internal/adapters/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/d;->j()Lcom/facebook/ads/internal/adapters/b/n;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/view/r;->c:Lcom/facebook/ads/internal/adapters/b/n;

    invoke-virtual {p4}, Lcom/facebook/ads/internal/adapters/b/q;->i()Lcom/facebook/ads/internal/adapters/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/view/r;->d:Lcom/facebook/ads/internal/adapters/b/b;

    return-void
.end method

.method private a(Lcom/facebook/ads/internal/view/c/a;)Lcom/facebook/ads/internal/view/component/a;
    .locals 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v10, Lcom/facebook/ads/internal/view/component/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/r;->f:Landroid/content/Context;

    sget-object v0, Lcom/facebook/ads/internal/view/i/b/aa;->e:Lcom/facebook/ads/internal/view/i/b/aa;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/b/aa;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/r;->d:Lcom/facebook/ads/internal/adapters/b/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/b/b;->a()Lcom/facebook/ads/internal/adapters/b/h;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/internal/view/r;->a:Lcom/facebook/ads/internal/s/c;

    iget-object v7, p0, Lcom/facebook/ads/internal/view/r;->h:Lcom/facebook/ads/internal/view/a$a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/c/a;->getViewabilityChecker()Lcom/facebook/ads/internal/x/a;

    move-result-object v8

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/c/a;->getTouchDataRecorder()Lcom/facebook/ads/internal/w/b/w;

    move-result-object v9

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/internal/view/component/a;-><init>(Landroid/content/Context;ZZLjava/lang/String;Lcom/facebook/ads/internal/adapters/b/h;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/w/b/w;)V

    return-object v10
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/r;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/internal/view/r;->m:Z

    return p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/r;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/r;->h:Lcom/facebook/ads/internal/view/a$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/r;->h:Lcom/facebook/ads/internal/view/a$a;

    sget-object v0, Lcom/facebook/ads/internal/view/i/b/aa;->f:Lcom/facebook/ads/internal/view/i/b/aa;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/b/aa;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 8

    iget-object p1, p0, Lcom/facebook/ads/internal/view/r;->h:Lcom/facebook/ads/internal/view/a$a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/r;->f:Landroid/content/Context;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iput-object p3, p0, Lcom/facebook/ads/internal/view/r;->g:Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/r;->g:Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/r;->j:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/AudienceNetworkActivity;->addBackButtonInterceptor(Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;)V

    invoke-virtual {p3}, Lcom/facebook/ads/AudienceNetworkActivity;->getRequestedOrientation()I

    move-result p1

    iput p1, p0, Lcom/facebook/ads/internal/view/r;->e:I

    sget-object p1, Lcom/facebook/ads/internal/view/r$3;->a:[I

    iget-object p2, p0, Lcom/facebook/ads/internal/view/r;->c:Lcom/facebook/ads/internal/adapters/b/n;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/b/n;->f()Lcom/facebook/ads/internal/view/c/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/view/c/f;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, -0x1

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p3, p1}, Lcom/facebook/ads/AudienceNetworkActivity;->setRequestedOrientation(I)V

    :goto_1
    new-instance p1, Lcom/facebook/ads/internal/view/f/b;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/r;->f:Landroid/content/Context;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/r;->b:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-static {p2}, Lcom/facebook/ads/internal/adapters/b/o;->a(Lcom/facebook/ads/internal/adapters/b/q;)Lcom/facebook/ads/internal/adapters/b/o;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/r;->a:Lcom/facebook/ads/internal/s/c;

    iget-object v4, p0, Lcom/facebook/ads/internal/view/r;->h:Lcom/facebook/ads/internal/view/a$a;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/internal/view/f/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/o;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/view/f/b$c;ZZ)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/r;->l:Lcom/facebook/ads/internal/view/f/b;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/r;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/r;->h:Lcom/facebook/ads/internal/view/a$a;

    invoke-interface {p2, p0}, Lcom/facebook/ads/internal/view/a$a;->a(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/f/b;->c()V

    :cond_1
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/w/b/w;)V
    .locals 7

    iget-object v0, p0, Lcom/facebook/ads/internal/view/r;->n:Lcom/facebook/ads/internal/adapters/r;

    if-eqz v0, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/r;->n:Lcom/facebook/ads/internal/adapters/r;

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/facebook/ads/internal/view/r$2;

    invoke-direct {v5, p0}, Lcom/facebook/ads/internal/view/r$2;-><init>(Lcom/facebook/ads/internal/view/r;)V

    new-instance v6, Lcom/facebook/ads/internal/adapters/r;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/r;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/r;->a:Lcom/facebook/ads/internal/s/c;

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/r;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/w/b/w;Lcom/facebook/ads/internal/adapters/c;)V

    iput-object v6, p0, Lcom/facebook/ads/internal/view/r;->n:Lcom/facebook/ads/internal/adapters/r;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/r;->n:Lcom/facebook/ads/internal/adapters/r;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/r;->b:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/adapters/r;->a(Lcom/facebook/ads/internal/adapters/b/q;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/r;->a()V

    return-void
.end method

.method public a(Z)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/r;->k:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/r;->l:Lcom/facebook/ads/internal/view/f/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/f/b;->getAdWebView()Lcom/facebook/ads/internal/view/c/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/r;->a(Lcom/facebook/ads/internal/view/c/a;)Lcom/facebook/ads/internal/view/component/a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/r;->b:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/q;->h()Lcom/facebook/ads/internal/adapters/b/i;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/r;->b:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/q;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/facebook/ads/internal/view/component/a;->a(Lcom/facebook/ads/internal/adapters/b/i;Ljava/lang/String;Ljava/util/Map;Z)V

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a;->performClick()Z

    return-void
.end method

.method public a_(Z)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/r;->l:Lcom/facebook/ads/internal/view/f/b;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/f/b;->e()V

    return-void
.end method

.method public b()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/r;->m:Z

    iget-object v1, p0, Lcom/facebook/ads/internal/view/r;->b:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/q;->k()Lcom/facebook/ads/internal/adapters/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/j;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/r;->f:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Lcom/facebook/ads/internal/w/e/e;

    iget-object v5, p0, Lcom/facebook/ads/internal/view/r;->f:Landroid/content/Context;

    invoke-direct {v4, v5, v2}, Lcom/facebook/ads/internal/w/e/e;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    new-instance v2, Lcom/facebook/ads/internal/view/r$a;

    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lcom/facebook/ads/internal/view/r;->h:Lcom/facebook/ads/internal/view/a$a;

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Lcom/facebook/ads/internal/view/r$a;-><init>(Ljava/lang/ref/WeakReference;Lcom/facebook/ads/internal/view/r$1;)V

    invoke-virtual {v4, v2}, Lcom/facebook/ads/internal/w/e/e;->a(Lcom/facebook/ads/internal/w/e/e$a;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/r;->i:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-virtual {v4, v2, v0}, Lcom/facebook/ads/internal/w/e/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/r;->h:Lcom/facebook/ads/internal/view/a$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/r;->h:Lcom/facebook/ads/internal/view/a$a;

    sget-object v1, Lcom/facebook/ads/internal/view/i/b/aa;->a:Lcom/facebook/ads/internal/view/i/b/aa;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/i/b/aa;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/ads/internal/view/i/b/c;

    invoke-direct {v2, v3, v3}, Lcom/facebook/ads/internal/view/i/b/c;-><init>(II)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/o/d;)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/r;->l:Lcom/facebook/ads/internal/view/f/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/f/b;->getAdWebView()Lcom/facebook/ads/internal/view/c/a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/ads/internal/view/r;->k:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/view/r;->a(Lcom/facebook/ads/internal/view/c/a;)Lcom/facebook/ads/internal/view/component/a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/r;->b:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/q;->h()Lcom/facebook/ads/internal/adapters/b/i;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/r;->b:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/q;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/ads/internal/view/component/a;->b(Lcom/facebook/ads/internal/adapters/b/i;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public b(Z)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/r;->l:Lcom/facebook/ads/internal/view/f/b;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/f/b;->d()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/r;->h:Lcom/facebook/ads/internal/view/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/r;->h:Lcom/facebook/ads/internal/view/a$a;

    sget-object v1, Lcom/facebook/ads/internal/view/i/b/aa;->c:Lcom/facebook/ads/internal/view/i/b/aa;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/i/b/aa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/r;->h:Lcom/facebook/ads/internal/view/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/r;->h:Lcom/facebook/ads/internal/view/a$a;

    sget-object v1, Lcom/facebook/ads/internal/view/i/b/aa;->d:Lcom/facebook/ads/internal/view/i/b/aa;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/i/b/aa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/r;->g:Lcom/facebook/ads/AudienceNetworkActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/r;->g:Lcom/facebook/ads/AudienceNetworkActivity;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/r;->j:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/AudienceNetworkActivity;->removeBackButtonInterceptor(Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/r;->g:Lcom/facebook/ads/AudienceNetworkActivity;

    iget v1, p0, Lcom/facebook/ads/internal/view/r;->e:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/AudienceNetworkActivity;->setRequestedOrientation(I)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/r;->l:Lcom/facebook/ads/internal/view/f/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/f/b;->getAdWebView()Lcom/facebook/ads/internal/view/c/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/internal/view/r;->b:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/b/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c/a;->getViewabilityChecker()Lcom/facebook/ads/internal/x/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/x/a;->a(Ljava/util/Map;)V

    const-string v2, "touch"

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c/a;->getTouchDataRecorder()Lcom/facebook/ads/internal/w/b/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/w/b/w;->e()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/r;->a:Lcom/facebook/ads/internal/s/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/r;->b:Lcom/facebook/ads/internal/adapters/b/q;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/b/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/facebook/ads/internal/s/c;->l(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/r;->l:Lcom/facebook/ads/internal/view/f/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/f/b;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/r;->h:Lcom/facebook/ads/internal/view/a$a;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/r;->g:Lcom/facebook/ads/AudienceNetworkActivity;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/r;->f:Landroid/content/Context;

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/r;->l:Lcom/facebook/ads/internal/view/f/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/f/b;->getAdWebView()Lcom/facebook/ads/internal/view/c/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/r;->b(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/r;->a_(Z)V

    :goto_0
    return-void
.end method

.method public setListener(Lcom/facebook/ads/internal/view/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/r;->h:Lcom/facebook/ads/internal/view/a$a;

    return-void
.end method
