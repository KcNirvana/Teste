.class public Lcom/miui/video/framework/uri/CUtils;
.super Ljava/lang/Object;
.source "CUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/framework/uri/CUtils$IAppFilter;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/miui/video/framework/uri/CUtils;


# instance fields
.field private mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/framework/uri/CUtils$IAppFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/framework/uri/CUtils;->mFilters:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/miui/video/framework/uri/CUtils;
    .locals 2

    sget-object v0, Lcom/miui/video/framework/uri/CUtils;->mInstance:Lcom/miui/video/framework/uri/CUtils;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/framework/uri/CUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/framework/uri/CUtils;->mInstance:Lcom/miui/video/framework/uri/CUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/framework/uri/CUtils;

    invoke-direct {v1}, Lcom/miui/video/framework/uri/CUtils;-><init>()V

    sput-object v1, Lcom/miui/video/framework/uri/CUtils;->mInstance:Lcom/miui/video/framework/uri/CUtils;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/video/framework/uri/CUtils;->mInstance:Lcom/miui/video/framework/uri/CUtils;

    return-object v0
.end method

.method public static getRef(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/miui/video/framework/uri/CUtils;->getRefFromLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/miui/video/framework/uri/CUtils;->getRefFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string v0, "com.miui.videoplayer"

    :cond_2
    return-object v0
.end method

.method public static getRefFromContext(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, ""

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/miui/video/framework/uri/CUtils;->getRefFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getRefFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getRefFromLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-static {p0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/miui/video/framework/uri/CEntitys;->getLinkEntity(Ljava/lang/String;)Lcom/miui/video/framework/uri/LinkEntity;

    move-result-object p0

    const-string v0, "ref"

    invoke-virtual {p0, v0}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addAppFilter(Lcom/miui/video/framework/uri/CUtils$IAppFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/uri/CUtils;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkHost(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/miui/video/framework/uri/CEntitys;->getLinkEntity(Ljava/lang/String;)Lcom/miui/video/framework/uri/LinkEntity;

    move-result-object p2

    const-string v1, "mv"

    invoke-virtual {p2}, Lcom/miui/video/framework/uri/LinkEntity;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "checkHost error"

    invoke-static {p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;)V

    return v0
.end method

.method public clearAppFilter()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/framework/uri/CUtils;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public exitApp()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/framework/uri/CUtils;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/framework/uri/CUtils$IAppFilter;

    invoke-interface {v1}, Lcom/miui/video/framework/uri/CUtils$IAppFilter;->exitApp()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public openHostLink(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Z
    .locals 7

    invoke-static {p2}, Lcom/miui/video/framework/uri/CEntitys;->createLinkHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p4

    move/from16 v11, p6

    const/4 v12, 0x0

    if-eqz v0, :cond_f

    invoke-static/range {p2 .. p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/miui/video/framework/uri/CEntitys;->isValidURI(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "invalid deeplink"

    invoke-static {v0, v2, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v12

    :cond_1
    invoke-static/range {p5 .. p5}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lcom/miui/video/framework/uri/CUtils;->getRef(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto :goto_0

    :cond_2
    move-object/from16 v2, p2

    move-object/from16 v13, p5

    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/miui/video/framework/uri/CEntitys;->getLinkEntity(Ljava/lang/String;)Lcom/miui/video/framework/uri/LinkEntity;

    move-result-object v14

    const-string v2, "com.miui.videoplayer"

    const-string v3, "openLink"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "link="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/miui/video/framework/uri/LinkEntity;->getLink()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  scheme="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/miui/video/framework/uri/LinkEntity;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/miui/video/framework/uri/LinkEntity;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  params="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/miui/video/framework/uri/LinkEntity;->getParams()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "   ref="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->getInstance()Lcom/miui/video/framework/utils/statistics/StatisticsUtils;

    move-result-object v2

    sget-object v3, Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;->ACTION_CLICK:Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;

    move-object/from16 v15, p3

    invoke-virtual {v2, v3, v14, v15}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->addStatistics(Lcom/miui/video/framework/utils/statistics/StatisticsUtils$STATISTICS_ACTION;Ljava/lang/Object;Ljava/util/List;)V

    const/4 v2, 0x0

    iget-object v3, v1, Lcom/miui/video/framework/uri/CUtils;->mFilters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v2

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/framework/uri/CUtils$IAppFilter;

    move-object/from16 v3, p1

    move-object v5, v14

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v8, v13

    invoke-interface/range {v2 .. v8}, Lcom/miui/video/framework/uri/CUtils$IAppFilter;->getIntentWithUrl(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/video/framework/uri/LinkEntity;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_4
    move-object v9, v4

    const/16 v16, 0x1

    if-nez v9, :cond_7

    iget-object v2, v1, Lcom/miui/video/framework/uri/CUtils;->mFilters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/framework/uri/CUtils$IAppFilter;

    move-object/from16 v3, p1

    move-object v4, v9

    move-object v5, v14

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v8, v13

    move-object/from16 v18, v9

    move/from16 v9, p6

    invoke-interface/range {v2 .. v9}, Lcom/miui/video/framework/uri/CUtils$IAppFilter;->handleURI(Landroid/content/Context;Landroid/content/Intent;Lcom/miui/video/framework/uri/LinkEntity;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    return v16

    :cond_5
    move-object/from16 v9, v18

    goto :goto_1

    :cond_6
    return v12

    :cond_7
    move-object/from16 v18, v9

    const-string v2, "link"

    invoke-virtual {v14}, Lcom/miui/video/framework/uri/LinkEntity;->getLink()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v18

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "back_scheme"

    const-string v3, "back_scheme"

    invoke-virtual {v14, v3}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v13}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v4, v13}, Lcom/miui/video/framework/uri/PageInfoUtils;->setRefToIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-static {v0, v4}, Lcom/miui/video/framework/uri/PageInfoUtils;->setIntentRefer(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_2
    if-eqz v10, :cond_9

    invoke-virtual {v4, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "BUNDLE_KEY_FLAG_CLEAR_TOP"

    invoke-virtual {v10, v2, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    const/high16 v2, 0x14000000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_9
    const/high16 v2, 0x10000000

    if-lez v11, :cond_c

    :try_start_0
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_a

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v4, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    :cond_a
    instance-of v3, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v3, :cond_b

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v4, v11}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    :cond_b
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_c
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_d

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_d
    instance-of v3, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v3, :cond_e

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_e
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_4
    return v16

    :cond_f
    :goto_5
    return v12
.end method
