.class public Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source ""


# static fields
.field private static final SET_KEY_MOBILE:Ljava/lang/String; = "RestrictDataUsageModel_Mobile"

.field private static final SET_KEY_WLAN:Ljava/lang/String; = "RestrictDataUsageModel_Wlan"

.field private static final TAG:Ljava/lang/String; = "RestrictDataUsageModel"


# instance fields
.field private appName:Ljava/lang/String;

.field private canRecountTime:Z

.field private canSaveCache:Z

.field private final mResolver:Landroid/content/ContentResolver;

.field private mobileValueSet:Ljava/util/Set;

.field private spfHelper:Lcom/miui/securityscan/b/c;

.field private visibleItemIndex:I

.field private wlanValueSet:Ljava/util/Set;


# direct methods
.method static synthetic -get0(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->canRecountTime:Z

    return v0
.end method

.method static synthetic -get1(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->canSaveCache:Z

    return v0
.end method

.method static synthetic -get2(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->mobileValueSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Lcom/miui/securityscan/b/c;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->spfHelper:Lcom/miui/securityscan/b/c;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->wlanValueSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->canSaveCache:Z

    return p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->appName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->canSaveCache:Z

    invoke-virtual {p0, v1}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->setDelayOptimized(Z)V

    const-string/jumbo v0, "restrict_data_usage"

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->setTrackStr(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->getTrackStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_ignore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->setTrackIgnoreStr(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "data_config"

    invoke-static {v0, v1}, Lcom/miui/securityscan/b/c;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/securityscan/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->spfHelper:Lcom/miui/securityscan/b/c;

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/miui/firstaidkit/model/internet/d;

    invoke-direct {v0, p0}, Lcom/miui/firstaidkit/model/internet/d;-><init>(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;)V

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->setOnAbsModelDisplayListener(Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;)V

    return-void
.end method

.method private isListNew(Ljava/util/List;Ljava/util/Set;)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/model/internet/b;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/b;->vC(Lcom/miui/firstaidkit/model/internet/b;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private queryMobileRestricts(Landroid/content/Context;)Ljava/util/List;
    .locals 6

    const/4 v2, 0x0

    const-string/jumbo v0, "content://com.miui.networkassistant.provider/mobile_restrict"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "package_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/miui/securityscan/utils/b;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/firstaidkit/model/internet/b;

    invoke-direct {v4, p0, v3, v2}, Lcom/miui/firstaidkit/model/internet/b;-><init>(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_1
    return-object v2
.end method

.method private queryWlanRestricts(Landroid/content/Context;)Ljava/util/List;
    .locals 6

    const/4 v2, 0x0

    const-string/jumbo v0, "content://com.miui.networkassistant.provider/wlan_restrict"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "package_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/miui/securityscan/utils/b;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/firstaidkit/model/internet/b;

    invoke-direct {v4, p0, v3, v2}, Lcom/miui/firstaidkit/model/internet/b;-><init>(Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public getButtonTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706fa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/16 v0, 0x29

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0706f9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->appName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0706f8

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ignore()V
    .locals 0

    return-void
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/networkassistant/ui/activity/FirewallActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "VisibleItemIndex"

    iget v3, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->visibleItemIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lcom/miui/common/b/k;->aIq(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070712

    invoke-static {p1, v0}, Lcom/miui/common/b/o;->aIX(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public scan()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->canRecountTime:Z

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-static {v3}, Lcom/miui/securityscan/utils/b;->Im(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/miui/securityscan/utils/b;->Iv(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v3}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->queryWlanRestricts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->spfHelper:Lcom/miui/securityscan/b/c;

    const-string/jumbo v4, "RestrictDataUsageModel_Wlan"

    invoke-virtual {v0, v4}, Lcom/miui/securityscan/b/c;->JU(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-direct {p0, v3, v0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->isListNew(Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->canRecountTime:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->wlanValueSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/model/internet/b;

    iget-object v5, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->wlanValueSet:Ljava/util/Set;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/b;->vC(Lcom/miui/firstaidkit/model/internet/b;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/model/internet/b;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/b;->vB(Lcom/miui/firstaidkit/model/internet/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->appName:Ljava/lang/String;

    iput v1, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->visibleItemIndex:I

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    invoke-static {v3}, Lcom/miui/securityscan/utils/b;->Iu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v3}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->queryMobileRestricts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->spfHelper:Lcom/miui/securityscan/b/c;

    const-string/jumbo v4, "RestrictDataUsageModel_Mobile"

    invoke-virtual {v0, v4}, Lcom/miui/securityscan/b/c;->JU(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-direct {p0, v3, v0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->isListNew(Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->canRecountTime:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->mobileValueSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/model/internet/b;

    iget-object v5, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->mobileValueSet:Ljava/util/Set;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/b;->vC(Lcom/miui/firstaidkit/model/internet/b;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_5
    if-eqz v0, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/model/internet/b;

    invoke-static {v0}, Lcom/miui/firstaidkit/model/internet/b;->vB(Lcom/miui/firstaidkit/model/internet/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->appName:Ljava/lang/String;

    iput v2, p0, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->visibleItemIndex:I

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/model/internet/RestrictDataUsageModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_2
.end method
