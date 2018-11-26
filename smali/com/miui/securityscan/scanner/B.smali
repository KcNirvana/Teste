.class public Lcom/miui/securityscan/scanner/B;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG:Z

.field private static Ef:Lcom/miui/securityscan/scanner/B;


# instance fields
.field private DU:J

.field private DV:Ljava/util/Map;

.field private DW:J

.field private DX:J

.field private DY:Z

.field private DZ:Ljava/util/List;

.field private Ea:Ljava/util/Map;

.field private Eb:Ljava/util/List;

.field private Ec:Ljava/util/List;

.field private Ed:Ljava/util/Map;

.field private Ee:Ljava/util/List;

.field private Eg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/miui/securityscan/b/b;->Jo:Z

    sput-boolean v0, Lcom/miui/securityscan/scanner/B;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ec:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/B;->DZ:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ed:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ea:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/B;->DV:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/securityscan/scanner/B;->DY:Z

    return-void
.end method

.method private Ge()I
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v6, v7}, Lcom/miui/securityscan/c;->OH(J)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-nez v4, :cond_0

    return v5

    :cond_0
    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf731400

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const/16 v0, 0xf

    return v0

    :cond_1
    const-wide/32 v2, 0xa4cb800

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    const/16 v0, 0xa

    return v0

    :cond_2
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    const/16 v0, 0x8

    return v0

    :cond_3
    const-wide/32 v2, 0x2932e00

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    const-wide/32 v2, 0x1499700

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    const/4 v0, 0x3

    return v0

    :cond_5
    return v5
.end method

