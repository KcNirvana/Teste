.class public Lcom/miui/appmanager/AppManagerMainActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final aUC:Ljava/util/Comparator;

.field public static final aUD:Ljava/util/Comparator;

.field public static final aUE:Ljava/util/Comparator;

.field public static final aUF:Ljava/util/Comparator;

.field public static final aUG:Ljava/util/Comparator;

.field private static final aUH:Ljava/util/List;


# instance fields
.field private aUI:Ljava/util/List;

.field private aUJ:Ljava/util/List;

.field private aUK:Lcom/miui/securityscan/cards/k;

.field private aUL:Lcom/miui/appmanager/i;

.field private aUM:I

.field private aUN:I

.field private aUO:Lcom/miui/appmanager/widget/a;

.field private aUP:Ljava/util/List;

.field private aUQ:Lcom/miui/b/b;

.field private aUR:I

.field private aUS:Landroid/view/MenuItem;

.field private aUT:Lcom/nostra13/universalimageloader/core/l;

.field private aUU:Lcom/miui/securityscan/cards/g;

.field private aUV:Landroid/content/pm/IPackageManager;

.field private aUW:Z

.field private aUX:Z

.field private aUY:Z

.field private aUZ:Z

.field private aVA:Lmiui/app/AlertDialog;

.field private aVB:Ljava/util/ArrayList;

.field private aVC:Lcom/miui/appmanager/model/g;

.field private aVD:Landroid/view/MenuItem;

.field private aVE:Z

.field private aVF:Landroid/view/MenuItem;

.field private aVG:Ljava/util/HashSet;

