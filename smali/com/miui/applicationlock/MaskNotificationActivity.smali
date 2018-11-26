.class public Lcom/miui/applicationlock/MaskNotificationActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# static fields
.field public static final aeG:Lmiui/util/ArraySet;


# instance fields
.field private aeH:Lcom/miui/applicationlock/utils/e;

.field private aeI:Ljava/util/Comparator;

.field private aeJ:Ljava/util/ArrayList;

.field private aeK:Ljava/lang/String;

.field private aeL:Lcom/miui/applicationlock/b;

.field private aeM:Z

.field private mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmiui/util/ArraySet;

    invoke-direct {v0}, Lmiui/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeG:Lmiui/util/ArraySet;

    sget-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeG:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeG:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeG:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeG:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeG:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeG:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeG:Lmiui/util/ArraySet;

    const-string/jumbo v1, "jp.naver.line.android"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeG:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.whatsapp"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeG:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.viber.voip"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeG:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.bbm"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeG:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.bsb.hike"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeG:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.facebook.orca"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeG:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.immomo.momo"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeG:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeG:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.android.email"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeG:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeG:Lmiui/util/ArraySet;

    const-string/jumbo v1, "com.wumii.android.mimi"

    invoke-virtual {v0, v1}, Lmiui/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    new-instance v0, Lcom/miui/applicationlock/q;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/q;-><init>(Lcom/miui/applicationlock/MaskNotificationActivity;)V

    iput-object v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeI:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic akA(Lcom/miui/applicationlock/MaskNotificationActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic akB(Lcom/miui/applicationlock/MaskNotificationActivity;)Lcom/miui/applicationlock/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeL:Lcom/miui/applicationlock/b;

    return-object v0
.end method

.method static synthetic akC(Lcom/miui/applicationlock/MaskNotificationActivity;)Lmiui/security/SecurityManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    return-object v0
.end method

.method private akx(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-static {v0}, Lcom/miui/applicationlock/utils/m;->afx(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Lcom/miui/common/b/f;->aHR(I)I

    move-result v0

    invoke-virtual {v2, v3, p1, v0}, Lmiui/security/SecurityManager;->setApplicationMaskNotificationEnabledForUser(Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic akz(Lcom/miui/applicationlock/MaskNotificationActivity;)Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeI:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public aky(Landroid/content/Loader;Ljava/util/ArrayList;)V
    .locals 3

    iput-object p2, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeJ:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeL:Lcom/miui/applicationlock/b;

    iget-object v1, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeJ:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/applicationlock/b;->aku(Ljava/util/List;Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/a/d;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeM:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeM:Z

    invoke-virtual {p0}, Lcom/miui/applicationlock/MaskNotificationActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xf990d
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/MaskNotificationActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/MaskNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/applicationlock/MaskNotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/applicationlock/utils/e;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeH:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {p0}, Lcom/miui/applicationlock/MaskNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "enter_way"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/applicationlock/b/a;->ajt(Ljava/lang/String;)V

    const-string/jumbo v2, "mask_notification_notify"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/miui/applicationlock/utils/m;->afv(I)V

    :cond_0
    if-eqz p1, :cond_2

    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v5, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeM:Z

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeH:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeM:Z

    :cond_1
    const v0, 0x7f0a010c

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/MaskNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    invoke-virtual {p0}, Lcom/miui/applicationlock/MaskNotificationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/miui/applicationlock/utils/m;->afw(ZLandroid/view/Window;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeJ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/applicationlock/MaskNotificationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeK:Ljava/lang/String;

    const-string/jumbo v1, "security"

    invoke-virtual {p0, v1}, Lcom/miui/applicationlock/MaskNotificationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/SecurityManager;

    iput-object v1, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {p0}, Lcom/miui/applicationlock/MaskNotificationActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x71

    invoke-virtual {v1, v2, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    new-instance v1, Lcom/miui/applicationlock/b;

    iget-object v2, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeJ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/applicationlock/MaskNotificationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/miui/applicationlock/b;-><init>(Ljava/util/List;Landroid/view/LayoutInflater;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeL:Lcom/miui/applicationlock/b;

    iget-object v1, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeL:Lcom/miui/applicationlock/b;

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/miui/applicationlock/r;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/r;-><init>(Lcom/miui/applicationlock/MaskNotificationActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->aGJ(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo v1, "applock_setting_mask_notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeM:Z

    goto :goto_0

    :cond_3
    iput-boolean v5, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeM:Z

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    new-instance v0, Lcom/miui/applicationlock/s;

    invoke-direct {v0, p0, p0}, Lcom/miui/applicationlock/s;-><init>(Lcom/miui/applicationlock/MaskNotificationActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/applicationlock/MaskNotificationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    new-instance v0, Lcom/miui/applicationlock/t;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/t;-><init>(Lcom/miui/applicationlock/MaskNotificationActivity;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/applicationlock/MaskNotificationActivity;->aky(Landroid/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x71

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/MaskNotificationActivity;->akx(Z)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/MaskNotificationActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/MaskNotificationActivity;->akx(Z)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/MaskNotificationActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0421
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "state"

    iget-boolean v1, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeM:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Lcom/miui/common/a/d;->onStart()V

    iget-object v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeH:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeM:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "HappyCodingMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0xf990d

    invoke-virtual {p0, v0, v1}, Lcom/miui/applicationlock/MaskNotificationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeM:Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/a/d;->onStop()V

    iget-boolean v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeM:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/MaskNotificationActivity;->aeM:Z

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/applicationlock/MaskNotificationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/miui/applicationlock/utils/m;->afw(ZLandroid/view/Window;)V

    :cond_0
    return-void
.end method
