.class public Lcom/miui/gamebooster/a/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final eC:Ljava/util/regex/Pattern;

.field private static volatile eD:Lcom/miui/gamebooster/a/j;

.field private static eE:Ljava/util/concurrent/ConcurrentHashMap;

.field private static eF:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/a/j;->eE:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v0, "/(jpeg|png|webp)/[lhw][0-9]+[^q]/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/a/j;->eC:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fD(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    sget-object v0, Lcom/miui/gamebooster/a/j;->eF:Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/a/j;->eF:Ljava/lang/StringBuilder;

    :goto_0
    sget-object v0, Lcom/miui/gamebooster/a/j;->eF:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "http://t1.g.mi.com/thumbnail/webp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/miui/gamebooster/a/j;->fE(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "q90/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Lcom/miui/gamebooster/a/j;->eF:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method

.method private static fE(IZ)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    packed-switch p0, :pswitch_data_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/miui/gamebooster/a/j;->fF(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xa0

    invoke-static {v0, p1}, Lcom/miui/gamebooster/a/j;->fF(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xc8

    invoke-static {v0, p1}, Lcom/miui/gamebooster/a/j;->fF(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xf0

    invoke-static {v0, p1}, Lcom/miui/gamebooster/a/j;->fF(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x140

    invoke-static {v0, p1}, Lcom/miui/gamebooster/a/j;->fF(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x1e0

    invoke-static {v0, p1}, Lcom/miui/gamebooster/a/j;->fF(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x280

    invoke-static {v0, p1}, Lcom/miui/gamebooster/a/j;->fF(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x64

    invoke-static {v0, p1}, Lcom/miui/gamebooster/a/j;->fF(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x384

    invoke-static {v0, p1}, Lcom/miui/gamebooster/a/j;->fF(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x3e8

    invoke-static {v0, p1}, Lcom/miui/gamebooster/a/j;->fF(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static fF(IZ)Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "w"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-nez p0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "w="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getInstance()Lcom/miui/gamebooster/a/j;
    .locals 2

    sget-object v0, Lcom/miui/gamebooster/a/j;->eD:Lcom/miui/gamebooster/a/j;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/gamebooster/a/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gamebooster/a/j;->eD:Lcom/miui/gamebooster/a/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/gamebooster/a/j;

    invoke-direct {v0}, Lcom/miui/gamebooster/a/j;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/a/j;->eD:Lcom/miui/gamebooster/a/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/miui/gamebooster/a/j;->eD:Lcom/miui/gamebooster/a/j;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
