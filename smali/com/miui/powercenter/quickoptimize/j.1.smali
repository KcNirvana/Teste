.class public Lcom/miui/powercenter/quickoptimize/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aDC:Ljava/util/List;

.field private static aDE:Ljava/util/List;

.field private static aDF:Ljava/util/List;

.field private static aDG:Ljava/util/List;

.field private static aDM:Ljava/util/List;

.field private static aDP:Lcom/miui/powercenter/quickoptimize/j;


# instance fields
.field private aDA:Z

.field private aDB:Z

.field private aDD:Z

.field private aDH:J

.field private aDI:J

.field private aDJ:J

.field private aDK:J

.field private aDL:J

.field private aDN:J

.field private aDO:J

.field private aDy:Z

.field private aDz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDG:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDF:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDC:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDM:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDE:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDP:Lcom/miui/powercenter/quickoptimize/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDD:Z

    iput-wide v4, p0, Lcom/miui/powercenter/quickoptimize/j;->aDH:J

    iput-wide v4, p0, Lcom/miui/powercenter/quickoptimize/j;->aDK:J

    iput-wide v2, p0, Lcom/miui/powercenter/quickoptimize/j;->aDO:J

    iput-wide v2, p0, Lcom/miui/powercenter/quickoptimize/j;->aDL:J

    iput-wide v2, p0, Lcom/miui/powercenter/quickoptimize/j;->aDJ:J

    iput-wide v2, p0, Lcom/miui/powercenter/quickoptimize/j;->aDN:J

    iput-wide v2, p0, Lcom/miui/powercenter/quickoptimize/j;->aDI:J

    return-void
.end method

