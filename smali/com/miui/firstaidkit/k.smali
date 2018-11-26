.class public Lcom/miui/firstaidkit/k;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static vp:Lcom/miui/firstaidkit/k;


# instance fields
.field private vk:Ljava/util/List;

.field private vl:Ljava/util/List;

.field private vm:Ljava/util/List;

.field private vn:Ljava/util/List;

.field private vo:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/k;->vo:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/k;->vl:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/k;->vm:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/k;->vk:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/k;->vn:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/firstaidkit/k;
    .locals 2

    const-class v1, Lcom/miui/firstaidkit/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/firstaidkit/k;->vp:Lcom/miui/firstaidkit/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/firstaidkit/k;

    invoke-direct {v0}, Lcom/miui/firstaidkit/k;-><init>()V

    sput-object v0, Lcom/miui/firstaidkit/k;->vp:Lcom/miui/firstaidkit/k;

    :cond_0
    sget-object v0, Lcom/miui/firstaidkit/k;->vp:Lcom/miui/firstaidkit/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private wX()Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/firstaidkit/k;->vk:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v3

    sget-object v4, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v3, v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private wY()Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/firstaidkit/k;->vm:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v3

    sget-object v4, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v3, v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private wZ()Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/firstaidkit/k;->vn:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v3

    sget-object v4, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v3, v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private xa()Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/firstaidkit/k;->vo:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v3

    sget-object v4, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v3, v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private xb()Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/firstaidkit/k;->vl:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v3

    sget-object v4, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v3, v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public wR(Ljava/util/List;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/k;->vo:Ljava/util/List;

    return-void
.end method

.method public wS(Ljava/util/List;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/k;->vl:Ljava/util/List;

    return-void
.end method

.method public wT(Ljava/util/List;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/k;->vm:Ljava/util/List;

    return-void
.end method

.method public wU(Ljava/util/List;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/k;->vk:Ljava/util/List;

    return-void
.end method

.method public wV(Ljava/util/List;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/firstaidkit/k;->vn:Ljava/util/List;

    return-void
.end method

.method public wW(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11

    const/4 v0, 0x1

    const/4 v2, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/firstaidkit/a/a;

    invoke-direct {v1}, Lcom/miui/firstaidkit/a/a;-><init>()V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/firstaidkit/k;->xa()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    move v1, v0

    :goto_0
    invoke-direct {p0}, Lcom/miui/firstaidkit/k;->xb()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    move v3, v0

    :goto_1
    invoke-direct {p0}, Lcom/miui/firstaidkit/k;->wY()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    move v4, v0

    :goto_2
    invoke-direct {p0}, Lcom/miui/firstaidkit/k;->wX()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    move v5, v0

    :goto_3
    invoke-direct {p0}, Lcom/miui/firstaidkit/k;->wZ()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    move v6, v0

    :goto_4
    if-eqz v1, :cond_0

    new-instance v8, Lcom/miui/firstaidkit/a/d;

    invoke-direct {v8}, Lcom/miui/firstaidkit/a/d;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-virtual {v8, v0}, Lcom/miui/firstaidkit/a/d;->vi(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    const v0, 0x7f0709b2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/miui/firstaidkit/a/d;->vj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/firstaidkit/k;->xa()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/miui/firstaidkit/a/d;->vk(Ljava/util/List;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v3, :cond_1

    new-instance v8, Lcom/miui/firstaidkit/a/d;

    invoke-direct {v8}, Lcom/miui/firstaidkit/a/d;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-virtual {v8, v0}, Lcom/miui/firstaidkit/a/d;->vi(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    const v0, 0x7f0709b3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/miui/firstaidkit/a/d;->vj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/firstaidkit/k;->xb()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/miui/firstaidkit/a/d;->vk(Ljava/util/List;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v4, :cond_2

    new-instance v8, Lcom/miui/firstaidkit/a/d;

    invoke-direct {v8}, Lcom/miui/firstaidkit/a/d;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-virtual {v8, v0}, Lcom/miui/firstaidkit/a/d;->vi(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    const v0, 0x7f0709b4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/miui/firstaidkit/a/d;->vj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/firstaidkit/k;->wY()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/miui/firstaidkit/a/d;->vk(Ljava/util/List;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v5, :cond_3

    new-instance v8, Lcom/miui/firstaidkit/a/d;

    invoke-direct {v8}, Lcom/miui/firstaidkit/a/d;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-virtual {v8, v0}, Lcom/miui/firstaidkit/a/d;->vi(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    const v0, 0x7f0709b5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/miui/firstaidkit/a/d;->vj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/firstaidkit/k;->wX()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/miui/firstaidkit/a/d;->vk(Ljava/util/List;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v6, :cond_4

    new-instance v8, Lcom/miui/firstaidkit/a/d;

    invoke-direct {v8}, Lcom/miui/firstaidkit/a/d;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-virtual {v8, v0}, Lcom/miui/firstaidkit/a/d;->vi(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    const v0, 0x7f0709b6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/miui/firstaidkit/a/d;->vj(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/firstaidkit/k;->wZ()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/miui/firstaidkit/a/d;->vk(Ljava/util/List;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v8, Lcom/miui/firstaidkit/a/b;

    invoke-direct {v8}, Lcom/miui/firstaidkit/a/b;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/miui/firstaidkit/FirstAidKitActivity;

    invoke-virtual {v8, v0}, Lcom/miui/firstaidkit/a/b;->vc(Lcom/miui/firstaidkit/FirstAidKitActivity;)V

    const v0, 0x7f0709cc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/miui/firstaidkit/a/b;->vd(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/miui/firstaidkit/model/FeedBackModel;

    const-string/jumbo v10, ""

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v9, v10, v2}, Lcom/miui/firstaidkit/model/FeedBackModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v0}, Lcom/miui/firstaidkit/a/b;->vb(Ljava/util/List;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/firstaidkit/a/g;

    invoke-direct {v0}, Lcom/miui/firstaidkit/a/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/firstaidkit/a/g;->vp(Z)V

    invoke-virtual {v0, v3}, Lcom/miui/firstaidkit/a/g;->vq(Z)V

    invoke-virtual {v0, v4}, Lcom/miui/firstaidkit/a/g;->vr(Z)V

    invoke-virtual {v0, v5}, Lcom/miui/firstaidkit/a/g;->vs(Z)V

    invoke-virtual {v0, v6}, Lcom/miui/firstaidkit/a/g;->vt(Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7

    :cond_5
    move v1, v2

    goto/16 :goto_0

    :cond_6
    move v3, v2

    goto/16 :goto_1

    :cond_7
    move v4, v2

    goto/16 :goto_2

    :cond_8
    move v5, v2

    goto/16 :goto_3

    :cond_9
    move v6, v2

    goto/16 :goto_4
.end method
