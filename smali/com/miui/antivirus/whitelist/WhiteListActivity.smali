.class public Lcom/miui/antivirus/whitelist/WhiteListActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private aub:Ljava/lang/String;

.field private auc:Lcom/miui/antivirus/whitelist/e;

.field private aud:Lcom/miui/antivirus/whitelist/WhiteListActivityView;

.field private aue:Z

.field private auf:Ljava/util/Map;

.field private aug:Lcom/miui/antivirus/whitelist/f;

.field private auh:Lcom/miui/antivirus/whitelist/a;

.field private aui:Lcom/miui/antivirus/whitelist/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aue:Z

    const-string/jumbo v0, "key_show_toast"

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aub:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->auf:Ljava/util/Map;

    new-instance v0, Lcom/miui/antivirus/whitelist/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/antivirus/whitelist/e;-><init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;Lcom/miui/antivirus/whitelist/e;)V

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->auc:Lcom/miui/antivirus/whitelist/e;

    return-void
.end method

.method static synthetic aAA(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->auf:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic aAB(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Lcom/miui/antivirus/whitelist/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->auh:Lcom/miui/antivirus/whitelist/a;

    return-object v0
.end method

.method private aAv()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aug:Lcom/miui/antivirus/whitelist/f;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->auf:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/whitelist/f;->aAH(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aug:Lcom/miui/antivirus/whitelist/f;

    invoke-virtual {v0}, Lcom/miui/antivirus/whitelist/f;->notifyDataSetChanged()V

    return-void
.end method

.method private aAx()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/antivirus/whitelist/h;->auu:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aui:Lcom/miui/antivirus/whitelist/g;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic aAy(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aub:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aAz(Lcom/miui/antivirus/whitelist/WhiteListActivity;)Lcom/miui/antivirus/whitelist/WhiteListActivityView;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aud:Lcom/miui/antivirus/whitelist/WhiteListActivityView;

    return-object v0
.end method


# virtual methods
.method public varargs aAu(Ljava/lang/String;I[Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 7

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :try_start_0
    array-length v2, p3

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v6, 0x22

    invoke-virtual {v1, v5, v4, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WhiteListActivity"

    const-string/jumbo v3, "msg"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v1
.end method

.method public aAw(Landroid/content/Loader;Ljava/lang/Boolean;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aud:Lcom/miui/antivirus/whitelist/WhiteListActivityView;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->aAm(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aud:Lcom/miui/antivirus/whitelist/WhiteListActivityView;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->aAi(Z)V

    invoke-direct {p0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aAv()V

    iget-boolean v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aue:Z

    if-eqz v0, :cond_0

    const v0, 0x7f07073b

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030166

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/whitelist/a;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/whitelist/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->auh:Lcom/miui/antivirus/whitelist/a;

    const v0, 0x7f0a0282

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/whitelist/WhiteListActivityView;

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aud:Lcom/miui/antivirus/whitelist/WhiteListActivityView;

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aud:Lcom/miui/antivirus/whitelist/WhiteListActivityView;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->auc:Lcom/miui/antivirus/whitelist/e;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->aAk(Lcom/miui/common/d/f;)V

    new-instance v0, Lcom/miui/antivirus/whitelist/f;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->auc:Lcom/miui/antivirus/whitelist/e;

    invoke-direct {v0, p0, p0, v1}, Lcom/miui/antivirus/whitelist/f;-><init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;Landroid/content/Context;Lcom/miui/common/d/f;)V

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aug:Lcom/miui/antivirus/whitelist/f;

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aud:Lcom/miui/antivirus/whitelist/WhiteListActivityView;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aug:Lcom/miui/antivirus/whitelist/f;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->aAl(Landroid/widget/ListAdapter;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aub:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    new-instance v0, Lcom/miui/antivirus/whitelist/g;

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->auc:Lcom/miui/antivirus/whitelist/e;

    invoke-direct {v0, p0, v1}, Lcom/miui/antivirus/whitelist/g;-><init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;Lcom/miui/common/d/f;)V

    iput-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aui:Lcom/miui/antivirus/whitelist/g;

    invoke-direct {p0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aAx()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aud:Lcom/miui/antivirus/whitelist/WhiteListActivityView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/whitelist/WhiteListActivityView;->aAm(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->auf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aub:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aue:Z

    new-instance v0, Lcom/miui/antivirus/whitelist/m;

    invoke-direct {v0, p0, p0}, Lcom/miui/antivirus/whitelist/m;-><init>(Lcom/miui/antivirus/whitelist/WhiteListActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    invoke-virtual {p0}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aui:Lcom/miui/antivirus/whitelist/g;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antivirus/whitelist/WhiteListActivity;->aAw(Landroid/content/Loader;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method