.method private aOH(Landroid/content/Context;I)I
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/quickoptimize/j;->aOT(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v1, Lcom/miui/powercenter/quickoptimize/v;

    invoke-direct {v1}, Lcom/miui/powercenter/quickoptimize/v;-><init>()V

    iput p2, v1, Lcom/miui/powercenter/quickoptimize/v;->taskId:I

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/quickoptimize/j;->aOS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/powercenter/quickoptimize/v;->aEH:Ljava/lang/String;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    sget-object v2, Lcom/miui/powercenter/quickoptimize/j;->aDC:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/miui/powercenter/quickoptimize/j;->aDF:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private aOJ(Landroid/content/Context;I)Z
    .locals 4

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    sget-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDG:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/powercenter/quickoptimize/q;->aQv(Ljava/util/List;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDG:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/miui/powercenter/quickoptimize/q;->aQw(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Lcom/miui/powercenter/quickoptimize/q;->aQv(Ljava/util/List;I)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/powercenter/quickoptimize/p;->aPv(J)V

    return v2

    :cond_1
    if-ne p2, v1, :cond_2

    invoke-static {p1}, Lcom/miui/powercenter/a/a;->baU(Landroid/content/Context;)V

    return v2

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    invoke-static {p1}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/a/h;->bbw(I)V

    return v2

    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    sget-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDE:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/miui/powercenter/quickoptimize/w;->aQH(Landroid/content/Context;Ljava/util/List;)V

    return v2

    :cond_4
    const/4 v0, 0x5

    if-ne p2, v0, :cond_6

    sget-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDE:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lcom/miui/permcenter/g;->SV(Landroid/content/Context;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_5
    return v2

    :cond_6
    const/4 v0, 0x6

    if-ne p2, v0, :cond_7

    invoke-static {p1}, Lcom/miui/powercenter/a/a;->baQ(Landroid/content/Context;)V

    return v2

    :cond_7
    const/4 v0, 0x7

    if-ne p2, v0, :cond_8

    invoke-static {p1, v2}, Lcom/miui/powercenter/a/a;->baR(Landroid/content/Context;Z)V

    return v2

    :cond_8
    const/16 v0, 0x8

    if-ne p2, v0, :cond_9

    invoke-static {p1, v1}, Lcom/miui/powercenter/a/a;->baP(Landroid/content/Context;I)V

    return v2

    :cond_9
    return v3
.end method

.method private aOK(Lcom/miui/powercenter/quickoptimize/k;Landroid/content/Context;Ljava/util/List;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/miui/powercenter/quickoptimize/k;->aPi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/miui/powercenter/quickoptimize/k;->aPj()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDD:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/miui/powercenter/quickoptimize/w;->aQJ(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/miui/powercenter/quickoptimize/j;->aDG:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Lcom/miui/powercenter/quickoptimize/v;

    invoke-direct {v0}, Lcom/miui/powercenter/quickoptimize/v;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/miui/powercenter/quickoptimize/v;->taskId:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070474

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/powercenter/quickoptimize/v;->aEH:Ljava/lang/String;

    sget-object v1, Lcom/miui/powercenter/quickoptimize/j;->aDG:Ljava/util/List;

    invoke-direct {p0, p2, v1}, Lcom/miui/powercenter/quickoptimize/j;->aOM(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/powercenter/quickoptimize/v;->data:Ljava/lang/Object;

    sget-object v1, Lcom/miui/powercenter/quickoptimize/j;->aDG:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/miui/powercenter/quickoptimize/j;->aDC:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIQ:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/miui/powercenter/quickoptimize/k;->aPk(Lcom/miui/powercenter/model/ScanItemModel$ScanItems;Z)V

    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.powercenter.action.LOAD_OPTIMIZE_TASK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    invoke-interface {p1}, Lcom/miui/powercenter/quickoptimize/k;->aPl()V

    invoke-virtual {p0}, Lcom/miui/powercenter/quickoptimize/j;->aOP()I

    move-result v0

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdw(I)V

    sget-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDG:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bdx(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/miui/powercenter/quickoptimize/j;->aDF:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIQ:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/miui/powercenter/quickoptimize/k;->aPk(Lcom/miui/powercenter/model/ScanItemModel$ScanItems;Z)V

    goto :goto_1

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/powercenter/quickoptimize/j;->aDK:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/miui/powercenter/b/b;->bdy(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDD:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private aOL(Lcom/miui/powercenter/quickoptimize/k;Landroid/content/Context;)V
    .locals 1

    invoke-interface {p1}, Lcom/miui/powercenter/quickoptimize/k;->aPi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/miui/powercenter/quickoptimize/k;->aPj()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDD:Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/j;->aOZ()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/powercenter/quickoptimize/A;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/powercenter/quickoptimize/A;-><init>(Lcom/miui/powercenter/quickoptimize/j;Lcom/miui/powercenter/quickoptimize/k;Landroid/content/Context;)V

    invoke-static {p2, v0}, Lcom/miui/powercenter/quickoptimize/q;->aQx(Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/r;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/powercenter/quickoptimize/j;->aOK(Lcom/miui/powercenter/quickoptimize/k;Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method

.method private aOM(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/miui/powercenter/c/a;

    invoke-direct {v3}, Lcom/miui/powercenter/c/a;-><init>()V

    iput-object v0, v3, Lcom/miui/powercenter/c/a;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/powercenter/a/g;->bbt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/miui/powercenter/c/a;->appName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private aOO(Ljava/util/List;)I
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/quickoptimize/v;

    invoke-static {v0}, Lcom/miui/powercenter/quickoptimize/u;->aQF(Lcom/miui/powercenter/quickoptimize/v;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method private aOS(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    packed-switch p2, :pswitch_data_0

    const-string/jumbo v0, ""

    return-object v0

    :pswitch_0
    const v0, 0x7f070473

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const v0, 0x7f070477

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    const v0, 0x7f070475

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    const v0, 0x7f070476

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    const v0, 0x7f070478

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    const v0, 0x7f0704a3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6
    const v0, 0x7f0704af

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private aOT(Landroid/content/Context;I)I
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x2

    packed-switch p2, :pswitch_data_0

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/miui/powercenter/a/h;->getInstance(Landroid/content/Context;)Lcom/miui/powercenter/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/powercenter/a/h;->bbx()I

    move-result v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/miui/powercenter/quickoptimize/w;->aQI(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/miui/powercenter/quickoptimize/j;->aDE:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v3, Lcom/miui/powercenter/quickoptimize/j;->aDE:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/miui/powercenter/quickoptimize/j;->aDE:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :pswitch_3
    invoke-static {p1}, Lcom/miui/powercenter/a/a;->baH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "disable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/miui/powercenter/a/a;->baC(Landroid/content/Context;)I

    move-result v2

    const/16 v4, 0x14

    if-ge v2, v4, :cond_3

    invoke-static {p1}, Lcom/miui/powercenter/a/a;->baL(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :goto_2
    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_2

    :pswitch_5
    invoke-static {p1}, Lcom/miui/powercenter/a/a;->baG(Landroid/content/Context;)I

    move-result v3

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static aOU()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method private aOW()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDG:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDH:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private aOZ()Z
    .locals 6

    const/4 v0, 0x1

    invoke-static {}, Lcom/miui/powercenter/quickoptimize/p;->aPw()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aPc(Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/k;)V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p2}, Lcom/miui/powercenter/quickoptimize/k;->aPn()V

    :try_start_0
    invoke-interface {p2}, Lcom/miui/powercenter/quickoptimize/k;->aPi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/miui/powercenter/quickoptimize/k;->aPj()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDD:Z

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v0, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIB:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-interface {p2, v0}, Lcom/miui/powercenter/quickoptimize/k;->aPm(Lcom/miui/powercenter/model/AbsModel$ItemGroup;)V

    sget-object v0, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIH:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    const/4 v3, 0x0

    invoke-interface {p2, v0, v3}, Lcom/miui/powercenter/quickoptimize/k;->aPk(Lcom/miui/powercenter/model/ScanItemModel$ScanItems;Z)V

    sget-object v0, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIG:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    const/4 v3, 0x0

    invoke-interface {p2, v0, v3}, Lcom/miui/powercenter/quickoptimize/k;->aPk(Lcom/miui/powercenter/model/ScanItemModel$ScanItems;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDy:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    iput-wide v4, p0, Lcom/miui/powercenter/quickoptimize/j;->aDL:J

    invoke-interface {p2}, Lcom/miui/powercenter/quickoptimize/k;->aPi()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/miui/powercenter/quickoptimize/k;->aPj()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDD:Z

    return-void

    :cond_1
    sget-object v0, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIE:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-interface {p2, v0}, Lcom/miui/powercenter/quickoptimize/k;->aPm(Lcom/miui/powercenter/model/AbsModel$ItemGroup;)V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/miui/powercenter/quickoptimize/j;->aOH(Landroid/content/Context;I)I

    move-result v3

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/miui/powercenter/quickoptimize/j;->aOH(Landroid/content/Context;I)I

    move-result v4

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/miui/powercenter/quickoptimize/j;->aOH(Landroid/content/Context;I)I

    move-result v5

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/miui/powercenter/quickoptimize/j;->aOH(Landroid/content/Context;I)I

    move-result v6

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/miui/powercenter/quickoptimize/j;->aOH(Landroid/content/Context;I)I

    move-result v7

    sget-object v8, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIK:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    if-ne v3, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {p2, v8, v0}, Lcom/miui/powercenter/quickoptimize/k;->aPk(Lcom/miui/powercenter/model/ScanItemModel$ScanItems;Z)V

    sget-object v8, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIJ:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    if-ne v4, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-interface {p2, v8, v0}, Lcom/miui/powercenter/quickoptimize/k;->aPk(Lcom/miui/powercenter/model/ScanItemModel$ScanItems;Z)V

    sget-object v8, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIN:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    if-ne v5, v1, :cond_4

    move v0, v1

    :goto_2
    invoke-interface {p2, v8, v0}, Lcom/miui/powercenter/quickoptimize/k;->aPk(Lcom/miui/powercenter/model/ScanItemModel$ScanItems;Z)V

    sget-object v8, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIP:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    if-ne v6, v1, :cond_5

    move v0, v1

    :goto_3
    invoke-interface {p2, v8, v0}, Lcom/miui/powercenter/quickoptimize/k;->aPk(Lcom/miui/powercenter/model/ScanItemModel$ScanItems;Z)V

    sget-object v8, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIM:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    if-ne v7, v1, :cond_6

    move v0, v1

    :goto_4
    invoke-interface {p2, v8, v0}, Lcom/miui/powercenter/quickoptimize/k;->aPk(Lcom/miui/powercenter/model/ScanItemModel$ScanItems;Z)V

    if-ne v3, v9, :cond_8

    if-ne v4, v9, :cond_8

    if-ne v5, v9, :cond_8

    if-ne v6, v9, :cond_8

    if-ne v7, v9, :cond_7

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDB:Z

    invoke-interface {p2}, Lcom/miui/powercenter/quickoptimize/k;->aPi()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Lcom/miui/powercenter/quickoptimize/k;->aPj()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDD:Z

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_5

    :cond_8
    move v0, v2

    goto :goto_5

    :cond_9
    sget-object v0, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aID:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-interface {p2, v0}, Lcom/miui/powercenter/quickoptimize/k;->aPm(Lcom/miui/powercenter/model/AbsModel$ItemGroup;)V

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/b;->getInstance()Lcom/miui/powercenter/batteryhistory/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/b;->aTB()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/powercenter/a/a;->baJ(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {p1, v0}, Lcom/miui/powercenter/batteryhistory/i;->aTQ(Landroid/content/Context;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/j;

    move-result-object v0

    iget-wide v4, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    :goto_6
    sget-object v3, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIL:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    cmp-long v0, v4, v10

    if-gez v0, :cond_b

    move v0, v1

    :goto_7
    invoke-interface {p2, v3, v0}, Lcom/miui/powercenter/quickoptimize/k;->aPk(Lcom/miui/powercenter/model/ScanItemModel$ScanItems;Z)V

    cmp-long v0, v4, v10

    if-ltz v0, :cond_c

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDA:Z

    invoke-interface {p2}, Lcom/miui/powercenter/quickoptimize/k;->aPi()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Lcom/miui/powercenter/quickoptimize/k;->aPj()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDD:Z

    return-void

    :cond_a
    invoke-static {p1, v0}, Lcom/miui/powercenter/batteryhistory/g;->aTL(Landroid/content/Context;Ljava/util/List;)J

    move-result-wide v4

    goto :goto_6

    :cond_b
    move v0, v2

    goto :goto_7

    :cond_c
    move v0, v2

    goto :goto_8

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v0, Lcom/miui/powercenter/model/AbsModel$ItemGroup;->aIC:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    invoke-interface {p2, v0}, Lcom/miui/powercenter/quickoptimize/k;->aPm(Lcom/miui/powercenter/model/AbsModel$ItemGroup;)V

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/miui/powercenter/quickoptimize/j;->aOH(Landroid/content/Context;I)I

    move-result v3

    sget-object v6, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aII:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    if-ne v3, v1, :cond_f

    move v0, v1

    :goto_9
    invoke-interface {p2, v6, v0}, Lcom/miui/powercenter/quickoptimize/k;->aPk(Lcom/miui/powercenter/model/ScanItemModel$ScanItems;Z)V

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/miui/powercenter/quickoptimize/j;->aOH(Landroid/content/Context;I)I

    move-result v6

    sget-object v7, Lcom/miui/powercenter/model/ScanItemModel$ScanItems;->aIO:Lcom/miui/powercenter/model/ScanItemModel$ScanItems;

    if-ne v6, v1, :cond_10

    move v0, v1

    :goto_a
    invoke-interface {p2, v7, v0}, Lcom/miui/powercenter/quickoptimize/k;->aPk(Lcom/miui/powercenter/model/ScanItemModel$ScanItems;Z)V

    if-ne v3, v9, :cond_e

    if-ne v6, v9, :cond_e

    move v2, v1

    :cond_e
    iput-boolean v2, p0, Lcom/miui/powercenter/quickoptimize/j;->aDz:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDO:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_b
    return-void

    :cond_f
    move v0, v2

    goto :goto_9

    :cond_10
    move v0, v2

    goto :goto_a

    :catch_0
    move-exception v0

    const-string/jumbo v1, "QuickOptimizeManager"

    const-string/jumbo v2, "loadTaskListInThread scan item exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method static synthetic aPd(Lcom/miui/powercenter/quickoptimize/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/quickoptimize/j;->aDD:Z

    return p1
.end method

.method static synthetic aPe(Lcom/miui/powercenter/quickoptimize/j;Lcom/miui/powercenter/quickoptimize/k;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/powercenter/quickoptimize/j;->aOK(Lcom/miui/powercenter/quickoptimize/k;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method static synthetic aPf(Lcom/miui/powercenter/quickoptimize/j;Lcom/miui/powercenter/quickoptimize/k;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/quickoptimize/j;->aOL(Lcom/miui/powercenter/quickoptimize/k;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic aPg(Lcom/miui/powercenter/quickoptimize/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/quickoptimize/j;->aOW()V

    return-void
.end method

.method static synthetic aPh(Lcom/miui/powercenter/quickoptimize/j;Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/k;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/powercenter/quickoptimize/j;->aPc(Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/k;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/powercenter/quickoptimize/j;
    .locals 2

    const-class v1, Lcom/miui/powercenter/quickoptimize/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDP:Lcom/miui/powercenter/quickoptimize/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/quickoptimize/j;

    invoke-direct {v0}, Lcom/miui/powercenter/quickoptimize/j;-><init>()V

    sput-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDP:Lcom/miui/powercenter/quickoptimize/j;

    :cond_0
    sget-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDP:Lcom/miui/powercenter/quickoptimize/j;
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
.method public aOI(Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/v;)I
    .locals 6

    const/4 v0, 0x0

    sget-object v1, Lcom/miui/powercenter/quickoptimize/j;->aDF:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/miui/powercenter/quickoptimize/j;->getInstance()Lcom/miui/powercenter/quickoptimize/j;

    move-result-object v1

    iget v2, p2, Lcom/miui/powercenter/quickoptimize/v;->taskId:I

    invoke-direct {v1, p1, v2}, Lcom/miui/powercenter/quickoptimize/j;->aOJ(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/miui/powercenter/quickoptimize/u;->aQF(Lcom/miui/powercenter/quickoptimize/v;)I

    move-result v0

    sget-object v1, Lcom/miui/powercenter/quickoptimize/j;->aDM:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/miui/powercenter/quickoptimize/j;->aDF:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/miui/powercenter/quickoptimize/j;->aDH:J

    invoke-static {p1, p2}, Lcom/miui/powercenter/quickoptimize/u;->aQE(Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/v;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/miui/powercenter/quickoptimize/j;->aDH:J

    :cond_1
    return v0
.end method

.method public aON()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDC:Ljava/util/List;

    return-object v0
.end method

.method public aOP()I
    .locals 1

    sget-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDF:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/powercenter/quickoptimize/j;->aOO(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public aOQ()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDF:Ljava/util/List;

    return-object v0
.end method

.method public aOR()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDH:J

    return-wide v0
.end method

.method public aOV()I
    .locals 1

    sget-object v0, Lcom/miui/powercenter/quickoptimize/j;->aDM:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/miui/powercenter/quickoptimize/j;->aOO(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public aOX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDy:Z

    return v0
.end method

.method public aOY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDA:Z

    return v0
.end method

.method public aPa()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDB:Z

    return v0
.end method

.method public aPb(Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/k;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDK:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/quickoptimize/z;

    invoke-direct {v1, p0, v0, p2}, Lcom/miui/powercenter/quickoptimize/z;-><init>(Lcom/miui/powercenter/quickoptimize/j;Landroid/content/Context;Lcom/miui/powercenter/quickoptimize/k;)V

    invoke-static {v1}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/quickoptimize/j;->aDD:Z

    return v0
.end method
