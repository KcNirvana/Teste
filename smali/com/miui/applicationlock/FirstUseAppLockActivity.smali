.class public Lcom/miui/applicationlock/FirstUseAppLockActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private afD:I

.field private afE:Ljava/util/List;

.field private afF:Lcom/miui/applicationlock/utils/e;

.field private final afG:Ljava/util/Comparator;

.field private afH:Ljava/lang/String;

.field private afI:Lcom/miui/applicationlock/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afE:Ljava/util/List;

    new-instance v0, Lcom/miui/applicationlock/J;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/J;-><init>(Lcom/miui/applicationlock/FirstUseAppLockActivity;)V

    iput-object v0, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afG:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic alA(Lcom/miui/applicationlock/FirstUseAppLockActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afD:I

    return p1
.end method

.method static synthetic alB(Lcom/miui/applicationlock/FirstUseAppLockActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->alu()V

    return-void
.end method

.method private als()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afE:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/utils/c;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/c;->aeb()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private alu()V
    .locals 4

    const v3, 0xf9895

    iget-object v0, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afF:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/LockChooseAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "forbide"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "HappyCoding"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private alv()V
    .locals 2

    const-string/jumbo v0, "AlarmReceiver"

    iget-object v1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->agg(Z)V

    :cond_0
    return-void
.end method

.method private alw()V
    .locals 2

    const-string/jumbo v0, "AlarmReceiver"

    iget-object v1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/securityscan/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private alx()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->als()I

    move-result v0

    iget v1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afD:I

    if-le v0, v1, :cond_0

    const-string/jumbo v0, "set_more"

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajB(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afD:I

    if-ge v0, v1, :cond_1

    const-string/jumbo v0, "set_less"

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajB(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "set_equal"

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajB(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic aly(Lcom/miui/applicationlock/FirstUseAppLockActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afE:Ljava/util/List;

    return-object v0
.end method

.method static synthetic alz(Lcom/miui/applicationlock/FirstUseAppLockActivity;)Lcom/miui/applicationlock/e;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afI:Lcom/miui/applicationlock/e;

    return-object v0
.end method


# virtual methods
.method public alt(Landroid/content/Loader;Ljava/util/ArrayList;)V
    .locals 2

    iput-object p2, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afE:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afE:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afG:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afI:Lcom/miui/applicationlock/e;

    iget-object v1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afE:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/e;->updateData(Ljava/util/List;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/d;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v6, :cond_1

    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afE:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/applicationlock/utils/c;

    invoke-virtual {v1}, Lcom/miui/applicationlock/utils/c;->aea()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/applicationlock/utils/c;->aeb()Z

    move-result v4

    invoke-virtual {v1}, Lcom/miui/applicationlock/utils/c;->adZ()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lmiui/security/SecurityManager;->setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V

    invoke-virtual {v1}, Lcom/miui/applicationlock/utils/c;->aeb()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/applicationlock/utils/c;->aed(Z)V

    iget-object v1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afI:Lcom/miui/applicationlock/e;

    invoke-virtual {v1}, Lcom/miui/applicationlock/e;->notifyDataSetChanged()V

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p3}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->alx()V

    invoke-virtual {p0, v6}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->setResult(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xf9895
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->alw()V

    invoke-virtual {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->finish()V

    const-string/jumbo v0, "left"

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajB(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/e;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afF:Lcom/miui/applicationlock/utils/e;

    iget-object v0, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afF:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aeq()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afF:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v1}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v1

    if-eqz v1, :cond_0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_enterway"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajA(Ljava/lang/String;)V

    :cond_1
    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/16 v3, 0x6e

    invoke-virtual {v2, v3, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    new-instance v2, Lcom/miui/applicationlock/e;

    iget-object v3, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afE:Ljava/util/List;

    invoke-direct {v2, v3, v1, p0}, Lcom/miui/applicationlock/e;-><init>(Ljava/util/List;Landroid/view/LayoutInflater;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afI:Lcom/miui/applicationlock/e;

    iget-object v1, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afI:Lcom/miui/applicationlock/e;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f0a003c

    invoke-virtual {p0, v1}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "from"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/applicationlock/FirstUseAppLockActivity;->afH:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->alv()V

    new-instance v2, Lcom/miui/applicationlock/K;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/K;-><init>(Lcom/miui/applicationlock/FirstUseAppLockActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/miui/applicationlock/L;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/L;-><init>(Lcom/miui/applicationlock/FirstUseAppLockActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2

    new-instance v0, Lcom/miui/applicationlock/M;

    invoke-virtual {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/applicationlock/M;-><init>(Lcom/miui/applicationlock/FirstUseAppLockActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->alt(Landroid/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->alw()V

    const-string/jumbo v0, "left"

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajB(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/FirstUseAppLockActivity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
