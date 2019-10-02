.class public final Lcom/miui/video/global/activity/HomeActivity;
.super Lcom/miui/video/service/base/VideoBaseAppCompatActivity;
.source "HomeActivity.kt"

# interfaces
.implements Lcom/miui/video/global/utils/AppPermissionInitUtil$ICheckResultListener;
.implements Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;
.implements Lcom/miui/video/base/utils/ActvityUpdateUtils$IActivityDestroyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/global/activity/HomeActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/service/base/VideoBaseAppCompatActivity<",
        "Lcom/miui/video/common/library/base/impl/IPresenter<",
        "Lcom/miui/video/common/library/base/impl/IView;",
        ">;>;",
        "Lcom/miui/video/global/utils/AppPermissionInitUtil$ICheckResultListener;",
        "Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;",
        "Lcom/miui/video/base/utils/ActvityUpdateUtils$IActivityDestroyCallback;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\r\u0018\u0000 42\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u00012\u00020\u00042\u00020\u00052\u00020\u0006:\u00014B\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J\u0008\u0010\u0012\u001a\u00020\u0010H\u0016J\u0008\u0010\u0013\u001a\u00020\u0010H\u0002J\u0008\u0010\u0014\u001a\u00020\u0010H\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\tH\u0002J\"\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\u0008\u0010\u001e\u001a\u00020\u0010H\u0016J\u0008\u0010\u001f\u001a\u00020\u0010H\u0016J\u0012\u0010 \u001a\u00020\u00102\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0014J\u0008\u0010#\u001a\u00020\u0010H\u0014J-\u0010$\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u001a2\u000e\u0010%\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\t0&2\u0006\u0010\'\u001a\u00020(H\u0016\u00a2\u0006\u0002\u0010)J$\u0010*\u001a\u00020\u00102\u0006\u0010+\u001a\u00020\u00162\u0008\u0010,\u001a\u0004\u0018\u00010\t2\u0008\u0010-\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010.\u001a\u00020\u0010H\u0014J\u0008\u0010/\u001a\u00020\u0010H\u0014J\u0008\u00100\u001a\u00020\u0010H\u0016J\u0010\u00101\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\tH\u0002J\u0008\u00102\u001a\u00020\u001aH\u0014J\u0010\u00103\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\tH\u0002R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lcom/miui/video/global/activity/HomeActivity;",
        "Lcom/miui/video/service/base/VideoBaseAppCompatActivity;",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        "Lcom/miui/video/common/library/base/impl/IView;",
        "Lcom/miui/video/global/utils/AppPermissionInitUtil$ICheckResultListener;",
        "Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;",
        "Lcom/miui/video/base/utils/ActvityUpdateUtils$IActivityDestroyCallback;",
        "()V",
        "lastTab",
        "",
        "lastTrackerTab",
        "mPermissionInitUtil",
        "Lcom/miui/video/global/utils/AppPermissionInitUtil;",
        "vTabHost",
        "Lcom/miui/video/common/library/widget/ext/BaseTabHost;",
        "changeToLastTab",
        "",
        "checkVersion",
        "initFindViews",
        "initTabs",
        "initViewsValue",
        "isOffline",
        "",
        "tag",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onAllPermissionEnable",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onRequestPermissionsResult",
        "permissions",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onShowUpdateView",
        "hasUpdate",
        "content",
        "targetVersionName",
        "onStart",
        "onStop",
        "plusMainActivityDestroy",
        "preAddMomentFragment",
        "setLayoutResId",
        "switchTrackTag",
        "Companion",
        "globalvideo_gpRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/video/global/activity/HomeActivity$Companion;

.field public static final DEFAULT_TAB_INDEX:I = 0x1

.field private static INDONESIA_OFFLINE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsShowLanguage:Z


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private lastTab:Ljava/lang/String;

.field private lastTrackerTab:Ljava/lang/String;

.field private mPermissionInitUtil:Lcom/miui/video/global/utils/AppPermissionInitUtil;

