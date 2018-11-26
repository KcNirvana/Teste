.class public Lcom/miui/networkassistant/utils/IconCacheHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICON_DELETED_APP:Ljava/lang/String; = "icon_deleted_app"

.field public static final ICON_MANAGED_PROFILE:Ljava/lang/String; = "magaged_profile_package"

.field public static final ICON_MI_STATS:Ljava/lang/String; = "com.xiaomi.mistatistic"

.field public static final ICON_OTHERS:Ljava/lang/String; = "icon_others"

.field public static final ICON_PERSONAL_HOTPOT:Ljava/lang/String; = "icon_personal_hotpot"

.field public static final ICON_ROOT:Ljava/lang/String; = "icon_root"

.field public static final ICON_SYSTEM_APP:Ljava/lang/String; = "icon_system_app"

.field private static sInstance:Lcom/miui/networkassistant/utils/IconCacheHelper;


# instance fields
.field private mCustomizedIconMap:Ljava/util/HashMap;


# direct methods
.method private constructor <init>()V
    .locals 4

    const v3, 0x7f02021f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/utils/IconCacheHelper;->mCustomizedIconMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/miui/networkassistant/utils/IconCacheHelper;->mCustomizedIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "icon_system_app"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/utils/IconCacheHelper;->mCustomizedIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "icon_deleted_app"

    const v2, 0x7f020204

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/utils/IconCacheHelper;->mCustomizedIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "icon_personal_hotpot"

    const v2, 0x7f020216

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/utils/IconCacheHelper;->mCustomizedIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "icon_root"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/utils/IconCacheHelper;->mCustomizedIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "icon_others"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/utils/IconCacheHelper;->mCustomizedIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.xiaomi.mistatistic"

    const v2, 0x7f0201c3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/networkassistant/utils/IconCacheHelper;->mCustomizedIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "magaged_profile_package"

    const v2, 0x7f0201c2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/networkassistant/utils/IconCacheHelper;
    .locals 2

    const-class v1, Lcom/miui/networkassistant/utils/IconCacheHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/utils/IconCacheHelper;->sInstance:Lcom/miui/networkassistant/utils/IconCacheHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/utils/IconCacheHelper;

    invoke-direct {v0}, Lcom/miui/networkassistant/utils/IconCacheHelper;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/utils/IconCacheHelper;->sInstance:Lcom/miui/networkassistant/utils/IconCacheHelper;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/utils/IconCacheHelper;->sInstance:Lcom/miui/networkassistant/utils/IconCacheHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public setIconToImageView(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Lcom/miui/networkassistant/utils/PackageUtil;->isXSpaceApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "pkg_icon_xspace://"

    invoke-static {p2}, Lcom/miui/networkassistant/utils/PackageUtil;->getRealPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    const v2, 0x7f0201eb

    invoke-static {v0, p1, v1, v2}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/utils/IconCacheHelper;->mCustomizedIconMap:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/miui/networkassistant/utils/PackageUtil;->getRealPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "drawable://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/miui/networkassistant/utils/PackageUtil;->isManagedProfileApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "pkg_icon_managed_profile://"

    const-string/jumbo v1, "&@"

    const-string/jumbo v2, "/"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "pkg_icon://"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
