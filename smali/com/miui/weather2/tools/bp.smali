.class public Lcom/miui/weather2/tools/bp;
.super Lcom/miui/weather2/tools/bq;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field private j:Landroid/view/View;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;IZI)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/miui/weather2/tools/bq;-><init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;IZI)V

    iput-object p1, p0, Lcom/miui/weather2/tools/bp;->j:Landroid/view/View;

    iput-object p4, p0, Lcom/miui/weather2/tools/bp;->k:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/tools/bp;->a:Landroid/content/Context;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 6

    const-string v0, "topic_top_click"

    iget-object v1, p0, Lcom/miui/weather2/tools/bp;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/bp;->c:Lcom/miui/weather2/structures/InfoDataBean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/bp;->c:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrCornerMark()Lcom/miui/weather2/structures/CornerMarkBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/bp;->c:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrCornerMark()Lcom/miui/weather2/structures/CornerMarkBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CornerMarkBean;->getCornerData()Lcom/miui/weather2/structures/CornerDataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/bp;->c:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/InfoDataBean;->getWtrCornerMark()Lcom/miui/weather2/structures/CornerMarkBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CornerMarkBean;->getCornerData()Lcom/miui/weather2/structures/CornerDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/CornerDataBean;->getLink()Lcom/miui/weather2/structures/LinkBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/weather2/structures/LinkBean;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/miui/weather2/structures/LinkBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/miui/weather2/structures/LinkBean;->getUseSystemBrowser()Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/tools/bp;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/LinkBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app"

    iget v3, p0, Lcom/miui/weather2/tools/bp;->f:I

    iget-boolean v4, p0, Lcom/miui/weather2/tools/bp;->g:Z

    iget v5, p0, Lcom/miui/weather2/tools/bp;->h:I

    invoke-static/range {v0 .. v5}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/miui/weather2/structures/LinkBean;->getUseSystemBrowser()Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/miui/weather2/structures/LinkBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/weather2/tools/bp;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/miui/weather2/structures/LinkBean;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/miui/weather2/structures/LinkBean;->getAppUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/miui/weather2/structures/LinkBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/bp;->a:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/miui/weather2/structures/LinkBean;->getAppUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/weather2/structures/LinkBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/tools/bp;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/miui/weather2/structures/LinkBean;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/bp;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/weather2/tools/bp;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