.field private vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miui/video/global/activity/HomeActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/global/activity/HomeActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/global/activity/HomeActivity;->Companion:Lcom/miui/video/global/activity/HomeActivity$Companion;

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_show_language_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/video/global/activity/HomeActivity;->mIsShowLanguage:Z

    const-string v0, "TAB_VIDEO"

    const-string v1, "TAB_MOMENT"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/video/global/activity/HomeActivity;->INDONESIA_OFFLINE:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;-><init>()V

    const-string v0, "TAB_ONLINE"

    iput-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->lastTab:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getLastTab$p(Lcom/miui/video/global/activity/HomeActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/global/activity/HomeActivity;->lastTab:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getLastTrackerTab$p(Lcom/miui/video/global/activity/HomeActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/global/activity/HomeActivity;->lastTrackerTab:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getVTabHost$p(Lcom/miui/video/global/activity/HomeActivity;)Lcom/miui/video/common/library/widget/ext/BaseTabHost;
    .locals 1

    iget-object p0, p0, Lcom/miui/video/global/activity/HomeActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    if-nez p0, :cond_0

    const-string v0, "vTabHost"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setLastTab$p(Lcom/miui/video/global/activity/HomeActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/activity/HomeActivity;->lastTab:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setLastTrackerTab$p(Lcom/miui/video/global/activity/HomeActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/activity/HomeActivity;->lastTrackerTab:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setVTabHost$p(Lcom/miui/video/global/activity/HomeActivity;Lcom/miui/video/common/library/widget/ext/BaseTabHost;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/global/activity/HomeActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    return-void
.end method

.method public static final synthetic access$switchTrackTag(Lcom/miui/video/global/activity/HomeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/global/activity/HomeActivity;->switchTrackTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final changeToLastTab()V
    .locals 2

    const-string v0, "changeToLastTab  "

    invoke-static {v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    if-nez v0, :cond_0

    const-string v1, "vTabHost"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/video/global/activity/HomeActivity;->lastTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    return-void
.end method

.method private final checkVersion()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/miui/video/service/update/AppUpdateUtils;->get()Lcom/miui/video/service/update/AppUpdateUtils;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;->DELAY:Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/update/AppUpdateUtils;->checkVersion(Landroid/content/Context;Lcom/miui/video/service/update/AppUpdateUtils$CheckMode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private final initTabs()V
    .locals 15

    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    if-nez v0, :cond_0

    const-string v1, "vTabHost"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    if-nez v0, :cond_1

    const-string v2, "vTabHost"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/video/global/activity/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f09038b

    invoke-virtual {v0, v2, v3, v4}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V

    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    if-nez v0, :cond_2

    const-string v3, "vTabHost"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const-string v3, "vTabHost.tabWidget"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    if-nez v0, :cond_3

    const-string v3, "vTabHost"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->clearAllTabs()V

    const/4 v0, 0x5

    new-array v5, v0, [Lcom/miui/video/common/feed/ui/UITab;

    new-instance v3, Lcom/miui/video/common/feed/ui/UITab;

    invoke-direct {v3, v2}, Lcom/miui/video/common/feed/ui/UITab;-><init>(Landroid/content/Context;)V

    aput-object v3, v5, v1

    new-instance v3, Lcom/miui/video/common/feed/ui/UITab;

    invoke-direct {v3, v2}, Lcom/miui/video/common/feed/ui/UITab;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    aput-object v3, v5, v10

    new-instance v3, Lcom/miui/video/common/feed/ui/UITab;

    invoke-direct {v3, v2}, Lcom/miui/video/common/feed/ui/UITab;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    aput-object v3, v5, v4

    new-instance v3, Lcom/miui/video/common/feed/ui/UITab;

    invoke-direct {v3, v2}, Lcom/miui/video/common/feed/ui/UITab;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x3

    aput-object v3, v5, v6

    new-instance v3, Lcom/miui/video/common/feed/ui/UITab;

    invoke-direct {v3, v2}, Lcom/miui/video/common/feed/ui/UITab;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x4

    aput-object v3, v5, v2

    new-array v7, v0, [Ljava/lang/Integer;

    const v3, 0x7f100361

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    const v3, 0x7f100364

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v10

    const v3, 0x7f100365

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    const v3, 0x7f100363

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v6

    const v3, 0x7f100362

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    new-array v8, v0, [Ljava/lang/Integer;

    const v3, 0x7f080431

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v1

    const v3, 0x7f080434

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v10

    const v3, 0x7f080437

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v4

    const v3, 0x7f080433

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v6

    const v3, 0x7f080432

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v2

    new-array v9, v0, [Ljava/lang/Integer;

    const v3, 0x7f080314

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v1

    const v3, 0x7f08031d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v10

    const v3, 0x7f080320

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v4

    const v3, 0x7f08031a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v6

    const v3, 0x7f080317

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v2

    const-string v3, "TAB_LOCAL"

    const-string v11, "TAB_TRENDING"

    const-string v12, "TAB_VIDEO"

    const-string v13, "TAB_MOMENT"

    const-string v14, "TAB_ME"

    filled-new-array {v3, v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v11

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Lcom/miui/video/global/fragment/LocalFragment;

    aput-object v3, v0, v1

    const-class v3, Lcom/miui/video/biz/shortvideo/trending/fragment/TrendingFragment;

    aput-object v3, v0, v10

    const-class v3, Lcom/miui/video/biz/longvideo/fragment/LongVideoHomeMainFragment;

    aput-object v3, v0, v4

    const-class v3, Lcom/miui/video/biz/ugc/MomentFragment;

    aput-object v3, v0, v6

    const-class v3, Lcom/miui/video/global/fragment/PersonalFragment;

    aput-object v3, v0, v2

    invoke-static {}, Lcom/miui/video/framework/utils/SDKUtils;->equalAPI_23_MARSHMALLOW()Z

    move-result v2

    const v3, 0x7f06019a

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/global/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/video/global/activity/HomeActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    const-string v3, "resources.getColorStateL\u2026_color_white_blue, theme)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/miui/video/global/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const-string v3, "resources.getColorStateL\u2026elector_color_white_blue)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-string v3, "TAB_MOMENT"

    invoke-direct {p0, v3}, Lcom/miui/video/global/activity/HomeActivity;->isOffline(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/miui/video/global/activity/HomeActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    if-nez v3, :cond_5

    const-string v4, "vTabHost"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    const-string v4, "TAB_MOMENT"

    invoke-virtual {v3, v4}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-string v4, "vTabHost.newTabSpec(CCodes.LINK_TAB_MOMENT)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vTabHost.newTabSpec(CCodes.LINK_TAB_MOMENT).tag"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/miui/video/global/activity/HomeActivity;->preAddMomentFragment(Ljava/lang/String;)V

    :cond_6
    array-length v3, v5

    :goto_1
    if-ge v1, v3, :cond_a

    aget-object v4, v5, v1

    aget-object v6, v8, v1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/miui/video/global/activity/HomeActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aget-object v12, v7, v1

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/miui/video/global/activity/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v4, v6, v12, v2}, Lcom/miui/video/common/feed/ui/UITab;->setViews(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    aget-object v4, v11, v1

    invoke-direct {p0, v4}, Lcom/miui/video/global/activity/HomeActivity;->isOffline(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/miui/video/global/activity/HomeActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    if-nez v4, :cond_7

    const-string v6, "vTabHost"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object v6, p0, Lcom/miui/video/global/activity/HomeActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    if-nez v6, :cond_8

    const-string v12, "vTabHost"

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    aget-object v12, v11, v1

    invoke-virtual {v6, v12}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    aget-object v12, v5, v1

    check-cast v12, Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    aget-object v12, v0, v1

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v6, v12, v13}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    if-nez v0, :cond_b

    const-string v1, "vTabHost"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    new-instance v1, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;

    move-object v3, v1

    move-object v4, p0

    move-object v6, v9

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/miui/video/global/activity/HomeActivity$initTabs$1;-><init>(Lcom/miui/video/global/activity/HomeActivity;[Lcom/miui/video/common/feed/ui/UITab;[Ljava/lang/Integer;[Ljava/lang/Integer;[Ljava/lang/Integer;Landroid/content/res/ColorStateList;)V

    check-cast v1, Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    if-nez v0, :cond_c

    const-string v1, "vTabHost"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    aget-object v1, v11, v10

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    if-nez v0, :cond_d

    const-string v1, "vTabHost"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/video/global/activity/HomeActivity$initTabs$2;

    invoke-direct {v1, p0, v11}, Lcom/miui/video/global/activity/HomeActivity$initTabs$2;-><init>(Lcom/miui/video/global/activity/HomeActivity;[Ljava/lang/String;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final isOffline(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "ID"

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/video/global/activity/HomeActivity;->INDONESIA_OFFLINE:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final preAddMomentFragment(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-direct {v0}, Lcom/miui/video/biz/ugc/MomentFragment;-><init>()V

    const-string v1, "moment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preAddMomentFragment---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/video/global/activity/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "supportFragmentManager.beginTransaction()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/support/v4/app/Fragment;

    const v2, 0x7f09038b

    invoke-virtual {v1, v2, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private final switchTrackTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "TAB_VIDEO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "video"

    goto :goto_1

    :sswitch_1
    const-string v0, "TAB_LOCAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "local"

    goto :goto_1

    :sswitch_2
    const-string v0, "TAB_TRENDING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "trending"

    goto :goto_1

    :sswitch_3
    const-string v0, "TAB_MOMENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "moment"

    goto :goto_1

    :sswitch_4
    const-string v0, "TAB_ME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "me"

    goto :goto_1

    :cond_0
    :goto_0
    const-string p1, "trending"

    :goto_1
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x6cf5855e -> :sswitch_4
        -0x4126adf6 -> :sswitch_3
        -0x2984b951 -> :sswitch_2
        0x506c6201 -> :sswitch_1
        0x50f69711 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/global/activity/HomeActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public initFindViews()V
    .locals 2

    const v0, 0x7f09038c

    invoke-virtual {p0, v0}, Lcom/miui/video/global/activity/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.v_home_tab_host)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    iput-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    if-nez v0, :cond_0

    const-string v1, "vTabHost"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->setVisibility(I)V

    return-void
.end method

.method public initViewsValue()V
    .locals 2

    new-instance v0, Lcom/miui/video/global/utils/AppPermissionInitUtil;

    invoke-direct {v0}, Lcom/miui/video/global/utils/AppPermissionInitUtil;-><init>()V

    iput-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->mPermissionInitUtil:Lcom/miui/video/global/utils/AppPermissionInitUtil;

    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->mPermissionInitUtil:Lcom/miui/video/global/utils/AppPermissionInitUtil;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/miui/video/global/utils/AppPermissionInitUtil$ICheckResultListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/global/utils/AppPermissionInitUtil;->addCheckResultListener(Lcom/miui/video/global/utils/AppPermissionInitUtil$ICheckResultListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->mPermissionInitUtil:Lcom/miui/video/global/utils/AppPermissionInitUtil;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/miui/video/global/utils/AppPermissionInitUtil;->startCheckPermission(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p3, p0, Lcom/miui/video/global/activity/HomeActivity;->mPermissionInitUtil:Lcom/miui/video/global/utils/AppPermissionInitUtil;

    if-eqz p3, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p3, v0, p1, p2}, Lcom/miui/video/global/utils/AppPermissionInitUtil;->onActivityResult(Landroid/app/Activity;II)V

    :cond_0
    return-void
.end method

.method public onAllPermissionEnable()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/video/global/activity/HomeActivity;->initTabs()V

    sget-boolean v0, Lcom/miui/video/global/activity/HomeActivity;->mIsShowLanguage:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/service/language/LanguageFragment;->showLanguageDialog(Landroid/app/Activity;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/video/global/activity/HomeActivity;->mIsShowLanguage:Z

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "is_show_language_dialog"

    sget-boolean v2, Lcom/miui/video/global/activity/HomeActivity;->mIsShowLanguage:Z

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveBoolean(Ljava/lang/String;Z)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/global/activity/HomeActivity;->checkVersion()V

    invoke-static {}, Lcom/miui/video/base/utils/ActvityUpdateUtils;->getInstance()Lcom/miui/video/base/utils/ActvityUpdateUtils;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/miui/video/base/utils/ActvityUpdateUtils$IActivityDestroyCallback;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/utils/ActvityUpdateUtils;->registerUpdateCallback(Lcom/miui/video/base/utils/ActvityUpdateUtils$IActivityDestroyCallback;)V

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->isOnlineVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/video/service/push/MiPushManager;->initMiPush()V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-wide/16 v0, 0x9c4

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/EventUtils;->isTimeInterval(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/uri/CUtils;->exitApp()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/video/global/activity/HomeActivity;->moveTaskToBack(Z)Z

    invoke-virtual {p0}, Lcom/miui/video/global/activity/HomeActivity;->finish()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    const v1, 0x7f100350

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->mPermissionInitUtil:Lcom/miui/video/global/utils/AppPermissionInitUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/global/utils/AppPermissionInitUtil;->removeCheckResultListener()V

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/miui/video/global/utils/AppPermissionInitUtil;

    iput-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->mPermissionInitUtil:Lcom/miui/video/global/utils/AppPermissionInitUtil;

    invoke-static {}, Lcom/miui/video/base/utils/ActvityUpdateUtils;->getInstance()Lcom/miui/video/base/utils/ActvityUpdateUtils;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/miui/video/base/utils/ActvityUpdateUtils$IActivityDestroyCallback;

    invoke-virtual {v0, v1}, Lcom/miui/video/base/utils/ActvityUpdateUtils;->unregisterUpdateCallback(Lcom/miui/video/base/utils/ActvityUpdateUtils$IActivityDestroyCallback;)V

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/miui/video/global/activity/HomeActivity;->mPermissionInitUtil:Lcom/miui/video/global/utils/AppPermissionInitUtil;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/miui/video/global/utils/AppPermissionInitUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onShowUpdateView(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShowUpdateView hasUpdate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "main_page"

    invoke-static {p1, p3}, Lcom/miui/video/service/update/UpgradeStatisticUtils;->exposeUpgrade(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/video/global/activity/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10037a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f100148

    const v4, 0x7f100379

    new-instance p1, Lcom/miui/video/global/activity/HomeActivity$onShowUpdateView$1;

    invoke-direct {p1, p0, p3}, Lcom/miui/video/global/activity/HomeActivity$onShowUpdateView$1;-><init>(Lcom/miui/video/global/activity/HomeActivity;Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/miui/video/global/activity/HomeActivity$onShowUpdateView$2;

    invoke-direct {p1, p0, p3}, Lcom/miui/video/global/activity/HomeActivity$onShowUpdateView$2;-><init>(Lcom/miui/video/global/activity/HomeActivity;Ljava/lang/String;)V

    move-object v6, p1

    check-cast v6, Landroid/view/View$OnClickListener;

    const/4 v7, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/miui/video/service/update/ui/UpdateDialog;->showUpdateDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onStart()V

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setTranslucentStatus(Landroid/content/Context;Z)V

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/miui/video/service/update/AppUpdateUtils;->get()Lcom/miui/video/service/update/AppUpdateUtils;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/update/AppUpdateUtils;->registerUpdateCallback(Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onStop()V

    invoke-static {}, Lcom/miui/video/service/update/AppUpdateUtils;->get()Lcom/miui/video/service/update/AppUpdateUtils;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/update/AppUpdateUtils;->unregisterUpdateCallback(Lcom/miui/video/service/update/AppUpdateUtils$IAppUpdateCallback;)V

    return-void
.end method

.method public plusMainActivityDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/global/activity/HomeActivity;->changeToLastTab()V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    const v0, 0x7f0c0024

    return v0
.end method
