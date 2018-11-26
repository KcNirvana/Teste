.class public Lcom/miui/c/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static bcy:Lcom/miui/c/d;


# instance fields
.field private bcA:J

.field private bcB:Lcom/miui/d/d;

.field private final bcC:Landroid/content/SharedPreferences;

.field private final bcx:Ljava/util/Map;

.field private final bcz:Ljava/util/ArrayList;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/c/d;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "skin_close_preference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/c/d;->bcC:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/c/d;->bcx:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/c/d;->bcz:Ljava/util/ArrayList;

    return-void
.end method

.method private bzf(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/miui/c/i;

    invoke-direct {v0, p0, p1}, Lcom/miui/c/i;-><init>(Lcom/miui/c/d;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method private bzg()V
    .locals 3

    iget-object v0, p0, Lcom/miui/c/d;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/d/d;->bBa(Landroid/content/Context;)Lcom/miui/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/c/d;->bcB:Lcom/miui/d/d;

    new-instance v0, Lcom/miui/c/j;

    invoke-direct {v0, p0}, Lcom/miui/c/j;-><init>(Lcom/miui/c/d;)V

    iget-object v1, p0, Lcom/miui/c/d;->bcB:Lcom/miui/d/d;

    sget-object v2, Lcom/miui/c/f;->bcF:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/miui/d/d;->bBb(Ljava/lang/String;Lcom/miui/d/f;)V

    iget-object v1, p0, Lcom/miui/c/d;->bcB:Lcom/miui/d/d;

    sget-object v2, Lcom/miui/c/f;->bcE:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/miui/d/d;->bBb(Ljava/lang/String;Lcom/miui/d/f;)V

    return-void
.end method

.method private bzj(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/c/d;->bcC:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/c/d;->bcC:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void
.end method

.method static synthetic bzk(Lcom/miui/c/d;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/c/d;->bcx:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic bzl(Lcom/miui/c/d;)Lcom/miui/d/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/c/d;->bcB:Lcom/miui/d/d;

    return-object v0
.end method

.method static synthetic bzm(Lcom/miui/c/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/c/d;->bzg()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/c/d;
    .locals 2

    const-class v1, Lcom/miui/c/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/c/d;->bcy:Lcom/miui/c/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/c/d;

    invoke-direct {v0, p0}, Lcom/miui/c/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/c/d;->bcy:Lcom/miui/c/d;

    :cond_0
    sget-object v0, Lcom/miui/c/d;->bcy:Lcom/miui/c/d;
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
.method public bzc(Ljava/lang/String;)Lcom/miui/c/b;
    .locals 10

    const-wide/32 v8, 0x5265c00

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/miui/c/f;->bcG:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/c/d;->bcA:J

    add-long/2addr v2, v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/c/d;->bcz:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-gez v1, :cond_4

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/c/d;->bzf(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/c/d;->bcA:J

    iget-object v1, p0, Lcom/miui/c/d;->bcz:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/c/d;->bcz:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/miui/c/d;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/d/d;->bBf(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/systemAdSolution/common/AdInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/c/d;->bcx:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/AdInfo;->getId()J

    move-result-wide v2

    invoke-static {p1}, Lcom/miui/applicationlock/utils/m;->afy(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/applicationlock/utils/m;->afz(Z)V

    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/AdInfo;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/miui/applicationlock/utils/m;->afA()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/miui/c/f;->bzq(Lcom/miui/systemAdSolution/common/AdInfo;)Lcom/miui/systemAdSolution/common/Material;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/miui/systemAdSolution/common/Material;->getResources()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/miui/systemAdSolution/common/Material;->getResources()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/c/d;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/miui/c/f;->bzs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/AdInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/c/f;->bzt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Lcom/miui/systemAdSolution/common/Material;->getResources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v2, v1, :cond_6

    invoke-virtual {v0}, Lcom/miui/systemAdSolution/common/AdInfo;->getId()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/miui/applicationlock/utils/m;->afB(Ljava/lang/String;J)V

    new-instance v1, Lcom/miui/c/b;

    iget-object v2, p0, Lcom/miui/c/d;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p1}, Lcom/miui/c/b;-><init>(Landroid/content/Context;Lcom/miui/systemAdSolution/common/AdInfo;Ljava/lang/String;)V

    return-object v1

    :cond_4
    iget-object v1, p0, Lcom/miui/c/d;->bcz:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/miui/c/d;->bzj(Ljava/lang/String;)V

    :cond_6
    return-object v6
.end method

.method public bzd(Ljava/lang/String;J)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/c/d;->bcC:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bze(Ljava/lang/String;Ljava/lang/String;Lcom/miui/systemAdSolution/common/AdTrackType$Type;J)V
    .locals 8

    new-instance v5, Lcom/miui/systemAdSolution/common/AdTrackType;

    invoke-direct {v5, p3}, Lcom/miui/systemAdSolution/common/AdTrackType;-><init>(Lcom/miui/systemAdSolution/common/AdTrackType$Type;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/c/h;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/miui/c/h;-><init>(Lcom/miui/c/d;Ljava/lang/String;Ljava/lang/String;Lcom/miui/systemAdSolution/common/AdTrackType;J)V

    invoke-static {v1}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public bzh(Ljava/lang/String;J)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/c/d;->bcC:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "redPoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public bzi(Ljava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Lcom/miui/c/d;->bcC:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "redPoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
