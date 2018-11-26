.class public Lcom/miui/privacyapps/ui/PrivacyAppsActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bbA:Landroid/widget/TextView;

.field private bbB:Lmiui/process/IForegroundInfoListener$Stub;

.field private bbC:Lcom/miui/privacyapps/ui/e;

.field private bbD:Landroid/widget/TextView;

.field private bbE:Landroid/widget/GridView;

.field private bbF:Ljava/util/List;

.field private bbG:Lcom/miui/privacyapps/b/a;

.field private bbz:Lcom/miui/privacyapps/d;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbF:Ljava/util/List;

    new-instance v0, Lcom/miui/privacyapps/ui/p;

    invoke-direct {v0, p0}, Lcom/miui/privacyapps/ui/p;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbB:Lmiui/process/IForegroundInfoListener$Stub;

    new-instance v0, Lcom/miui/privacyapps/ui/q;

    invoke-direct {v0, p0}, Lcom/miui/privacyapps/ui/q;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private byi(Lcom/miui/privacyapps/d;Z)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/miui/privacyapps/d;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/privacyapps/d;->byN()I

    move-result v1

    iget-object v2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v2, v0, v1, p2}, Lmiui/security/SecurityManager;->setPrivacyApp(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setApplicationEnabledSetting error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic byj(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)Lcom/miui/privacyapps/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbz:Lcom/miui/privacyapps/d;

    return-object v0
.end method

.method static synthetic byk(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbF:Ljava/util/List;

    return-object v0
.end method

.method static synthetic byl(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;)Lmiui/security/SecurityManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    return-object v0
.end method

.method static synthetic bym(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;Lcom/miui/privacyapps/d;)Lcom/miui/privacyapps/d;
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbz:Lcom/miui/privacyapps/d;

    return-object p1
.end method

.method static synthetic byn(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;Lcom/miui/privacyapps/d;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->byi(Lcom/miui/privacyapps/d;Z)V

    return-void
.end method


# virtual methods
.method public byh(Landroid/content/Loader;Ljava/util/List;)V
    .locals 1

    iput-object p2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbF:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbC:Lcom/miui/privacyapps/ui/e;

    invoke-virtual {v0}, Lcom/miui/privacyapps/ui/e;->notifyDataSetChanged()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbA:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbD:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "enter_from_privacyapps_page"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x141

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03013e

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/a/b;->Ib(Landroid/view/Window;)V

    new-instance v0, Lcom/miui/privacyapps/b/a;

    invoke-direct {v0, p0}, Lcom/miui/privacyapps/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbG:Lcom/miui/privacyapps/b/a;

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    const v0, 0x7f0a00c5

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbA:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbA:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a036a

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbD:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbD:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0369

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbE:Landroid/widget/GridView;

    new-instance v0, Lcom/miui/privacyapps/ui/e;

    invoke-direct {v0, p0, p0}, Lcom/miui/privacyapps/ui/e;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbC:Lcom/miui/privacyapps/ui/e;

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbE:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbC:Lcom/miui/privacyapps/ui/e;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbE:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbE:Landroid/widget/GridView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v5, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v5, v4, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    new-instance v0, Lcom/miui/privacyapps/ui/r;

    invoke-direct {v0, p0, p0}, Lcom/miui/privacyapps/ui/r;-><init>(Lcom/miui/privacyapps/ui/PrivacyAppsActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbF:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/privacyapps/d;

    invoke-virtual {v0}, Lcom/miui/privacyapps/d;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->bbG:Lcom/miui/privacyapps/b/a;

    iget-object v3, p0, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Lcom/miui/privacyapps/d;->byN()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/miui/privacyapps/b/a;->byz(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    :try_start_0
    new-instance v3, Landroid/os/UserHandle;

    invoke-virtual {v0}, Lcom/miui/privacyapps/d;->byN()I

    move-result v0

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v1}, Lcom/miui/privacyapps/a/a;->byt(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startPrivacyApps error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->byh(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/d;->onPause()V

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/d;->onResume()V

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/PrivacyAppsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method
