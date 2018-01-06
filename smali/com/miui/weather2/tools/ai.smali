.class public Lcom/miui/weather2/tools/ai;
.super Lcom/miui/weather2/tools/bs;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/tools/bs;-><init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/ai;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/tools/ai;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/tools/ai;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getMiFamilyUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/weather2/tools/ai;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getMiFamilyUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/weather2/tools/ai;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/tools/ai;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Wth2:MiFamilyTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jumpUrl() invalid url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/tools/ai;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/InfoDataBean;->getMiFamilyUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Wth2:MiFamilyTrigger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jumpUrl() ActivityNotFoundException for url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/weather2/tools/ai;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/InfoDataBean;->getMiFamilyUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    invoke-super {p0}, Lcom/miui/weather2/tools/bs;->b()V

    iget-object v0, p0, Lcom/miui/weather2/tools/ai;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/weather2/tools/af;->a(Landroid/content/Context;)Lcom/miui/weather2/tools/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/tools/af;->d()V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-super {p0}, Lcom/miui/weather2/tools/bs;->d()V

    iget-object v0, p0, Lcom/miui/weather2/tools/ai;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/weather2/tools/af;->a(Landroid/content/Context;)Lcom/miui/weather2/tools/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/tools/af;->c()V

    return-void
.end method
