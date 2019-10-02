.class public Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator;
.super Ljava/lang/Object;
.source "MomentPageGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;,
        Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$PageGeneratorCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createMomentPage(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;
    .locals 2

    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;

    invoke-direct {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;->setTitleLayoutType(I)V

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;->setProvider(Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)V

    return-object v0
.end method

.method public static generate(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->moment_tab_all:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/moment/loader/AllDataLoader;

    invoke-direct {v2}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/AllDataLoader;-><init>()V

    invoke-static {v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator;->createMomentPage(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->moment_tab_video:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;

    sget-object v3, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->CAMERA:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    invoke-direct {v2, v3}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;)V

    invoke-static {v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator;->createMomentPage(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator;->sort(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;

    iget-wide v2, v1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->count:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, v1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->count:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->name:Ljava/lang/String;

    iget-object v1, v1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->provider:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-static {v2, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator;->createMomentPage(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static generateOtherPage(Landroid/content/Context;Ljava/util/List;Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$PageGeneratorCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$PageGeneratorCallback;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentPageGenerator$R9VaA72iyfF-4Jl2PFt6cpW9rac;

    invoke-direct {p2, p1, p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentPageGenerator$R9VaA72iyfF-4Jl2PFt6cpW9rac;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    invoke-static {p2}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic lambda$generateOtherPage$56(Ljava/util/List;Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->moment_tab_whatsapp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->moment_tab_whatsapp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;

    sget-object v6, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->WHATSAPP:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    invoke-direct {v5, v6}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;)V

    invoke-direct {v3, v4, v5}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;-><init>(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->moment_tab_facebook:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->moment_tab_facebook:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;

    sget-object v6, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->FACEBOOK:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    invoke-direct {v5, v6}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;)V

    invoke-direct {v3, v4, v5}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;-><init>(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->moment_tab_instagram:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$string;->moment_tab_instagram:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;

    sget-object v6, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->INSTAGRAM:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    invoke-direct {v5, v6}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;)V

    invoke-direct {v3, v4, v5}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;-><init>(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->provider:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->getCount()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->count:J

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentPageGenerator$sA3zea1G08KpsKHaHbULNKYM0hA;->INSTANCE:Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentPageGenerator$sA3zea1G08KpsKHaHbULNKYM0hA;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;

    iget-wide v2, p1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->count:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    iget-object v2, p1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->provider:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-static {v2, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator;->createMomentPage(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentPage;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentPageGenerator$nQB9QDMhcINOS8s2HDJyDOaKsaM;

    invoke-direct {p1, p2, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/-$$Lambda$MomentPageGenerator$nQB9QDMhcINOS8s2HDJyDOaKsaM;-><init>(Ljava/lang/ref/WeakReference;Ljava/util/List;)V

    invoke-static {p1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnIOThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$null$54(Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;)I
    .locals 6

    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->count:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->provider:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->getCount()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->count:J

    :goto_0
    iput-wide v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->count:J

    iget-wide v4, p1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->count:J

    cmp-long p0, v4, v2

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->provider:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->getCount()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    iget-wide v2, p1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->count:J

    :goto_1
    iput-wide v2, p1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->count:J

    sub-long/2addr v2, v0

    long-to-int p0, v2

    return p0
.end method

.method static synthetic lambda$null$55(Ljava/lang/ref/WeakReference;Ljava/util/List;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$PageGeneratorCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$PageGeneratorCallback;->finished(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static sort(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$string;->moment_tab_whatsapp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;

    sget-object v4, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->WHATSAPP:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    invoke-direct {v3, v4}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;)V

    invoke-direct {v1, v2, v3}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;-><init>(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$string;->moment_tab_facebook:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;

    sget-object v4, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->FACEBOOK:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    invoke-direct {v3, v4}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;)V

    invoke-direct {v1, v2, v3}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;-><init>(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->moment_tab_instagram:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;

    sget-object v3, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;->INSTAGRAM:Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;

    invoke-direct {v2, v3}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/loader/InLineVideoDataLoader$Type;)V

    invoke-direct {v1, p0, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;-><init>(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->provider:Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/loader/BaseLocalDataProvider;->getCount()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$Wrapper;->count:J

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$1;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$1;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    return-object v0
.end method
