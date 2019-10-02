.class public Lcom/xiaomi/miglobaladsdk/nativead/c;
.super Ljava/lang/Object;
.source "NativeAdManagerInternal.java"

# interfaces
.implements Lcom/xiaomi/miglobaladsdk/b/b$a;
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;
.implements Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;


# instance fields
.field private A:Landroid/content/SharedPreferences$Editor;

.field private B:Z

.field private C:Ljava/lang/Runnable;

.field private D:Ljava/lang/Runnable;

.field private E:Ljava/lang/Runnable;

.field protected a:Lcom/xiaomi/miglobaladsdk/nativead/b;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private d:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

.field private e:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;

.field private f:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;

.field private g:Z

.field private h:Z

.field private volatile i:Z

.field private j:Z

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/xiaomi/utils/l;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/xiaomi/miglobaladsdk/nativead/e;

.field private o:Lcom/xiaomi/miglobaladsdk/nativead/d;

.field private p:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:J

.field private r:Ljava/lang/String;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:J

.field private y:J

.field private z:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->g:Z

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->h:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->i:Z

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->j:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->l:Lcom/xiaomi/utils/l;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->m:Ljava/util/List;

    new-instance v1, Lcom/xiaomi/miglobaladsdk/nativead/b;

    invoke-direct {v1}, Lcom/xiaomi/miglobaladsdk/nativead/b;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->a:Lcom/xiaomi/miglobaladsdk/nativead/b;

    new-instance v1, Lcom/xiaomi/miglobaladsdk/nativead/e;

    invoke-direct {v1}, Lcom/xiaomi/miglobaladsdk/nativead/e;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->n:Lcom/xiaomi/miglobaladsdk/nativead/e;

    new-instance v1, Lcom/xiaomi/miglobaladsdk/nativead/d;

    invoke-direct {v1}, Lcom/xiaomi/miglobaladsdk/nativead/d;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->o:Lcom/xiaomi/miglobaladsdk/nativead/d;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->p:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->q:J

    const/16 v3, 0x1f40

    iput v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->s:I

    iput-wide v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->x:J

    const-wide/32 v1, 0x5265c00

    iput-wide v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->y:J

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->B:Z

    new-instance v0, Lcom/xiaomi/miglobaladsdk/nativead/c$5;

    invoke-direct {v0, p0}, Lcom/xiaomi/miglobaladsdk/nativead/c$5;-><init>(Lcom/xiaomi/miglobaladsdk/nativead/c;)V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->C:Ljava/lang/Runnable;

    new-instance v0, Lcom/xiaomi/miglobaladsdk/nativead/c$6;

    invoke-direct {v0, p0}, Lcom/xiaomi/miglobaladsdk/nativead/c$6;-><init>(Lcom/xiaomi/miglobaladsdk/nativead/c;)V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->D:Ljava/lang/Runnable;

    new-instance v0, Lcom/xiaomi/miglobaladsdk/nativead/c$7;

    invoke-direct {v0, p0}, Lcom/xiaomi/miglobaladsdk/nativead/c$7;-><init>(Lcom/xiaomi/miglobaladsdk/nativead/c;)V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->E:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/nativead/c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->x:J

    return-wide p1
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/nativead/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/nativead/c;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->A:Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/nativead/c;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->z:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/nativead/c;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->b(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/Integer;Lcom/xiaomi/miglobaladsdk/a/a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/xiaomi/miglobaladsdk/a/a;->m:Lcom/xiaomi/miglobaladsdk/a/a$a;

    if-eqz v0, :cond_1

    iget-object p2, p2, Lcom/xiaomi/miglobaladsdk/a/a;->m:Lcom/xiaomi/miglobaladsdk/a/a$a;

    invoke-virtual {p2, p1}, Lcom/xiaomi/miglobaladsdk/a/a$a;->a(Ljava/lang/Integer;)Lcom/xiaomi/miglobaladsdk/a/a$a;

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Lcom/xiaomi/miglobaladsdk/report/a$a;

    invoke-direct {v0}, Lcom/xiaomi/miglobaladsdk/report/a$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p1

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->g:Z

    invoke-virtual {p1, v0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a(Z)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->d(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p1

    const-string v0, "adsCnt"

    invoke-virtual {p1, v0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->l(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaomi/miglobaladsdk/report/a$a;->m(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/xiaomi/miglobaladsdk/report/a$a;->h(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a()Lcom/xiaomi/miglobaladsdk/report/a;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/report/AdReportHelper;->report(Lcom/xiaomi/miglobaladsdk/report/a;)V

    return-void
.end method

.method private a()Z
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->z:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->z:Landroid/content/SharedPreferences;

    const-string v2, "IsDisliked"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->j:Z

    const-string v0, "NativeAdManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Xout get mIsDisliked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->j:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->j:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->z:Landroid/content/SharedPreferences;

    const-string v2, "XoutStartTime"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->x:J

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->z:Landroid/content/SharedPreferences;

    const-string v2, "XoutTime"

    iget-wide v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->y:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->y:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->x:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->y:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-wide v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->y:J

    sub-long/2addr v0, v2

    const-string v2, "NativeAdManagerInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Xout please try again after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    iput-boolean v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->j:Z

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->A:Landroid/content/SharedPreferences$Editor;

    const-string v2, "IsDisliked"

    iget-boolean v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->j:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->A:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "NativeAdManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Xout onTimeRunOut mIsDisliked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->z:Landroid/content/SharedPreferences;

    const-string v4, "IsDisliked"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    return v1
.end method

.method private a(Lcom/xiaomi/miglobaladsdk/a/a;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->b(Lcom/xiaomi/miglobaladsdk/a/a;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "NativeAdManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "High-end model protection don\'t need load ad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p1, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/xiaomi/miglobaladsdk/a/a;->l:Z

    iput-boolean v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->B:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&Bidding->mIsBid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->B:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->n:Lcom/xiaomi/miglobaladsdk/nativead/e;

    invoke-virtual {v2, v0}, Lcom/xiaomi/miglobaladsdk/nativead/e;->b(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->a:Lcom/xiaomi/miglobaladsdk/nativead/b;

    iget-object v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/xiaomi/miglobaladsdk/nativead/b;->a(Landroid/content/Context;Lcom/xiaomi/miglobaladsdk/a/a;)Lcom/xiaomi/miglobaladsdk/b/b;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->d:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->d:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    invoke-virtual {v2, v1}, Lcom/xiaomi/miglobaladsdk/b/b;->a(Lcom/xiaomi/miglobaladsdk/AdLoadParams;)V

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->e:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;

    invoke-virtual {v2, v1}, Lcom/xiaomi/miglobaladsdk/b/b;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;)V

    invoke-virtual {v2, p0}, Lcom/xiaomi/miglobaladsdk/b/b;->a(Lcom/xiaomi/miglobaladsdk/b/b$a;)V

    invoke-virtual {v2, p0}, Lcom/xiaomi/miglobaladsdk/b/b;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IAdOnClickListener;)V

    invoke-virtual {v2, p0}, Lcom/xiaomi/miglobaladsdk/b/b;->a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd$IOnAdDislikedListener;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/miglobaladsdk/b/b;->b(I)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->r:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/miglobaladsdk/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/miglobaladsdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->g:Z

    invoke-virtual {v2, v0}, Lcom/xiaomi/miglobaladsdk/b/b;->a(Z)V

    invoke-virtual {v2}, Lcom/xiaomi/miglobaladsdk/b/b;->e()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestBean->load ad= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/16 p1, 0x2715

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/nativead/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->j:Z

    return p1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/a/a;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/miglobaladsdk/a/a;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method static synthetic b(Lcom/xiaomi/miglobaladsdk/nativead/c;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->z:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private b()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->n:Lcom/xiaomi/miglobaladsdk/nativead/e;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/nativead/e;->a()V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->o:Lcom/xiaomi/miglobaladsdk/nativead/d;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/d;->a(I)V

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->c()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is preload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,load size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    const-string v0, "NativeAdManagerInternal"

    const-string v1, "loadChildAds no-loader was issued"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2715

    invoke-virtual {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->b(I)V

    return-void

    :cond_2
    if-le v0, v4, :cond_4

    new-instance v0, Lcom/xiaomi/utils/l;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->D:Ljava/lang/Runnable;

    const-string v3, "PriorityProtectionTimer"

    invoke-direct {v0, v2, v3}, Lcom/xiaomi/utils/l;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->l:Lcom/xiaomi/utils/l;

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miglobaladsdk/a/a;

    iget v0, v0, Lcom/xiaomi/miglobaladsdk/a/a;->g:I

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->s:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadChildAds->0timeout= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadChildAds->timeout= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->l:Lcom/xiaomi/utils/l;

    iget v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->s:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/utils/l;->a(I)V

    :cond_4
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/a/a;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x2711

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "NativeAdManagerInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,posid: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->c:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,remove: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "NativeAdManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the posid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " no config ,may be has closed or remove invalid beans"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->b(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->a:Lcom/xiaomi/miglobaladsdk/nativead/b;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/miglobaladsdk/nativead/b;->a(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->a:Lcom/xiaomi/miglobaladsdk/nativead/b;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/nativead/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "NativeAdManagerInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filter invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,remove: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->h:Z

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/miglobaladsdk/a/a;

    iget p1, p1, Lcom/xiaomi/miglobaladsdk/a/a;->k:I

    int-to-long v0, p1

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->y:J

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->A:Landroid/content/SharedPreferences$Editor;

    const-string v0, "XoutTime"

    iget-wide v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->y:J

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->A:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p1, "NativeAdManagerInternal"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Xout get mXoutTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->z:Landroid/content/SharedPreferences;

    const-string v2, "XoutTime"

    iget-wide v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->y:J

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x271d

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->b(I)V

    const-string p1, "NativeAdManagerInternal"

    const-string v0, "Ad failed to load due to Xout!"

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->b()V

    return-void

    :cond_6
    :goto_2
    const-string p1, "NativeAdManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the posid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " no config, may be has closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->b(I)V

    return-void
.end method

.method private b(Lcom/xiaomi/miglobaladsdk/a/a;)Z
    .locals 3

    const-string v0, "NativeAdManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/utils/DeviceUtils;->isE10()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/xiaomi/miglobaladsdk/a/a;->h:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/xiaomi/miglobaladsdk/nativead/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->B:Z

    return p1
.end method

.method private c()I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miglobaladsdk/a/a;

    iget v0, v0, Lcom/xiaomi/miglobaladsdk/a/a;->i:I

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->t:I

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->g:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->t:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->t:I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsPreload= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mDspParallelismDegree= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; mConfigBeans.size()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->t:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_2
    iget v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->t:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->t:I

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsPreload= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mDspParallelismDegree= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; mConfigBeans.size()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->t:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method static synthetic c(Lcom/xiaomi/miglobaladsdk/nativead/c;)Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->f:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private d()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "issueToLoadNext index waiting : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->o:Lcom/xiaomi/miglobaladsdk/nativead/d;

    invoke-virtual {v1}, Lcom/xiaomi/miglobaladsdk/nativead/d;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,config size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->o:Lcom/xiaomi/miglobaladsdk/nativead/d;

    invoke-virtual {v2, v1}, Lcom/xiaomi/miglobaladsdk/nativead/d;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    const-string v1, "NativeAdManagerInternal"

    const-string v2, "the load index is last one,remove no callback task"

    invoke-static {v1, v2}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v0
.end method

.method private d(I)Z
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->o:Lcom/xiaomi/miglobaladsdk/nativead/d;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/miglobaladsdk/nativead/d;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/miglobaladsdk/a/a;

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Lcom/xiaomi/miglobaladsdk/a/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic d(Lcom/xiaomi/miglobaladsdk/nativead/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->j:Z

    return p0
.end method

.method static synthetic e(Lcom/xiaomi/miglobaladsdk/nativead/c;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->A:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    const-string v0, "NativeAdManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "posid[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e()Z
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/miglobaladsdk/a/a;

    iget-object v4, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->n:Lcom/xiaomi/miglobaladsdk/nativead/e;

    iget-object v3, v3, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/xiaomi/miglobaladsdk/nativead/e;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/nativead/e$a;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    iget v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->u:I

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method private e(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->o:Lcom/xiaomi/miglobaladsdk/nativead/d;

    invoke-virtual {v2, v1}, Lcom/xiaomi/miglobaladsdk/nativead/d;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic f(Lcom/xiaomi/miglobaladsdk/nativead/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->x:J

    return-wide v0
.end method

.method private f(I)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->a:Lcom/xiaomi/miglobaladsdk/nativead/b;

    const-string v1, "mi"

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/b;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/b/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/xiaomi/miglobaladsdk/b/a;->a(I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-interface {v1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdWeight()I

    move-result v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-interface {p1}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getDspWeight()Ljava/util/Map;

    move-result-object p1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/miglobaladsdk/a/a;

    iget-object v3, v2, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    const-string v4, "mi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-lez v0, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Ljava/lang/Integer;Lcom/xiaomi/miglobaladsdk/a/a;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, v2, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-direct {p0, v3, v2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Ljava/lang/Integer;Lcom/xiaomi/miglobaladsdk/a/a;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method static synthetic g(Lcom/xiaomi/miglobaladsdk/nativead/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->i:Z

    return p0
.end method

.method static synthetic h(Lcom/xiaomi/miglobaladsdk/nativead/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->h:Z

    return p0
.end method

.method static synthetic i(Lcom/xiaomi/miglobaladsdk/nativead/c;)Z
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->d()Z

    move-result p0

    return p0
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->C:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaomi/utils/j;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic j(Lcom/xiaomi/miglobaladsdk/nativead/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->B:Z

    return p0
.end method

.method static synthetic k(Lcom/xiaomi/miglobaladsdk/nativead/c;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->w:I

    return p0
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->l:Lcom/xiaomi/utils/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->l:Lcom/xiaomi/utils/l;

    invoke-virtual {v0}, Lcom/xiaomi/utils/l;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->l:Lcom/xiaomi/utils/l;

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 5

    iput p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->w:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAdLoaded time(ms): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->q:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(ZI)V

    const-string v0, "LOAD_SUCCESS"

    int-to-long v1, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public a(Lcom/xiaomi/miglobaladsdk/AdLoadParams;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->d:Lcom/xiaomi/miglobaladsdk/AdLoadParams;

    return-void
.end method

.method public a(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/miglobaladsdk/nativead/c$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c$2;-><init>(Lcom/xiaomi/miglobaladsdk/nativead/c;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    invoke-static {v0}, Lcom/xiaomi/utils/j;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->e:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->e:Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;

    iget p1, p1, Lcom/xiaomi/miglobaladsdk/nativead/api/LoadConfigBean;->adSize:I

    iput p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->v:I

    return-void
.end method

.method public a(Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->f:Lcom/xiaomi/miglobaladsdk/nativead/api/NativeAdManager$NativeAdManagerListener;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "async check if all finished --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->E:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaomi/utils/j;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " load fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->n:Lcom/xiaomi/miglobaladsdk/nativead/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/xiaomi/miglobaladsdk/nativead/e;->a(Ljava/lang/String;ZLjava/lang/String;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ad load fail: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->j()V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " load success"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->n:Lcom/xiaomi/miglobaladsdk/nativead/e;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/e;->a(Ljava/lang/String;ZLjava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->b(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->h:Z

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ad loaded:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->j()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestAd isPreload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/MiAdManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/utils/Commons;->isAdEnableInEURegion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MIADSDK"

    const-string v0, "requestAd->In eu region and disabled personalized ad"

    invoke-static {p1, v0}, Lcom/xiaomi/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "LOAD_AD"

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->i:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->q:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-string p1, "NativeAdManagerInternal"

    const-string v0, "wait and reuse for last result"

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/utils/Commons;->obtainTriggerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->r:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestAd mTriggerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->g:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->i:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->q:J

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/b;->a()Lcom/xiaomi/miglobaladsdk/a/b;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->c:Ljava/lang/String;

    new-instance v1, Lcom/xiaomi/miglobaladsdk/nativead/c$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/miglobaladsdk/nativead/c$1;-><init>(Lcom/xiaomi/miglobaladsdk/nativead/c;)V

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/miglobaladsdk/a/b;->a(Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/a/b$a;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->i:Z

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->E:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaomi/utils/j;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->D:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaomi/utils/j;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->C:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaomi/utils/j;->c(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->k()V

    new-instance v0, Lcom/xiaomi/miglobaladsdk/nativead/c$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/nativead/c$8;-><init>(Lcom/xiaomi/miglobaladsdk/nativead/c;ZI)V

    invoke-static {v0}, Lcom/xiaomi/utils/j;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected b(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/miglobaladsdk/a/a;

    iget-object v1, v1, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected b(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAdFailed time(ms): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->q:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(ZI)V

    return-void
.end method

.method public c(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;",
            ">;"
        }
    .end annotation

    const-string v0, "getAdList"

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-lt p1, v1, :cond_6

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->a:Lcom/xiaomi/miglobaladsdk/nativead/b;

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->f(I)V

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/miglobaladsdk/a/a;

    const-string v3, "NativeAdManagerInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dsp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&weight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/xiaomi/miglobaladsdk/a/a;->f:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->a:Lcom/xiaomi/miglobaladsdk/nativead/b;

    iget-object v4, v2, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/miglobaladsdk/nativead/b;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/b/b;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int v4, p1, v4

    invoke-interface {v3, v4, v0}, Lcom/xiaomi/miglobaladsdk/b/a;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "from adapter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,get ad size: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this adList size= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, p1, :cond_2

    :cond_5
    const-string p1, "GET_AD"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(Ljava/lang/String;J)V

    return-object v0

    :cond_6
    :goto_1
    const-string p1, "GET_AD"

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/b;->a()Lcom/xiaomi/miglobaladsdk/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/a/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method protected f()V
    .locals 7

    const-string v0, "NativeAdManagerInternal"

    const-string v1, "check finish"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->i:Z

    if-eqz v0, :cond_0

    const-string v0, "NativeAdManagerInternal"

    const-string v1, "already finished"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "NativeAdManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIfAllFinished needLoadAdSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->v:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/miglobaladsdk/a/a;

    iget-object v1, v1, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->a:Lcom/xiaomi/miglobaladsdk/nativead/b;

    invoke-virtual {v3, v1}, Lcom/xiaomi/miglobaladsdk/nativead/b;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/b/b;

    move-result-object v3

    if-eqz v3, :cond_2

    iget v4, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->u:I

    invoke-interface {v3}, Lcom/xiaomi/miglobaladsdk/b/a;->b()I

    move-result v3

    add-int/2addr v4, v3

    iput v4, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->u:I

    :cond_2
    const-string v3, "NativeAdManagerInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " checkIfAllFinished allDspLoadAdSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->u:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " needLoadAdSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->v:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->n:Lcom/xiaomi/miglobaladsdk/nativead/e;

    invoke-virtual {v3, v1}, Lcom/xiaomi/miglobaladsdk/nativead/e;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/nativead/e$a;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->l:Lcom/xiaomi/utils/l;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->l:Lcom/xiaomi/utils/l;

    invoke-virtual {v1}, Lcom/xiaomi/utils/l;->b()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "NativeAdManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is timeout: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->l:Lcom/xiaomi/utils/l;

    invoke-virtual {v3}, Lcom/xiaomi/utils/l;->b()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "...wait"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->u:I

    return-void

    :cond_3
    iget v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->u:I

    iget v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->v:I

    if-lt v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->B:Z

    if-nez v1, :cond_4

    iget v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->v:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->u:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(I)V

    :cond_5
    :goto_0
    iput v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->u:I

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/miglobaladsdk/a/a;

    const-string v4, "NativeAdManagerInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkIfAllFinished=>Bidding->mIsBid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->B:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "&dsp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->n:Lcom/xiaomi/miglobaladsdk/nativead/e;

    invoke-virtual {v5, v4}, Lcom/xiaomi/miglobaladsdk/nativead/e;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/nativead/e$a;

    move-result-object v4

    if-nez v4, :cond_8

    iget-object v5, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->l:Lcom/xiaomi/utils/l;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->l:Lcom/xiaomi/utils/l;

    invoke-virtual {v5}, Lcom/xiaomi/utils/l;->b()Z

    move-result v5

    if-nez v5, :cond_8

    const-string v0, "NativeAdManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->l:Lcom/xiaomi/utils/l;

    invoke-virtual {v2}, Lcom/xiaomi/utils/l;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "...wait"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/xiaomi/miglobaladsdk/nativead/e$a;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->B:Z

    if-nez v2, :cond_9

    const-string v0, "NativeAdManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIfAllFinished=>Bidding->notifyAdLoaded&dsp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->h()V

    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_a
    :goto_2
    const-string v0, "NativeAdManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfAllFinished->mIsFinished= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->i:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->i:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v2, :cond_b

    const-string v0, "NativeAdManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfAllFinished=>all dsp finish load ad,Bidding->notifyAdLoaded&isHasAd="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->h()V

    return-void

    :cond_b
    iget v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->u:I

    if-lez v0, :cond_c

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->h()V

    return-void

    :cond_c
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->b(I)V

    const-string v0, "NativeAdManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "posid[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] ,NoFillReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/miglobaladsdk/report/a$a;

    invoke-direct {v0}, Lcom/xiaomi/miglobaladsdk/report/a$a;-><init>()V

    const-string v1, "NO_FILL_REASON"

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->g:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a(Z)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/report/a$a;->d(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/report/a$a;->h(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/report/a$a;->o(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/report/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/report/a$a;->a()Lcom/xiaomi/miglobaladsdk/report/a;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/miglobaladsdk/report/AdReportHelper;->report(Lcom/xiaomi/miglobaladsdk/report/a;)V

    :cond_d
    return-void
.end method

.method protected g()Z
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->o:Lcom/xiaomi/miglobaladsdk/nativead/d;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/nativead/d;->a()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/miglobaladsdk/a/a;

    iget-object v2, v2, Lcom/xiaomi/miglobaladsdk/a/a;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->a:Lcom/xiaomi/miglobaladsdk/nativead/b;

    invoke-virtual {v3, v2}, Lcom/xiaomi/miglobaladsdk/nativead/b;->a(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/b/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/miglobaladsdk/b/b;->c()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method protected h()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAdLoaded time(ms): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaomi/miglobaladsdk/nativead/c;->q:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->a(ZI)V

    const-string v0, "LOAD_SUCCESS"

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method public i()Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;
    .locals 5

    const-string v0, "getAd"

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->c(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;

    invoke-interface {v0}, Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;->getAdTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->b(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAd, return ad name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,ad index: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaomi/miglobaladsdk/nativead/c;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onAdClick(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/miglobaladsdk/nativead/c$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/miglobaladsdk/nativead/c$3;-><init>(Lcom/xiaomi/miglobaladsdk/nativead/c;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;)V

    invoke-static {v0}, Lcom/xiaomi/utils/j;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdDisliked(Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V
    .locals 1

    new-instance v0, Lcom/xiaomi/miglobaladsdk/nativead/c$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/nativead/c$4;-><init>(Lcom/xiaomi/miglobaladsdk/nativead/c;Lcom/xiaomi/miglobaladsdk/nativead/api/INativeAd;I)V

    invoke-static {v0}, Lcom/xiaomi/utils/j;->b(Ljava/lang/Runnable;)V

    return-void
.end method
