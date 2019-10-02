.class public Lcom/facebook/ads/internal/view/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/a;


# static fields
.field private static final a:Ljava/lang/String; = "h"


# instance fields
.field private final b:Lcom/facebook/ads/internal/view/a$a;

.field private final c:Lcom/facebook/ads/internal/view/c/a;

.field private final d:Lcom/facebook/ads/internal/view/c/a$b;

.field private final e:Lcom/facebook/ads/internal/adapters/m;

.field private final f:Lcom/facebook/ads/internal/s/c;

.field private g:Lcom/facebook/ads/internal/adapters/l;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/facebook/ads/internal/view/h;->b:Lcom/facebook/ads/internal/view/a$a;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/h;->f:Lcom/facebook/ads/internal/s/c;

    new-instance v0, Lcom/facebook/ads/internal/view/h$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/internal/view/h$1;-><init>(Lcom/facebook/ads/internal/view/h;Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/s/c;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/h;->d:Lcom/facebook/ads/internal/view/c/a$b;

    new-instance v0, Lcom/facebook/ads/internal/view/c/a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/h;->d:Lcom/facebook/ads/internal/view/c/a$b;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/ads/internal/view/c/a;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c/a;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/c/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lcom/facebook/ads/internal/view/h$2;

    invoke-direct {v8, p0}, Lcom/facebook/ads/internal/view/h$2;-><init>(Lcom/facebook/ads/internal/view/h;)V

    new-instance v0, Lcom/facebook/ads/internal/adapters/m;

    iget-object v6, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/c/a;->getViewabilityChecker()Lcom/facebook/ads/internal/x/a;

    move-result-object v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/internal/adapters/m;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/w/e/a;Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/adapters/c;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/m;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-interface {p3, p1}, Lcom/facebook/ads/internal/view/a$a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/h;)Lcom/facebook/ads/internal/view/a$a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/h;->b:Lcom/facebook/ads/internal/view/a$a;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/view/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/h;)Lcom/facebook/ads/internal/adapters/l;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/adapters/l;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/h;)Lcom/facebook/ads/internal/adapters/m;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/m;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 6

    if-eqz p2, :cond_1

    const-string p3, "dataModel"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p1, "dataModel"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/l;->a(Landroid/os/Bundle;)Lcom/facebook/ads/internal/adapters/l;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/adapters/l;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/adapters/l;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-static {}, Lcom/facebook/ads/internal/w/e/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/l;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/c/a;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c/a;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/l;->f()I

    move-result p2

    iget-object p3, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/adapters/l;->g()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/facebook/ads/internal/view/c/a;->a(II)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/l;->b(Landroid/content/Intent;)Lcom/facebook/ads/internal/adapters/l;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/adapters/l;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/adapters/l;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/view/h;->e:Lcom/facebook/ads/internal/adapters/m;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/adapters/m;->a(Lcom/facebook/ads/internal/adapters/l;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-static {}, Lcom/facebook/ads/internal/w/e/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/l;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/view/c/a;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c/a;

    iget-object p2, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/l;->f()I

    move-result p2

    iget-object p3, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/adapters/l;->g()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/facebook/ads/internal/view/c/a;->a(II)V

    :cond_2
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/adapters/l;

    if-eqz v0, :cond_0

    const-string v0, "dataModel"

    iget-object v1, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/l;->h()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public a_(Z)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/c/a;->onPause()V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/c/a;->onResume()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/adapters/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/l;->getClientToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/c/a;->getViewabilityChecker()Lcom/facebook/ads/internal/x/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/x/a;->a(Ljava/util/Map;)V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/c/a;->getTouchData()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/w/b/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/h;->f:Lcom/facebook/ads/internal/s/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/h;->g:Lcom/facebook/ads/internal/adapters/l;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/l;->getClientToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/s/c;->l(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/w/e/b;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/h;->c:Lcom/facebook/ads/internal/view/c/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c/a;->destroy()V

    return-void
.end method

.method public setListener(Lcom/facebook/ads/internal/view/a$a;)V
    .locals 0

    return-void
.end method
