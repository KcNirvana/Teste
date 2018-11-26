.class final Lcom/miui/antivirus/whitelist/m;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic auH:Lcom/miui/antivirus/whitelist/WhiteListActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/m;->auH:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Ljava/lang/Boolean;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/m;->auH:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-virtual {v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/m;->auH:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aAB(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Lcom/miui/antivirus/whitelist/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antivirus/whitelist/a;->aAp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/antivirus/whitelist/m;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f0c003e

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/miui/antivirus/whitelist/i;

    invoke-direct {v3}, Lcom/miui/antivirus/whitelist/i;-><init>()V

    invoke-virtual {v3, v7}, Lcom/miui/antivirus/whitelist/i;->setChecked(Z)V

    iget-object v4, p0, Lcom/miui/antivirus/whitelist/m;->auH:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    new-array v5, v8, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v1, v2, v5}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aAu(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/miui/antivirus/whitelist/i;->aAI(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/miui/antivirus/whitelist/WhiteListType;->aur:Lcom/miui/antivirus/whitelist/WhiteListType;

    invoke-virtual {v3, v1}, Lcom/miui/antivirus/whitelist/i;->aAJ(Lcom/miui/antivirus/whitelist/WhiteListType;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/whitelist/c;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/m;->auH:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {v1}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aAA(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/miui/antivirus/whitelist/m;->auH:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {v5}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aAA(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v0}, Lcom/miui/antivirus/whitelist/k;->aAT(Lcom/miui/antivirus/whitelist/c;)Lcom/miui/antivirus/whitelist/k;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/whitelist/m;->auH:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aAB(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Lcom/miui/antivirus/whitelist/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antivirus/whitelist/a;->aAq()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/miui/antivirus/whitelist/m;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f0c003f

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/miui/antivirus/whitelist/i;

    invoke-direct {v3}, Lcom/miui/antivirus/whitelist/i;-><init>()V

    invoke-virtual {v3, v7}, Lcom/miui/antivirus/whitelist/i;->setChecked(Z)V

    iget-object v4, p0, Lcom/miui/antivirus/whitelist/m;->auH:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    new-array v5, v8, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v1, v2, v5}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aAu(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/miui/antivirus/whitelist/i;->aAI(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/miui/antivirus/whitelist/WhiteListType;->aus:Lcom/miui/antivirus/whitelist/WhiteListType;

    invoke-virtual {v3, v1}, Lcom/miui/antivirus/whitelist/i;->aAJ(Lcom/miui/antivirus/whitelist/WhiteListType;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/whitelist/d;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/m;->auH:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {v1}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aAA(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/miui/antivirus/whitelist/m;->auH:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {v4}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aAA(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v0}, Lcom/miui/antivirus/whitelist/k;->aAU(Lcom/miui/antivirus/whitelist/d;)Lcom/miui/antivirus/whitelist/k;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v9
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antivirus/whitelist/m;->loadInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