.field private aVH:[Ljava/lang/String;

.field private aVI:Z

.field final aVJ:Landroid/content/pm/IPackageStatsObserver$Stub;

.field private aVK:Ljava/util/List;

.field private aVL:Lcom/miui/appmanager/model/p;

.field private aVM:Z

.field private aVN:I

.field private aVO:Lcom/miui/appmanager/u;

.field private aVP:Landroid/app/usage/UsageStatsManager;

.field private aVQ:Landroid/os/UserManager;

.field private aVa:Z

.field private aVb:Z

.field private aVc:Z

.field private aVd:Z

.field private aVe:Z

.field private aVf:Z

.field private aVg:Z

.field private aVh:Z

.field private aVi:Ljava/lang/String;

.field private aVj:Lcom/miui/appmanager/k;

.field private aVk:Lcom/miui/appmanager/model/l;

.field private aVl:Lcom/miui/appmanager/r;

.field private aVm:Landroid/view/View$OnClickListener;

.field private aVn:Lcom/miui/appmanager/model/n;

.field private aVo:Landroid/widget/ListView;

.field private aVp:Lcom/miui/appmanager/s;

.field private aVq:Lcom/miui/securityscan/cards/i;

.field private aVr:Lcom/miui/appmanager/p;

.field private aVs:Lcom/miui/appmanager/w;

.field private aVt:Z

.field private aVu:I

.field private aVv:Z

.field private final aVw:Lcom/miui/appmanager/o;

.field private aVx:Landroid/content/pm/PackageManager;

.field private aVy:I

.field private aVz:Lmiui/widget/ProgressBar;

.field private mEmptyView:Landroid/view/View;

.field public final mLock:Ljava/lang/Object;

.field protected mSearchActionMode:Lmiui/view/SearchActionMode;

.field private mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

.field private mSearchInputView:Landroid/widget/TextView;

.field private mSearchTextWatcher:Landroid/text/TextWatcher;

.field private mSearchView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/appmanager/AppManagerMainActivity;->aUH:Ljava/util/List;

    sget-object v0, Lcom/miui/appmanager/AppManagerMainActivity;->aUH:Ljava/util/List;

    sget-object v1, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/miui/appmanager/AppManagerMainActivity;->aUH:Ljava/util/List;

    const-string/jumbo v1, "com.xiaomi.xmsf"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/appmanager/AppManagerMainActivity;->aUH:Ljava/util/List;

    const-string/jumbo v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/appmanager/ao;

    invoke-direct {v0}, Lcom/miui/appmanager/ao;-><init>()V

    sput-object v0, Lcom/miui/appmanager/AppManagerMainActivity;->aUE:Ljava/util/Comparator;

    new-instance v0, Lcom/miui/appmanager/ap;

    invoke-direct {v0}, Lcom/miui/appmanager/ap;-><init>()V

    sput-object v0, Lcom/miui/appmanager/AppManagerMainActivity;->aUC:Ljava/util/Comparator;

    new-instance v0, Lcom/miui/appmanager/aq;

    invoke-direct {v0}, Lcom/miui/appmanager/aq;-><init>()V

    sput-object v0, Lcom/miui/appmanager/AppManagerMainActivity;->aUG:Ljava/util/Comparator;

    new-instance v0, Lcom/miui/appmanager/ar;

    invoke-direct {v0}, Lcom/miui/appmanager/ar;-><init>()V

    sput-object v0, Lcom/miui/appmanager/AppManagerMainActivity;->aUF:Ljava/util/Comparator;

    new-instance v0, Lcom/miui/appmanager/as;

    invoke-direct {v0}, Lcom/miui/appmanager/as;-><init>()V

    sput-object v0, Lcom/miui/appmanager/AppManagerMainActivity;->aUD:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    new-instance v0, Lcom/miui/appmanager/r;

    invoke-direct {v0}, Lcom/miui/appmanager/r;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVB:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/appmanager/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/appmanager/w;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;Lcom/miui/appmanager/w;)V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVs:Lcom/miui/appmanager/w;

    iput-boolean v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVb:Z

    iput-boolean v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    iput v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUM:I

    iput v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUN:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/miui/appmanager/model/n;

    invoke-direct {v0}, Lcom/miui/appmanager/model/n;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVn:Lcom/miui/appmanager/model/n;

    new-instance v0, Lcom/miui/appmanager/model/p;

    invoke-direct {v0}, Lcom/miui/appmanager/model/p;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVL:Lcom/miui/appmanager/model/p;

    new-instance v0, Lcom/miui/appmanager/model/g;

    invoke-direct {v0}, Lcom/miui/appmanager/model/g;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVC:Lcom/miui/appmanager/model/g;

    new-instance v0, Lcom/miui/appmanager/model/l;

    invoke-direct {v0}, Lcom/miui/appmanager/model/l;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVk:Lcom/miui/appmanager/model/l;

    iput v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUR:I

    iput-boolean v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVI:Z

    iput-boolean v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVa:Z

    iput-boolean v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVg:Z

    iput-boolean v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVh:Z

    iput-boolean v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVv:Z

    iput-boolean v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVe:Z

    iput-boolean v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUZ:Z

    iput-boolean v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVt:Z

    iput-boolean v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVf:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUJ:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUI:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVK:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVG:Ljava/util/HashSet;

    new-instance v0, Lcom/miui/appmanager/ah;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/ah;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVw:Lcom/miui/appmanager/o;

    new-instance v0, Lcom/miui/appmanager/ai;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/ai;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    new-instance v0, Lcom/miui/appmanager/aj;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/aj;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUK:Lcom/miui/securityscan/cards/k;

    new-instance v0, Lcom/miui/appmanager/ak;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/ak;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUU:Lcom/miui/securityscan/cards/g;

    new-instance v0, Lcom/miui/appmanager/al;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/al;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/appmanager/ag;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/ag;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVJ:Landroid/content/pm/IPackageStatsObserver$Stub;

    new-instance v0, Lcom/miui/appmanager/am;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/am;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVm:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private bnA(Ljava/util/List;)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVv:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/miui/appmanager/aA;

    invoke-direct {v1, p0, v0}, Lcom/miui/appmanager/aA;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/List;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/miui/appmanager/aA;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private bnB()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v1, v1, Lcom/miui/appmanager/r;->aUy:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/miui/appmanager/az;

    invoke-direct {v1, p0, v0}, Lcom/miui/appmanager/az;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/List;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/miui/appmanager/az;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private bnC()V
    .locals 4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVG:Ljava/util/HashSet;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.google.android.gms"

    const-string/jumbo v3, "com.google.android.gms.app.settings.GoogleSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVG:Ljava/util/HashSet;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.google.android.gms"

    const-string/jumbo v3, "com.google.android.gms.common.settings.GoogleSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVG:Ljava/util/HashSet;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.qualcomm.qti.modemtestmode"

    const-string/jumbo v3, "com.qualcomm.qti.modemtestmode.MbnFileActivate"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVG:Ljava/util/HashSet;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.google.android.googlequicksearchbox"

    const-string/jumbo v3, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVG:Ljava/util/HashSet;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.google.android.googlequicksearchbox"

    const-string/jumbo v3, "com.google.android.handsfree.HandsFreeLauncherActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVG:Ljava/util/HashSet;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.google.android.inputmethod.pinyin"

    const-string/jumbo v3, "com.google.android.apps.inputmethod.libs.framework.core.LauncherActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVG:Ljava/util/HashSet;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.opera.max.oem.xiaomi"

    const-string/jumbo v3, "com.opera.max.ui.v2.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVG:Ljava/util/HashSet;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.google.android.inputmethod.latin"

    const-string/jumbo v3, "com.android.inputmethod.latin.setup.SetupActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lmiui/theme/ThemeManagerHelper;->needDisableTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVG:Ljava/util/HashSet;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.thememanager"

    const-string/jumbo v3, "com.android.thememanager.ThemeResourceTabActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private bnD()Landroid/util/SparseArray;
    .locals 4

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVQ:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v3, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVP:Landroid/app/usage/UsageStatsManager;

    invoke-static {v3, v0}, Lcom/miui/appmanager/h;->blZ(Landroid/app/usage/UsageStatsManager;I)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private bnE(Lcom/miui/appmanager/p;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/appmanager/p;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/model/k;

    instance-of v2, v0, Lcom/miui/appmanager/model/a;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/miui/appmanager/model/a;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/a;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVd:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/appmanager/p;->notifyDataSetChanged()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUR:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUR:I

    goto :goto_0
.end method

.method private bnF(Lcom/miui/appmanager/p;Ljava/lang/String;II)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/appmanager/p;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/model/k;

    instance-of v2, v0, Lcom/miui/appmanager/model/a;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/miui/appmanager/model/a;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/a;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVd:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/miui/appmanager/p;->notifyDataSetChanged()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUR:I

    :goto_0
    invoke-static {p3}, Lcom/miui/securityscan/d/b;->Lo(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnf(Ljava/lang/String;Lcom/miui/appmanager/model/a;)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x3

    iput v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUR:I

    goto :goto_0
.end method

.method private bnH(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnW(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private bnI()V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUT:Lcom/nostra13/universalimageloader/core/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUT:Lcom/nostra13/universalimageloader/core/l;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/l;->pause()V

    :cond_0
    return-void
.end method

.method private bnJ(Ljava/util/List;Ljava/lang/String;I)V
    .locals 3

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/model/k;

    move-object v1, v0

    check-cast v1, Lcom/miui/appmanager/model/i;

    invoke-virtual {v1}, Lcom/miui/appmanager/model/i;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/miui/appmanager/model/i;

    invoke-virtual {v1}, Lcom/miui/appmanager/model/i;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private bnK()V
    .locals 3

    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v2, v2, Lcom/miui/appmanager/r;->aUz:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/miui/appmanager/au;

    invoke-direct {v2, p0, v1, v0}, Lcom/miui/appmanager/au;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/List;Landroid/app/INotificationManager;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v1}, Lcom/miui/appmanager/au;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private bnL()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVB:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/model/k;

    move-object v1, v0

    check-cast v1, Lcom/miui/appmanager/model/i;

    invoke-virtual {v1}, Lcom/miui/appmanager/model/i;->bhh()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/appmanager/model/i;

    invoke-virtual {v0, v3}, Lcom/miui/appmanager/model/i;->setSearchInput(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method private bnM()V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUT:Lcom/nostra13/universalimageloader/core/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUT:Lcom/nostra13/universalimageloader/core/l;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/l;->bHA()V

    :cond_0
    return-void
.end method

.method private bnN(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUL:Lcom/miui/appmanager/i;

    iget-boolean v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/i;->bmk(Z)V

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnV()V

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUZ:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->updateData()V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVf:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUI:Ljava/util/List;

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnv(Ljava/util/List;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVh:Z

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUI:Ljava/util/List;

    iget v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    iget v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVu:I

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/appmanager/AppManagerMainActivity;->bnp(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnY(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUy:Ljava/util/List;

    :goto_2
    invoke-direct {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnA(Ljava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVf:Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVK:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVK:Ljava/util/List;

    iget v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    iget v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVu:I

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/appmanager/AppManagerMainActivity;->bnp(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUA:Ljava/util/ArrayList;

    goto :goto_2
.end method

.method private bnO(ILjava/lang/String;Ljava/lang/Long;)V
    .locals 6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "size"

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVs:Lcom/miui/appmanager/w;

    invoke-virtual {v1, v0}, Lcom/miui/appmanager/w;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private bnP(Landroid/content/Context;Lcom/miui/appmanager/model/i;ZLjava/util/Map;J)V
    .locals 5

    invoke-virtual {p2, p3}, Lcom/miui/appmanager/model/i;->bho(Z)V

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/miui/appmanager/model/i;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/v;

    iget-boolean v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUW:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0708bf

    invoke-virtual {p0, v2}, Lcom/miui/appmanager/AppManagerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnm(Lcom/miui/appmanager/v;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lmiui/text/ExtraTextUtils;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/appmanager/model/i;->bhu(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnm(Lcom/miui/appmanager/v;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lmiui/text/ExtraTextUtils;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/appmanager/model/i;->bhu(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p5, p6}, Lcom/miui/appmanager/AppManagerMainActivity;->bnq(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/appmanager/model/i;->bhu(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private bnQ(ILjava/lang/String;J)V
    .locals 5

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVO:Lcom/miui/appmanager/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVO:Lcom/miui/appmanager/u;

    invoke-virtual {v0}, Lcom/miui/appmanager/u;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUB:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/model/i;

    iget v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUM:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUM:I

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->bhi()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-eqz v2, :cond_2

    invoke-virtual {v0, p3, p4}, Lcom/miui/appmanager/model/i;->bhr(J)V

    iget-boolean v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUW:Z

    if-eqz v2, :cond_4

    const v2, 0x7f070893

    invoke-virtual {p0, v2}, Lcom/miui/appmanager/AppManagerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p3, p4}, Lmiui/text/ExtraTextUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/appmanager/model/i;->bhs(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVg:Z

    :cond_2
    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUM:I

    iget v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVu:I

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVg:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVs:Lcom/miui/appmanager/w;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/appmanager/w;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    monitor-exit v1

    return-void

    :cond_4
    :try_start_2
    invoke-static {p0, p3, p4}, Lmiui/text/ExtraTextUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/appmanager/model/i;->bhs(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVs:Lcom/miui/appmanager/w;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/miui/appmanager/w;->sendEmptyMessage(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private bnR(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUY:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "settingsShowAd"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AppManagerMainActivity"

    const-string/jumbo v3, "getSettingsShowAd error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method private bnS(Ljava/util/List;)V
    .locals 1

    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUN:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/miui/appmanager/AppManagerMainActivity;->aUF:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/miui/appmanager/AppManagerMainActivity;->aUE:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/miui/appmanager/AppManagerMainActivity;->aUC:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/miui/appmanager/AppManagerMainActivity;->aUG:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/miui/appmanager/AppManagerMainActivity;->aUD:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private bnT()V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVj:Lcom/miui/appmanager/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVj:Lcom/miui/appmanager/k;

    invoke-virtual {v0}, Lcom/miui/appmanager/k;->bmx()V

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVq:Lcom/miui/securityscan/cards/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVq:Lcom/miui/securityscan/cards/i;

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUK:Lcom/miui/securityscan/cards/k;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/i;->Dl(Lcom/miui/securityscan/cards/k;)V

    :cond_1
    invoke-static {p0}, Lcom/miui/securityscan/cards/f;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/f;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUU:Lcom/miui/securityscan/cards/g;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/f;->CO(Lcom/miui/securityscan/cards/g;)V

    return-void
.end method

.method private bnU(Ljava/util/List;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/miui/appmanager/aw;

    invoke-direct {v1, p0, v0}, Lcom/miui/appmanager/aw;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/List;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/miui/appmanager/aw;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private bnV()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVF:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUS:Landroid/view/MenuItem;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUS:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVF:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUS:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVF:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private bnW(Ljava/lang/String;I)V
    .locals 3

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUB:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUB:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUA:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/appmanager/AppManagerMainActivity;->bnJ(Ljava/util/List;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUy:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/appmanager/AppManagerMainActivity;->bnJ(Ljava/util/List;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVB:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/appmanager/AppManagerMainActivity;->bnJ(Ljava/util/List;Ljava/lang/String;I)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUz:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUz:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p2, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUz:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->updateData()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private bnX(Ljava/util/List;)V
    .locals 3

    new-instance v0, Lcom/miui/appmanager/av;

    invoke-direct {v0, p0, p1}, Lcom/miui/appmanager/av;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/List;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/appmanager/av;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private bnY(Ljava/util/List;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVg:Z

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/appmanager/u;

    invoke-direct {v0, p0, p0, p1}, Lcom/miui/appmanager/u;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVO:Lcom/miui/appmanager/u;

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVO:Lcom/miui/appmanager/u;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/appmanager/u;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVh:Z

    goto :goto_0
.end method

.method static synthetic bnZ(Lcom/miui/appmanager/AppManagerMainActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUI:Ljava/util/List;

    return-object v0
.end method

.method private bnh()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVA:Lmiui/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0708b0

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    const v1, 0x7f0708b1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    new-instance v1, Lcom/miui/appmanager/at;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/at;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;)V

    const v2, 0x7f0708b2

    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    const v1, 0x7f07087e

    invoke-virtual {v0, v1, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVA:Lmiui/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVA:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private bni()Z
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    return v0
.end method

.method private bnj(Landroid/content/Context;)Ljava/util/List;
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bni()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "data_config"

    invoke-static {p1, v0}, Lcom/miui/securityscan/b/c;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/securityscan/b/c;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVi:Ljava/lang/String;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUY:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p1, v0, v5}, Lcom/miui/appmanager/model/AMDataModel;->bhI(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/Boolean;)Lcom/miui/appmanager/model/AMDataModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/miui/appmanager/model/AMDataModel;->bhJ()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "dataVsersionAm"

    invoke-virtual {v0}, Lcom/miui/appmanager/model/AMDataModel;->bhJ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lcom/miui/securityscan/b/c;->save(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {v0}, Lcom/miui/appmanager/model/AMDataModel;->bhK()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-lez v3, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/appmanager/model/e;

    if-eqz v0, :cond_1

    add-int/lit8 v0, v3, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/appmanager/model/e;

    if-eqz v0, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/model/k;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v5, "AppManagerMainActivity"

    const-string/jumbo v6, "JSONException when getAdList"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/appmanager/model/e;

    if-eqz v0, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/model/k;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/model/k;

    instance-of v4, v0, Lcom/miui/appmanager/model/c;

    if-eqz v4, :cond_4

    check-cast v0, Lcom/miui/appmanager/model/c;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/c;->bgY()Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/model/k;

    instance-of v4, v0, Lcom/miui/appmanager/model/a;

    if-eqz v4, :cond_5

    check-cast v0, Lcom/miui/appmanager/model/a;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/model/a;->bgE(Z)V

    goto :goto_3

    :cond_6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/model/k;

    instance-of v4, v0, Lcom/miui/appmanager/model/a;

    if-nez v4, :cond_7

    instance-of v0, v0, Lcom/miui/appmanager/model/s;

    if-eqz v0, :cond_a

    :cond_7
    add-int/lit8 v0, v1, 0x1

    :goto_5
    move v1, v0

    goto :goto_4

    :cond_8
    if-gtz v1, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    return-object v0

    :cond_9
    move-object v0, v2

    goto :goto_6

    :cond_a
    move v0, v1

    goto :goto_5

    :cond_b
    move v0, v1

    goto :goto_2

    :cond_c
    move-object v0, v2

    goto :goto_6
.end method

.method private bnk(Ljava/lang/String;I)I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUV:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AppManagerMainActivity"

    const-string/jumbo v3, "getApplicationEnabledSetting error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method private bnm(Lcom/miui/appmanager/v;)J
    .locals 8

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/miui/appmanager/v;->aVX:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [I

    move v1, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v6, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-wide v0, v4

    :goto_1
    :try_start_1
    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-wide v4, v3, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v6, 0x400

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-wide v0, v4

    :cond_1
    :goto_2
    return-wide v0

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_2
    move-wide v0, v4

    goto :goto_2
.end method

.method private bnn()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUN:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "running"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "app_name"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "frequency"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "storage"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "installtime"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private bno()Landroid/util/SparseArray;
    .locals 9

    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVQ:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v3, v2, :cond_1

    sget-boolean v2, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "com.mobiletools.systemhelper"

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_2
    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/appmanager/v;

    iget-object v7, v2, Lcom/miui/appmanager/v;->aVX:Ljava/util/ArrayList;

    iget v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-virtual {v4, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v7, v7, v3

    new-instance v8, Lcom/miui/appmanager/v;

    invoke-direct {v8, p0, v2}, Lcom/miui/appmanager/v;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/ArrayList;)V

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    return-object v4
.end method

.method private bnp(Ljava/util/List;II)Ljava/util/List;
    .locals 1

    if-ltz p2, :cond_0

    if-le p2, p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt p3, v0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private bnq(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v8, 0x1e

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/32 v4, 0x5265c00

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const v0, 0x7f070885

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    const v0, 0x7f070886

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide v2, 0x9a7ec800L

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    div-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f0c0050

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-wide v2, 0x73df16000L

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    div-long/2addr v0, v4

    div-long/2addr v0, v8

    long-to-int v0, v0

    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f0c0051

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    div-long/2addr v0, v4

    div-long/2addr v0, v8

    const-wide/16 v2, 0xc

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f0c0052

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bnr(Landroid/util/SparseArray;Ljava/lang/String;I)J
    .locals 6

    const-wide/16 v2, -0x1

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v4, 0x125e5770400L

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    move-wide v0, v2

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method

.method private bns(Ljava/util/List;)V
    .locals 2

    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVu:I

    iput v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    add-int/lit8 v0, v0, 0x14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVu:I

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVd:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUN:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVh:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->updateData()V

    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUR:I

    :goto_2
    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    iget v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVu:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    iget v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVu:I

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->bnp(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnY(Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    add-int/lit8 v0, v0, 0x14

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVr:Lcom/miui/appmanager/p;

    invoke-virtual {v0}, Lcom/miui/appmanager/p;->notifyDataSetChanged()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUR:I

    goto :goto_2
.end method

.method private bnt(Ljava/util/List;)V
    .locals 2

    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVu:I

    iput v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    add-int/lit8 v0, v0, 0x14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVu:I

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVd:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUN:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVh:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->updateData()V

    :cond_1
    :goto_1
    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    iget v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVu:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    iget v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVu:I

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->bnp(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnY(Ljava/util/List;)V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    add-int/lit8 v0, v0, 0x14

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUR:I

    goto :goto_1
.end method

.method private bnu()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUP:Ljava/util/List;

    const v0, 0x7f02003a

    const v1, 0x7f020037

    const v2, 0x7f020038

    const v3, 0x7f02003b

    const v4, 0x7f020039

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUP:Ljava/util/List;

    new-instance v4, Lcom/miui/appmanager/widget/f;

    aget v5, v1, v0

    aget-object v6, v2, v0

    invoke-direct {v4, v5, v6}, Lcom/miui/appmanager/widget/f;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bnv(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUM:I

    iput v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVu:I

    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVu:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVu:I

    :cond_0
    return-void
.end method

.method private bnw()V
    .locals 5

    new-instance v0, Landroid/text/SpannableString;

    const v1, 0x7f0708d1

    invoke-virtual {p0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/miui/appmanager/aB;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/aB;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVC:Lcom/miui/appmanager/model/g;

    invoke-virtual {v1, v0}, Lcom/miui/appmanager/model/g;->bhb(Landroid/text/SpannableString;)V

    return-void
.end method

.method private bnx(Ljava/lang/String;I)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string/jumbo v2, "com.xiaomi.mipicks"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/appmanager/AppManagerMainActivity;->bnk(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    if-ne v2, v0, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private bny()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "enter_way"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private bnz(Landroid/content/Context;)Lcom/miui/appmanager/r;
    .locals 14

    const/16 v13, 0x3e7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/miui/common/b/q;->getInstance()Lcom/nostra13/universalimageloader/core/l;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUT:Lcom/nostra13/universalimageloader/core/l;

    invoke-static {p1}, Lcom/miui/securityscan/cards/i;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/i;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVq:Lcom/miui/securityscan/cards/i;

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUL:Lcom/miui/appmanager/i;

    invoke-virtual {v0}, Lcom/miui/appmanager/i;->bmi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVM:Z

    invoke-static {}, Lcom/miui/securityscan/c;->OA()I

    move-result v0

    iput v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVN:I

    new-instance v5, Lcom/miui/appmanager/r;

    invoke-direct {v5}, Lcom/miui/appmanager/r;-><init>()V

    invoke-static {p1}, Lcom/miui/common/h/b;->getInstance(Landroid/content/Context;)Lcom/miui/common/h/b;

    move-result-object v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/miui/common/h/b;->aNk()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v5, Lcom/miui/appmanager/r;->aUz:Ljava/util/List;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/miui/appmanager/h;->blY(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVx:Landroid/content/pm/PackageManager;

    const/16 v1, 0x40

    invoke-static {v0, v1, v13}, Lcom/miui/appmanager/n;->bmQ(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, v5, Lcom/miui/appmanager/r;->aUz:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v5, Lcom/miui/appmanager/r;->aUz:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bno()Landroid/util/SparseArray;

    move-result-object v7

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVQ:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v8, v5, Lcom/miui/appmanager/r;->aUB:Landroid/util/SparseArray;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v8, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVx:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVG:Ljava/util/HashSet;

    invoke-static {p1, v0, v1, v2}, Lcom/miui/appmanager/h;->blS(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;Ljava/util/HashSet;)Landroid/util/SparseArray;

    move-result-object v8

    iget-object v0, v5, Lcom/miui/appmanager/r;->aUz:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    move v2, v3

    :goto_2
    sget-object v1, Lcom/miui/appmanager/AppManagerMainActivity;->aUH:Ljava/util/List;

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_3
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    new-instance v11, Lcom/miui/appmanager/model/i;

    invoke-direct {v11}, Lcom/miui/appmanager/model/i;-><init>()V

    invoke-virtual {v11, v0}, Lcom/miui/appmanager/model/i;->bhm(Landroid/content/pm/PackageInfo;)V

    if-ne v10, v13, :cond_a

    const-string/jumbo v1, "pkg_icon_xspace://"

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v11, v1}, Lcom/miui/appmanager/model/i;->bhl(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_b

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    :goto_4
    invoke-virtual {v11, v1}, Lcom/miui/appmanager/model/i;->bho(Z)V

    invoke-virtual {v11, v2}, Lcom/miui/appmanager/model/i;->bhp(Z)V

    iget-object v1, v5, Lcom/miui/appmanager/r;->aUB:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_4

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_5
    sget-object v1, Lcom/miui/appmanager/h;->aTX:Ljava/util/ArrayList;

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcom/miui/appmanager/h;->aTY:Ljava/util/List;

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    xor-int/lit8 v1, v2, 0x1

    :goto_5
    if-eqz v1, :cond_6

    iget-object v2, v5, Lcom/miui/appmanager/r;->aUA:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-eqz v1, :cond_8

    :cond_7
    :try_start_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/miui/common/h/b;->aNl(Ljava/lang/String;)Lcom/miui/common/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/h/a;->aNj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/miui/appmanager/model/i;->setLabel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_6
    iget-object v0, v5, Lcom/miui/appmanager/r;->aUy:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    move v2, v4

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v1, "pkg_icon://"

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_b
    move v1, v4

    goto :goto_4

    :cond_c
    move v1, v3

    goto :goto_5

    :cond_d
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUY:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "app_manager_adv"

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/j;->Jd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVi:Ljava/lang/String;

    iget-object v0, v5, Lcom/miui/appmanager/r;->aUx:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/appmanager/AppManagerMainActivity;->bnj(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_e
    return-object v5

    :catch_0
    move-exception v0

    goto :goto_6
.end method

.method static synthetic boA(Lcom/miui/appmanager/AppManagerMainActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUN:I

    return p1
.end method

.method static synthetic boB(Lcom/miui/appmanager/AppManagerMainActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUR:I

    return p1
.end method

.method static synthetic boC(Lcom/miui/appmanager/AppManagerMainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUZ:Z

    return p1
.end method

.method static synthetic boD(Lcom/miui/appmanager/AppManagerMainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVd:Z

    return p1
.end method

.method static synthetic boE(Lcom/miui/appmanager/AppManagerMainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVe:Z

    return p1
.end method

.method static synthetic boF(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic boG(Lcom/miui/appmanager/AppManagerMainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVv:Z

    return p1
.end method

.method static synthetic boH(Lcom/miui/appmanager/AppManagerMainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVI:Z

    return p1
.end method

.method static synthetic boI(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/util/SparseArray;
    .locals 1

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bno()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic boJ(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/util/SparseArray;
    .locals 1

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnD()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic boK(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/appmanager/AppManagerMainActivity;->bnx(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic boL(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/appmanager/AppManagerMainActivity;->bnR(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic boM(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/content/Context;)Lcom/miui/appmanager/r;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/appmanager/AppManagerMainActivity;->bnz(Landroid/content/Context;)Lcom/miui/appmanager/r;

    move-result-object v0

    return-object v0
.end method

.method static synthetic boN(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/appmanager/AppManagerMainActivity;->bnk(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic boO(Lcom/miui/appmanager/AppManagerMainActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic boP(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/appmanager/AppManagerMainActivity;->bnj(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic boQ(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/util/SparseArray;Ljava/lang/String;I)J
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/appmanager/AppManagerMainActivity;->bnr(Landroid/util/SparseArray;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic boR(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/AppManagerMainActivity;->bns(Ljava/util/List;)V

    return-void
.end method

.method static synthetic boS(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/AppManagerMainActivity;->bnt(Ljava/util/List;)V

    return-void
.end method

.method static synthetic boT(Lcom/miui/appmanager/AppManagerMainActivity;Lcom/miui/appmanager/p;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/appmanager/AppManagerMainActivity;->bnE(Lcom/miui/appmanager/p;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic boU(Lcom/miui/appmanager/AppManagerMainActivity;Lcom/miui/appmanager/p;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/appmanager/AppManagerMainActivity;->bnF(Lcom/miui/appmanager/p;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic boV(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/appmanager/AppManagerMainActivity;->bnH(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic boW(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnI()V

    return-void
.end method

.method static synthetic boX(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnK()V

    return-void
.end method

.method static synthetic boY(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnL()V

    return-void
.end method

.method static synthetic boZ(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnM()V

    return-void
.end method

.method static synthetic boa(Lcom/miui/appmanager/AppManagerMainActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUJ:Ljava/util/List;

    return-object v0
.end method

.method static synthetic bob(Lcom/miui/appmanager/AppManagerMainActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUN:I

    return v0
.end method

.method static synthetic boc(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/widget/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUO:Lcom/miui/appmanager/widget/a;

    return-object v0
.end method

.method static synthetic bod(Lcom/miui/appmanager/AppManagerMainActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUP:Ljava/util/List;

    return-object v0
.end method

.method static synthetic boe(Lcom/miui/appmanager/AppManagerMainActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUR:I

    return v0
.end method

.method static synthetic bof(Lcom/miui/appmanager/AppManagerMainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUY:Z

    return v0
.end method

.method static synthetic bog(Lcom/miui/appmanager/AppManagerMainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUZ:Z

    return v0
.end method

.method static synthetic boh(Lcom/miui/appmanager/AppManagerMainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVd:Z

    return v0
.end method

.method static synthetic boi(Lcom/miui/appmanager/AppManagerMainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVe:Z

    return v0
.end method

.method static synthetic boj(Lcom/miui/appmanager/AppManagerMainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVh:Z

    return v0
.end method

.method static synthetic bok(Lcom/miui/appmanager/AppManagerMainActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bol(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/r;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    return-object v0
.end method

.method static synthetic bom(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/model/n;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVn:Lcom/miui/appmanager/model/n;

    return-object v0
.end method

.method static synthetic bon(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVo:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic boo(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/s;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVp:Lcom/miui/appmanager/s;

    return-object v0
.end method

.method static synthetic bop(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/p;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVr:Lcom/miui/appmanager/p;

    return-object v0
.end method

.method static synthetic boq(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/w;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVs:Lcom/miui/appmanager/w;

    return-object v0
.end method

.method static synthetic bor(Lcom/miui/appmanager/AppManagerMainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVt:Z

    return v0
.end method

.method static synthetic bos(Lcom/miui/appmanager/AppManagerMainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVv:Z

    return v0
.end method

.method static synthetic bot(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVx:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic bou(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic bov(Lcom/miui/appmanager/AppManagerMainActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mSearchView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic bow(Lcom/miui/appmanager/AppManagerMainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    return v0
.end method

.method static synthetic box(Lcom/miui/appmanager/AppManagerMainActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVH:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic boy(Lcom/miui/appmanager/AppManagerMainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVI:Z

    return v0
.end method

.method static synthetic boz(Lcom/miui/appmanager/AppManagerMainActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVK:Ljava/util/List;

    return-object v0
.end method

.method static synthetic bpa(Lcom/miui/appmanager/AppManagerMainActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/AppManagerMainActivity;->bnN(Z)V

    return-void
.end method

.method static synthetic bpb(Lcom/miui/appmanager/AppManagerMainActivity;ILjava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/appmanager/AppManagerMainActivity;->bnO(ILjava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic bpc(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/content/Context;Lcom/miui/appmanager/model/i;ZLjava/util/Map;J)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/miui/appmanager/AppManagerMainActivity;->bnP(Landroid/content/Context;Lcom/miui/appmanager/model/i;ZLjava/util/Map;J)V

    return-void
.end method

.method static synthetic bpd(Lcom/miui/appmanager/AppManagerMainActivity;ILjava/lang/String;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/appmanager/AppManagerMainActivity;->bnQ(ILjava/lang/String;J)V

    return-void
.end method

.method static synthetic bpe(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->updateData()V

    return-void
.end method

.method static synthetic bpf(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/AppManagerMainActivity;->bnX(Ljava/util/List;)V

    return-void
.end method

.method static synthetic bpg(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/AppManagerMainActivity;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method private initData()V
    .locals 2

    const-string/jumbo v0, "usagestats"

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVP:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVx:Landroid/content/pm/PackageManager;

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUV:Landroid/content/pm/IPackageManager;

    new-instance v0, Lcom/miui/appmanager/i;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUL:Lcom/miui/appmanager/i;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVQ:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUL:Lcom/miui/appmanager/i;

    invoke-virtual {v0}, Lcom/miui/appmanager/i;->bmj()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    new-instance v0, Lcom/miui/appmanager/p;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVr:Lcom/miui/appmanager/p;

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVr:Lcom/miui/appmanager/p;

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVL:Lcom/miui/appmanager/model/p;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/p;->add(Ljava/lang/Object;)V

    const v0, 0x7f0a00c0

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVo:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVo:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVr:Lcom/miui/appmanager/p;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVo:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVo:Landroid/widget/ListView;

    new-instance v1, Lcom/miui/appmanager/ax;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/ax;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const v0, 0x7f0a00bf

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mSearchView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mSearchView:Landroid/view/View;

    const v1, 0x1020009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mSearchInputView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVn:Lcom/miui/appmanager/model/n;

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVm:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/model/n;->bhE(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/appmanager/widget/a;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/widget/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUO:Lcom/miui/appmanager/widget/a;

    const v0, 0x7f0a00c1

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVz:Lmiui/widget/ProgressBar;

    const v0, 0x7f0a00c2

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mEmptyView:Landroid/view/View;

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnC()V

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUW:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/appmanager/h;->blT()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/miui/appmanager/h;->bmb(I)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnu()V

    return-void
.end method

.method private register()V
    .locals 2

    new-instance v0, Lcom/miui/appmanager/k;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVj:Lcom/miui/appmanager/k;

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVj:Lcom/miui/appmanager/k;

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVw:Lcom/miui/appmanager/o;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/k;->bmw(Lcom/miui/appmanager/o;)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVq:Lcom/miui/securityscan/cards/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVq:Lcom/miui/securityscan/cards/i;

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUK:Lcom/miui/securityscan/cards/k;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/i;->Dk(Lcom/miui/securityscan/cards/k;)V

    :cond_0
    invoke-static {p0}, Lcom/miui/securityscan/cards/f;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/f;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUU:Lcom/miui/securityscan/cards/g;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/f;->CM(Lcom/miui/securityscan/cards/g;)V

    return-void
.end method

.method private updateData()V
    .locals 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mSearchActionMode:Lmiui/view/SearchActionMode;

    invoke-interface {v0}, Lmiui/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_b

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVL:Lcom/miui/appmanager/model/p;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVr:Lcom/miui/appmanager/p;

    invoke-virtual {v0}, Lcom/miui/appmanager/p;->clear()V

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_1
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUJ:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUy:Ljava/util/List;

    :goto_2
    invoke-direct {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnS(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVn:Lcom/miui/appmanager/model/n;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUy:Ljava/util/List;

    :goto_3
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVr:Lcom/miui/appmanager/p;

    invoke-virtual {v0, v3}, Lcom/miui/appmanager/p;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_5
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v2, v2, Lcom/miui/appmanager/r;->aUy:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const v1, 0x7f0c0046

    invoke-virtual {v3, v1, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mSearchInputView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :goto_7
    return-void

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUA:Ljava/util/ArrayList;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUA:Ljava/util/ArrayList;

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVr:Lcom/miui/appmanager/p;

    invoke-virtual {v0, v3}, Lcom/miui/appmanager/p;->addAll(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mEmptyView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVa:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_8

    :cond_9
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v2, v2, Lcom/miui/appmanager/r;->aUA:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVr:Lcom/miui/appmanager/p;

    invoke-virtual {v0}, Lcom/miui/appmanager/p;->clear()V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVB:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnS(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVr:Lcom/miui/appmanager/p;

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVB:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/p;->addAll(Ljava/util/Collection;)V

    goto :goto_7
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnL()V

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUy:Ljava/util/List;

    :goto_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/model/k;

    move-object v1, v0

    check-cast v1, Lcom/miui/appmanager/model/i;

    invoke-virtual {v1}, Lcom/miui/appmanager/model/i;->bhg()Lcom/miui/appmanager/b;

    move-result-object v3

    move-object v1, v0

    check-cast v1, Lcom/miui/appmanager/model/i;

    invoke-virtual {v1}, Lcom/miui/appmanager/model/i;->bhf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    if-eqz v3, :cond_0

    iget-object v1, v3, Lcom/miui/appmanager/b;->aRT:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v3, Lcom/miui/appmanager/b;->aRU:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVB:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v0, Lcom/miui/appmanager/model/i;

    invoke-virtual {v0, p1}, Lcom/miui/appmanager/model/i;->setSearchInput(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUA:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVr:Lcom/miui/appmanager/p;

    invoke-virtual {v0}, Lcom/miui/appmanager/p;->clear()V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVk:Lcom/miui/appmanager/model/l;

    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVB:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVB:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0c0047

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/model/l;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVr:Lcom/miui/appmanager/p;

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVk:Lcom/miui/appmanager/model/l;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/p;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVr:Lcom/miui/appmanager/p;

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVB:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/p;->addAll(Ljava/util/Collection;)V

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVC:Lcom/miui/appmanager/model/g;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVr:Lcom/miui/appmanager/p;

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVC:Lcom/miui/appmanager/model/g;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/p;->add(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVr:Lcom/miui/appmanager/p;

    invoke-virtual {v0}, Lcom/miui/appmanager/p;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public bnG(Landroid/content/Loader;Lcom/miui/appmanager/r;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVa:Z

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVL:Lcom/miui/appmanager/model/p;

    iget-boolean v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVM:Z

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/model/p;->bhO(Z)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVL:Lcom/miui/appmanager/model/p;

    iget v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVN:I

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/model/p;->bhP(I)V

    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVH:[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVn:Lcom/miui/appmanager/model/n;

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVH:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUN:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/model/n;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVn:Lcom/miui/appmanager/model/n;

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/model/n;->setIcon(I)V

    iput-object p2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUJ:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v1, v1, Lcom/miui/appmanager/r;->aUx:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUN:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUN:I

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->updateData()V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v1, v1, Lcom/miui/appmanager/r;->aUy:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUI:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v1, v1, Lcom/miui/appmanager/r;->aUA:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVK:Ljava/util/List;

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUI:Ljava/util/List;

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnv(Ljava/util/List;)V

    iput-boolean v4, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVh:Z

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUy:Ljava/util/List;

    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnA(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUI:Ljava/util/List;

    iget v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    iget v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVu:I

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/appmanager/AppManagerMainActivity;->bnp(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnY(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnB()V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVz:Lmiui/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVc:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->register()V

    iput-boolean v3, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVc:Z

    :cond_3
    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnw()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVK:Ljava/util/List;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUA:Ljava/util/ArrayList;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVK:Ljava/util/List;

    iget v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    iget v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVu:I

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/appmanager/AppManagerMainActivity;->bnp(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method public bnf(Ljava/lang/String;Lcom/miui/appmanager/model/a;)V
    .locals 2

    invoke-virtual {p2}, Lcom/miui/appmanager/model/a;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/securityscan/d/e;

    invoke-direct {v1, p1, p2}, Lcom/miui/securityscan/d/e;-><init>(Ljava/lang/String;Lcom/miui/appmanager/model/a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/securityscan/d/b;->Lp(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public bng()V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->updateData()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUX:Z

    :cond_0
    return-void
.end method

.method public bnl(Ljava/lang/String;)Lcom/miui/appmanager/b;
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Lcom/miui/appmanager/b;

    invoke-direct {v1}, Lcom/miui/appmanager/b;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/miui/appmanager/h;->bmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lmiui/text/ChinesePinyinConverter;->getInstance()Lmiui/text/ChinesePinyinConverter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/text/ChinesePinyinConverter;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/text/ChinesePinyinConverter$Token;

    iget-object v3, v0, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, v1, Lcom/miui/appmanager/b;->aRT:Ljava/lang/StringBuffer;

    iget-object v4, v0, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v1, Lcom/miui/appmanager/b;->aRU:Ljava/lang/StringBuffer;

    iget-object v0, v0, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public exitSearchMode()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mSearchActionMode:Lmiui/view/SearchActionMode;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mSearchActionMode:Lmiui/view/SearchActionMode;

    :cond_0
    return-void
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mSearchActionMode:Lmiui/view/SearchActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mSearchView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->startSearchMode(Lmiui/view/SearchActionMode$Callback;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUO:Lcom/miui/appmanager/widget/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUO:Lcom/miui/appmanager/widget/a;

    invoke-virtual {v0}, Lcom/miui/appmanager/widget/a;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x79

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bny()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUY:Z

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUY:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/appmanager/j;->bmn(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->setContentView(I)V

    if-eqz p1, :cond_1

    const-string/jumbo v0, "current_sory_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUN:I

    :cond_1
    const-string/jumbo v0, "zh_CN"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUW:Z

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->initData()V

    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v5, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v1, v5, v4, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_2
    invoke-static {}, Lcom/miui/b/b;->getInstance()Lcom/miui/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUQ:Lcom/miui/b/b;

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUQ:Lcom/miui/b/b;

    invoke-virtual {v0, p0}, Lcom/miui/b/b;->bxo(Ljava/lang/Object;)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUY:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/miui/appmanager/s;

    invoke-direct {v0, p0, p0}, Lcom/miui/appmanager/s;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;Lcom/miui/appmanager/AppManagerMainActivity;)V

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVp:Lcom/miui/appmanager/s;

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVp:Lcom/miui/appmanager/s;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/appmanager/s;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    new-instance v0, Lcom/miui/appmanager/ay;

    invoke-direct {v0, p0, p0}, Lcom/miui/appmanager/ay;-><init>(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a041c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVF:Landroid/view/MenuItem;

    const v0, 0x7f0a041d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUS:Landroid/view/MenuItem;

    const v0, 0x7f0a0420

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVD:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnV()V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnM()V

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVc:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnT()V

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVs:Lcom/miui/appmanager/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/w;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVs:Lcom/miui/appmanager/w;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/w;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUL:Lcom/miui/appmanager/i;

    invoke-virtual {v0}, Lcom/miui/appmanager/i;->bmg()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUX:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const-string/jumbo v0, "app_manager_adv"

    invoke-static {p0, v0}, Lcom/miui/securityscan/utils/j;->Jc(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVO:Lcom/miui/appmanager/u;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVO:Lcom/miui/appmanager/u;

    invoke-virtual {v0, v2}, Lcom/miui/appmanager/u;->cancel(Z)Z

    :cond_3
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVp:Lcom/miui/appmanager/s;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVp:Lcom/miui/appmanager/s;

    invoke-virtual {v0, v2}, Lcom/miui/appmanager/s;->cancel(Z)Z

    :cond_4
    invoke-static {}, Lcom/miui/appmanager/j;->bmu()V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUQ:Lcom/miui/b/b;

    invoke-virtual {v0, p0}, Lcom/miui/b/b;->bxp(Ljava/lang/Object;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/p;

    invoke-virtual {v0, p3}, Lcom/miui/appmanager/p;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/appmanager/model/i;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p3}, Lcom/miui/appmanager/p;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/model/i;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "package_name"

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.extra.USER_ID"

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "size"

    invoke-virtual {v0}, Lcom/miui/appmanager/model/i;->bhi()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v0, "enter_from_appmanagermainactivity"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "enter_way"

    const-string/jumbo v2, "00001"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "enter_way"

    const-string/jumbo v2, "00002"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/miui/appmanager/r;

    invoke-virtual {p0, p1, p2}, Lcom/miui/appmanager/AppManagerMainActivity;->bnG(Landroid/content/Loader;Lcom/miui/appmanager/r;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iput-boolean v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVt:Z

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct {p0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->bnN(Z)V

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "system_app"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bib(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/appmanager/AppManagerSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v0, "settings"

    invoke-static {v0}, Lcom/miui/appmanager/a/a;->bib(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.HOME_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.PREFERRED_APPLICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnh()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a041c
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/miui/common/a/d;->onPause()V

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnM()V

    iput-boolean v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVb:Z

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVs:Lcom/miui/appmanager/w;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/w;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVA:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVA:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVA:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/miui/common/a/d;->onResume()V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVs:Lcom/miui/appmanager/w;

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/w;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVs:Lcom/miui/appmanager/w;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/appmanager/w;->sendEmptyMessageDelayed(IJ)Z

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVb:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUy:Ljava/util/List;

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnv(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUI:Ljava/util/List;

    iget v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    iget v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVu:I

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/appmanager/AppManagerMainActivity;->bnp(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnY(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVL:Lcom/miui/appmanager/model/p;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/p;->bhN()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUL:Lcom/miui/appmanager/i;

    invoke-virtual {v1}, Lcom/miui/appmanager/i;->bmi()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVL:Lcom/miui/appmanager/model/p;

    invoke-virtual {v0}, Lcom/miui/appmanager/model/p;->bhM()I

    move-result v0

    invoke-static {}, Lcom/miui/securityscan/c;->OA()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVL:Lcom/miui/appmanager/model/p;

    iget-object v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUL:Lcom/miui/appmanager/i;

    invoke-virtual {v1}, Lcom/miui/appmanager/i;->bmi()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/model/p;->bhO(Z)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVL:Lcom/miui/appmanager/model/p;

    invoke-static {}, Lcom/miui/securityscan/c;->OA()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/model/p;->bhP(I)V

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVr:Lcom/miui/appmanager/p;

    invoke-virtual {v0}, Lcom/miui/appmanager/p;->notifyDataSetChanged()V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVE:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUy:Ljava/util/List;

    :goto_2
    invoke-direct {p0, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnU(Ljava/util/List;)V

    :cond_2
    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnM()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUA:Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVK:Ljava/util/List;

    iget v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVy:I

    iget v2, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVu:I

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/appmanager/AppManagerMainActivity;->bnp(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aVl:Lcom/miui/appmanager/r;

    iget-object v0, v0, Lcom/miui/appmanager/r;->aUA:Ljava/util/ArrayList;

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "current_sory_type"

    iget v1, p0, Lcom/miui/appmanager/AppManagerMainActivity;->aUN:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/a/d;->onStop()V

    invoke-direct {p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnM()V

    return-void
.end method

.method public startSearchMode(Lmiui/view/SearchActionMode$Callback;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmiui/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    check-cast v0, Lmiui/view/SearchActionMode;

    iput-object v0, p0, Lcom/miui/appmanager/AppManagerMainActivity;->mSearchActionMode:Lmiui/view/SearchActionMode;

    :cond_0
    return-void
.end method
