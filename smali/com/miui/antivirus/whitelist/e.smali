.class Lcom/miui/antivirus/whitelist/e;
.super Lcom/miui/common/d/f;
.source ""


# instance fields
.field final synthetic auj:Lcom/miui/antivirus/whitelist/WhiteListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/e;->auj:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-direct {p0}, Lcom/miui/common/d/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;Lcom/miui/antivirus/whitelist/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/whitelist/e;-><init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;)V

    return-void
.end method

.method private aAC()V
    .locals 5

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/e;->auj:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aAA(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "removeWhiteList"

    const-string/jumbo v1, "begin---------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/e;->auj:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aAA(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/whitelist/i;

    iget-object v3, p0, Lcom/miui/antivirus/whitelist/e;->auj:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {v3}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aAA(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/whitelist/k;

    invoke-virtual {v0}, Lcom/miui/antivirus/whitelist/k;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/whitelist/k;

    invoke-virtual {v0}, Lcom/miui/antivirus/whitelist/k;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/miui/antivirus/whitelist/k;->aAR()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/miui/antivirus/whitelist/e;->auj:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aAB(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Lcom/miui/antivirus/whitelist/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/antivirus/whitelist/a;->aAo([Ljava/lang/String;)I

    return-void
.end method

.method private aAD()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/e;->auj:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-static {v1}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aAy(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/e;->auj:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    invoke-virtual {v1}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antivirus/whitelist/e;->auj:Lcom/miui/antivirus/whitelist/WhiteListActivity;

    const/16 v3, 0x64

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/antivirus/whitelist/e;->aAC()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/antivirus/whitelist/e;->aAD()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3fd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