.method private Gg(J)I
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/miui/securityscan/c;->OH(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return v4

    :cond_0
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    sget-wide v2, Lcom/miui/securityscan/scanner/C;->Eh:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1

    const/16 v0, 0xf

    return v0

    :cond_1
    const/16 v1, 0x28

    if-lt v0, v1, :cond_2

    const/16 v0, 0xa

    return v0

    :cond_2
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    const/16 v0, 0x8

    return v0

    :cond_3
    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    return v4
.end method

.method private Gh()I
    .locals 9

    const/16 v5, 0x29

    const/4 v2, 0x0

    sget-boolean v0, Lcom/miui/securityscan/scanner/B;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ScoreManager"

    const-string/jumbo v1, "getMinusPredictScore------------------------------------------------ "

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ec:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v1

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    instance-of v1, v0, Lcom/miui/securityscan/model/system/VirusScanModel;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/miui/securityscan/model/system/VirusScanModel;

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/B;->FK()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_2
    invoke-virtual {v1, v4}, Lcom/miui/securityscan/model/system/VirusScanModel;->updateModelState(Lcom/miui/securityscan/model/AbsModel$State;)V

    :cond_2
    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v1

    sget-object v4, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v1

    add-int/2addr v3, v1

    sget-boolean v1, Lcom/miui/securityscan/scanner/B;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ScoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SystemModel Minus ItemKey ==> "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/miui/securityscan/scanner/B;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "ScoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SystemModel Minus Score = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/B;->Gf()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/miui/securityscan/scanner/B;->Gg(J)I

    move-result v0

    sget-boolean v3, Lcom/miui/securityscan/scanner/B;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "ScoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Memory Minus Score = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/B;->Ge()I

    move-result v1

    sget-boolean v3, Lcom/miui/securityscan/scanner/B;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string/jumbo v3, "ScoreManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cache Minus Score = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    add-int/2addr v1, v0

    if-nez v1, :cond_b

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/miui/securityscan/scanner/B;->DY:Z

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->DZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v6

    sget-object v7, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v6, v7, :cond_a

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v6

    add-int/2addr v2, v6

    sget-boolean v6, Lcom/miui/securityscan/scanner/B;->DEBUG:Z

    if-eqz v6, :cond_a

    const-string/jumbo v6, "ScoreManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ManualModel Minus ItemKey ==> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    move v0, v2

    goto :goto_3

    :cond_c
    sget-boolean v0, Lcom/miui/securityscan/scanner/B;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "ScoreManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Manual Minus Score = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    add-int v0, v1, v2

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/B;->FK()Z

    move-result v1

    if-nez v1, :cond_e

    if-ge v0, v5, :cond_e

    move v0, v5

    :cond_e
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/miui/securityscan/scanner/B;
    .locals 2

    const-class v1, Lcom/miui/securityscan/scanner/B;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/securityscan/scanner/B;->Ef:Lcom/miui/securityscan/scanner/B;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/securityscan/scanner/B;

    invoke-direct {v0}, Lcom/miui/securityscan/scanner/B;-><init>()V

    sput-object v0, Lcom/miui/securityscan/scanner/B;->Ef:Lcom/miui/securityscan/scanner/B;

    :cond_0
    sget-object v0, Lcom/miui/securityscan/scanner/B;->Ef:Lcom/miui/securityscan/scanner/B;
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
.method public FA(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/securityscan/scanner/B;->DU:J

    return-void
.end method

.method public FB()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/securityscan/scanner/B;->DU:J

    return-wide v0
.end method

.method public FC()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/securityscan/scanner/B;->Ed:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public FD(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/B;->Eb:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/miui/securityscan/scanner/B;->Eb:Ljava/util/List;

    goto :goto_0
.end method

.method public FE()I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/B;->DZ:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v4

    sget-object v5, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public FF()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/securityscan/scanner/B;->DX:J

    return-wide v0
.end method

.method public FG()I
    .locals 4

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/B;->Gi()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/VirusModel;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/VirusModel;->ars()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/B;->Gj()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/VirusModel;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/VirusModel;->ars()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public FH()Z
    .locals 8

    const/4 v0, 0x1

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const-string/jumbo v2, "key_latest_virus_scan_date"

    invoke-static {v2, v6, v7}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/B;->Gl()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/B;->Gk()I

    move-result v2

    if-gtz v2, :cond_0

    const-wide/32 v2, 0xf731400

    cmp-long v2, v4, v2

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/B;->Gl()I

    move-result v2

    if-gtz v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/B;->Gk()I

    move-result v2

    if-gtz v2, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public FI(Lcom/miui/securityscan/model/AbsModel;Lcom/miui/securityscan/model/AbsModel$State;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->DZ:Ljava/util/List;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->DZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, p2}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public FJ()Ljava/util/List;
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->DZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v1

    sget-object v5, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v1, v5, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public FK()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/securityscan/scanner/B;->Gl()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ed:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected FL()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->DZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ed:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ea:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->DV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected FM(Ljava/util/List;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ec:Ljava/util/List;

    return-void
.end method

.method public FN(I)V
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/scanner/B;->Eg:I

    return-void
.end method

.method protected FO(Lcom/miui/antivirus/model/VirusModel;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/antivirus/model/VirusModel;->ars()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ed:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/VirusModel;->ars()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public FP()V
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ec:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/GroupModel;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/model/AbsModel;

    instance-of v1, v1, Lcom/miui/securityscan/model/system/VirusScanModel;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->scan()V

    move v0, v2

    :goto_0
    if-ne v0, v2, :cond_0

    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public FQ()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/securityscan/scanner/B;->Ed:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ee:Ljava/util/List;

    return-void
.end method

.method public FR()Ljava/util/List;
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ec:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v1

    sget-object v5, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v1, v5, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method protected FS(Lcom/miui/securitycenter/memory/a;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ea:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/securitycenter/memory/a;->bpB()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public FT()V
    .locals 5

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/miui/securityscan/scanner/B;->Ea:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securitycenter/memory/a;

    invoke-virtual {v0}, Lcom/miui/securitycenter/memory/a;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/securitycenter/memory/a;->bpA()J

    move-result-wide v0

    add-long/2addr v0, v2

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_0
    iput-wide v2, p0, Lcom/miui/securityscan/scanner/B;->DX:J

    return-void

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method public FU()Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ea:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/securityscan/scanner/B;->Ea:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securitycenter/memory/a;

    invoke-virtual {v0}, Lcom/miui/securitycenter/memory/a;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected FV(Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->DV:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public FW()V
    .locals 7

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->DV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->bpv()J

    move-result-wide v0

    add-long/2addr v0, v2

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_0
    iput-wide v2, p0, Lcom/miui/securityscan/scanner/B;->DW:J

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->DV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->bpv()J

    move-result-wide v2

    add-long/2addr v4, v2

    goto :goto_2

    :cond_1
    iput-wide v4, p0, Lcom/miui/securityscan/scanner/B;->DU:J

    return-void

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method protected FX(Ljava/util/List;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/B;->DZ:Ljava/util/List;

    return-void
.end method

.method protected FY(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "removeAppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityscan/scanner/B;->Ea:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ea:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "removeAppInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securityscan/scanner/B;->Ea:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected FZ(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ed:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public Fz(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ed:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ed:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/securityscan/scanner/B;->Ed:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antivirus/model/VirusModel;

    invoke-virtual {v1}, Lcom/miui/antivirus/model/VirusModel;->arr()Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    move-result-object v5

    sget-object v6, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->aws:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    if-ne v5, v6, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/miui/antivirus/model/VirusModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/scanner/B;->FZ(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method public Ga()Ljava/util/List;
    .locals 7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ec:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v5

    sget-object v6, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->isScanHide()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public Gb()I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/scanner/B;->Eg:I

    return v0
.end method

.method public Gc()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ed:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public Gd(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->DZ:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->DZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/B;->DZ:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getIndex()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->scan()V

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    :cond_3
    return-void

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public Gf()J
    .locals 5

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/miui/securityscan/scanner/B;->Ea:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securitycenter/memory/a;

    invoke-virtual {v0}, Lcom/miui/securitycenter/memory/a;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/securitycenter/memory/a;->bpA()J

    move-result-wide v0

    add-long/2addr v0, v2

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_0
    return-wide v2

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method public Gi()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Eb:Ljava/util/List;

    return-object v0
.end method

.method public Gj()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ee:Ljava/util/List;

    return-object v0
.end method

.method public Gk()I
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/B;->Ed:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public Gl()I
    .locals 2

    invoke-static {}, Lcom/miui/antivirus/i;->aDL()I

    move-result v0

    invoke-static {}, Lcom/miui/antivirus/i;->aDK()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getScore()I
    .locals 3

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/B;->Gh()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    rsub-int/lit8 v0, v0, 0x64

    return v0

    :cond_0
    if-gez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method
