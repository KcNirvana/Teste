.class public Lcom/alipay/android/app/statistic/h;
.super Ljava/lang/Object;
.source "StatisticManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

.field public static b:Ljava/io/File;

.field private static c:Lcom/alipay/android/app/statistic/d/b;

.field private static d:Ljava/lang/Object;

.field private static e:Ljava/lang/Object;

.field private static f:Ljava/lang/Object;

.field private static g:Lcom/alipay/android/app/statistic/logfield/k;

.field private static h:I

.field private static i:J

.field private static j:J

.field private static final k:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/alipay/android/app/statistic/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lcom/alipay/android/app/statistic/b;

.field private static final m:Ljava/util/regex/Pattern;

.field private static final n:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/h;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/h;->e:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/h;->f:Ljava/lang/Object;

    sput-object v1, Lcom/alipay/android/app/statistic/h;->g:Lcom/alipay/android/app/statistic/logfield/k;

    sput-object v1, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    sput-object v1, Lcom/alipay/android/app/statistic/h;->b:Ljava/io/File;

    sget v0, Lcom/alipay/android/app/statistic/f/a;->b:I

    sput v0, Lcom/alipay/android/app/statistic/h;->h:I

    sput-wide v2, Lcom/alipay/android/app/statistic/h;->i:J

    sput-wide v2, Lcom/alipay/android/app/statistic/h;->j:J

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/h;->k:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/alipay/android/app/statistic/b;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/b;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/h;->l:Lcom/alipay/android/app/statistic/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(/cashier/main|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Submit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->getmAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Redo:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->getmAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Operation:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->getmAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Auth:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->getmAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Scan:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->getmAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->ShowTpl:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->getmAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Bnvb:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->getmAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Back:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->getmAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|onsync)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/statistic/h;->m:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "resultStatus=\\{(\\d{3,10})\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/statistic/h;->n:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/statistic/j;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/j;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 3

    const-class v1, Lcom/alipay/android/app/statistic/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/statistic/h;->c:Lcom/alipay/android/app/statistic/d/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/statistic/d/b;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/d/b;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/h;->c:Lcom/alipay/android/app/statistic/d/b;

    sget-object v0, Lcom/alipay/android/app/statistic/h;->c:Lcom/alipay/android/app/statistic/d/b;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/d/b;->d()V

    :cond_0
    sget-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/app/statistic/h;->c:Lcom/alipay/android/app/statistic/d/b;

    sget-object v2, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/statistic/d/b;->a(Lcom/alipay/android/app/statistic/logfield/a;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    :cond_1
    sget-object v0, Lcom/alipay/android/app/statistic/h;->c:Lcom/alipay/android/app/statistic/d/b;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/d/b;->f()V

    sget-object v0, Lcom/alipay/android/app/statistic/h;->c:Lcom/alipay/android/app/statistic/d/b;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/d/b;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/alipay/android/app/statistic/h;->l:Lcom/alipay/android/app/statistic/b;

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/statistic/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/alipay/android/app/statistic/h;->c:Lcom/alipay/android/app/statistic/d/b;

    invoke-virtual {v2}, Lcom/alipay/android/app/statistic/d/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/android/app/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/alipay/android/app/statistic/h;->c:Lcom/alipay/android/app/statistic/d/b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/statistic/d/b;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/alipay/android/app/statistic/h;->h:I

    return-void
.end method

.method public static varargs a(I[Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/h;->a(J)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/statistic/logfield/k;->g(Ljava/lang/String;)Lcom/alipay/android/app/statistic/logfield/k;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/statistic/h;->g:Lcom/alipay/android/app/statistic/logfield/k;

    invoke-static {}, Lcom/alipay/android/app/statistic/h;->q()V

    sget-object v0, Lcom/alipay/android/app/statistic/h;->g:Lcom/alipay/android/app/statistic/logfield/k;

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/b;->n()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/statistic/logfield/k;->a(J)V

    new-instance v0, Lcom/alipay/android/app/statistic/d/b;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/d/b;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/h;->c:Lcom/alipay/android/app/statistic/d/b;

    sget-object v0, Lcom/alipay/android/app/statistic/h;->c:Lcom/alipay/android/app/statistic/d/b;

    sget-object v1, Lcom/alipay/android/app/statistic/h;->g:Lcom/alipay/android/app/statistic/logfield/k;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/d/b;->a(Lcom/alipay/android/app/statistic/logfield/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static varargs a(I[Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    sget-object v1, Lcom/alipay/android/app/statistic/h;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    :try_start_3
    sget-object v0, Lcom/alipay/android/app/statistic/h;->m:Ljava/util/regex/Pattern;

    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->b(Lcom/alipay/android/app/statistic/logfield/a;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->b(Lcom/alipay/android/app/statistic/logfield/a;)V

    :cond_3
    sget-object v1, Lcom/alipay/android/app/statistic/h;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;-><init>()V

    sput-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    sget-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :pswitch_2
    sget-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->g()V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->i(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->h()V

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->c(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->j(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    sget-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    sget-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    sget-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    sget-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    sget-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->b(Lcom/alipay/android/app/statistic/logfield/a;)V

    sget-object v1, Lcom/alipay/android/app/statistic/h;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const/4 v0, 0x0

    :try_start_8
    sput-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public static a(J)V
    .locals 6

    const/4 v0, 0x1

    const-string/jumbo v1, "StatisticManager,initServiceCreateTime"

    const-string/jumbo v2, "time:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-wide p0, Lcom/alipay/android/app/statistic/h;->i:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/android/app/statistic/h;->j:J

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/statistic/d/b;)V
    .locals 0

    invoke-static {p0}, Lcom/alipay/android/app/statistic/h;->b(Lcom/alipay/android/app/statistic/d/b;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/statistic/logfield/a;)V
    .locals 0

    invoke-static {p0}, Lcom/alipay/android/app/statistic/h;->b(Lcom/alipay/android/app/statistic/logfield/a;)V

    return-void
.end method

.method public static a(Lcom/alipay/android/app/trans/b;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/trans/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->b(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string/jumbo v2, "StatisticManager,initSdkStartTime"

    const-string/jumbo v3, "JSON:"

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string/jumbo v1, "sdk_start_time"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const-string/jumbo v2, "StatisticManager,initSdkStartTime"

    const-string/jumbo v3, "sdk_start_time:"

    const-string/jumbo v4, "sdk_start_time"

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sdk_start_time"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/app/statistic/h;->j:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/h;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/logfield/h;-><init>()V

    sget-object v1, Lcom/alipay/android/app/statistic/h;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/logfield/h;->c(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/statistic/logfield/h;->d(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/app/statistic/h;->c:Lcom/alipay/android/app/statistic/d/b;

    invoke-virtual {v1}, Lcom/alipay/android/app/statistic/d/b;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/statistic/logfield/h;->a(J)V

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->b(Lcom/alipay/android/app/statistic/logfield/a;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/alipay/android/app/statistic/logfield/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    if-nez p2, :cond_0

    aput-object p0, v0, v2

    aput-object p1, v0, v1

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    :goto_0
    invoke-static {v2, v0}, Lcom/alipay/android/app/statistic/h;->a(I[Ljava/lang/String;)V

    return-void

    :cond_0
    aput-object p0, v0, v2

    aput-object p1, v0, v1

    aput-object p2, v0, v3

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/e;

    const-string/jumbo v1, ""

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/alipay/android/app/statistic/logfield/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->b(Lcom/alipay/android/app/statistic/logfield/a;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/android/app/statistic/logfield/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->b(Lcom/alipay/android/app/statistic/logfield/a;)V

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;[Lcom/alipay/android/app/statistic/logfield/a;)V
    .locals 5

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    const-string/jumbo v1, "phonecashiermsp#log"

    const-string/jumbo v2, "StatisticManager.submit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fields LogApi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/alipay/android/app/statistic/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/statistic/k;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/statistic/k;-><init>(Ljava/lang/String;[Lcom/alipay/android/app/statistic/logfield/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/statistic/logfield/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/statistic/logfield/a;

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->b(Lcom/alipay/android/app/statistic/logfield/a;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    int-to-long v0, v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/h;->b(J)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/util/Map;Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/android/app/json/JSONObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/app/statistic/n;

    invoke-direct {v0, p1, p0, p2}, Lcom/alipay/android/app/statistic/n;-><init>(Lcom/alipay/android/app/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/d/b/c;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "zip"

    aput-object v2, v0, v1

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    aput-object v1, v0, v3

    :goto_0
    const/4 v1, 0x2

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/h;->a(I[Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v1, "0"

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    :try_start_0
    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "webview"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    const-string/jumbo v0, "enter"

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x2

    aput-object p1, v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/h;->a(I[Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "click"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static varargs a([Lcom/alipay/android/app/statistic/logfield/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;[Lcom/alipay/android/app/statistic/logfield/a;)V

    return-void
.end method

.method public static declared-synchronized b()V
    .locals 3

    const-class v1, Lcom/alipay/android/app/statistic/h;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/app/statistic/l;

    invoke-direct {v2}, Lcom/alipay/android/app/statistic/l;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(J)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/h;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method private static b(Lcom/alipay/android/app/statistic/d/b;)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/hardwarepay/a;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/statistic/logfield/a;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/statistic/d/b;->a(Lcom/alipay/android/app/statistic/logfield/a;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static b(Lcom/alipay/android/app/statistic/logfield/a;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/alipay/android/app/statistic/h;->c:Lcom/alipay/android/app/statistic/d/b;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alipay/android/app/statistic/h;->c:Lcom/alipay/android/app/statistic/d/b;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/d/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/android/app/statistic/h;->c:Lcom/alipay/android/app/statistic/d/b;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/d/b;->d()V

    sget-object v0, Lcom/alipay/android/app/statistic/h;->c:Lcom/alipay/android/app/statistic/d/b;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/d/b;->f()V

    :cond_2
    :try_start_0
    sget-object v1, Lcom/alipay/android/app/statistic/h;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/alipay/android/app/statistic/h;->c:Lcom/alipay/android/app/statistic/d/b;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/statistic/d/b;->a(Lcom/alipay/android/app/statistic/logfield/a;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/h;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/app/statistic/logfield/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->b(Lcom/alipay/android/app/statistic/logfield/a;)V

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    int-to-long v0, v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/h;->f(J)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static c()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/h;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method public static c(J)V
    .locals 6

    const/16 v0, 0x9

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/h;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0xa

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/h;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/app/statistic/logfield/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->b(Lcom/alipay/android/app/statistic/logfield/a;)V

    goto :goto_0
.end method

.method public static d()V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/h;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method public static d(J)V
    .locals 6

    const/4 v0, 0x6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/h;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0xb

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/h;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/android/app/statistic/logfield/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/app/statistic/logfield/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->b(Lcom/alipay/android/app/statistic/logfield/a;)V

    goto :goto_0
.end method

.method public static e()I
    .locals 1

    sget v0, Lcom/alipay/android/app/statistic/h;->h:I

    return v0
.end method

.method public static e(J)V
    .locals 6

    const/16 v0, 0x8

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/statistic/h;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "initial"

    aput-object v2, v0, v1

    invoke-static {p0}, Lcom/alipay/android/app/logic/c/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const-string/jumbo v2, "click_rpc_checklogin"

    aput-object v2, v0, v1

    :goto_0
    const/4 v1, 0x2

    const-string/jumbo v2, "/cashier/main"

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/alipay/android/app/statistic/h;->a(I[Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x1

    const-string/jumbo v2, "click_rpc"

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static f()J
    .locals 2

    sget-wide v0, Lcom/alipay/android/app/statistic/h;->i:J

    return-wide v0
.end method

.method public static f(J)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alipay/android/app/statistic/h;->a(I[Ljava/lang/String;)V

    return-void
.end method

.method public static g()J
    .locals 2

    sget-wide v0, Lcom/alipay/android/app/statistic/h;->j:J

    return-wide v0
.end method

.method static synthetic h()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/statistic/h;->k:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic i()V
    .locals 0

    invoke-static {}, Lcom/alipay/android/app/statistic/h;->p()V

    return-void
.end method

.method static synthetic j()V
    .locals 0

    invoke-static {}, Lcom/alipay/android/app/statistic/h;->r()V

    return-void
.end method

.method static synthetic k()V
    .locals 0

    invoke-static {}, Lcom/alipay/android/app/statistic/h;->q()V

    return-void
.end method

.method static synthetic l()Lcom/alipay/android/app/statistic/logfield/k;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/statistic/h;->g:Lcom/alipay/android/app/statistic/logfield/k;

    return-object v0
.end method

.method static synthetic m()Lcom/alipay/android/app/statistic/b;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/statistic/h;->l:Lcom/alipay/android/app/statistic/b;

    return-object v0
.end method

.method static synthetic n()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/statistic/h;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic o()Lcom/alipay/android/app/statistic/d/b;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/statistic/h;->c:Lcom/alipay/android/app/statistic/d/b;

    return-object v0
.end method

.method private static p()V
    .locals 8

    sget-object v0, Lcom/alipay/android/app/statistic/h;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v0, v1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/android/app/statistic/i;

    invoke-direct {v0}, Lcom/alipay/android/app/statistic/i;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0xa

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v3, 0x1

    const-string/jumbo v4, "phonecashiermsp#log"

    const-string/jumbo v5, "StatisticManager.cleanExpiresFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cleanExpiresFile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " has been dropped"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v5, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static q()V
    .locals 2

    sget-object v0, Lcom/alipay/android/app/statistic/h;->b:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/statistic/h;->b:Ljava/io/File;

    sget-object v0, Lcom/alipay/android/app/statistic/h;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/statistic/h;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method private static r()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x4

    const-string/jumbo v2, "phonecashiermsp#log"

    const-string/jumbo v3, "StatisticManager::uploadLocalRecord"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fields LogApi:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/alipay/android/app/statistic/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->c()Lcom/alipay/android/app/k;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v1, v2

    if-lez v1, :cond_2

    new-instance v1, Lcom/alipay/android/app/statistic/m;

    invoke-direct {v1}, Lcom/alipay/android/app/statistic/m;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    :try_start_0
    invoke-static {v0}, Lcom/alipay/android/app/d/e/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v0}, Lcom/alipay/android/app/d/e/b;->b(Ljava/io/File;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/alipay/android/app/statistic/h;->l:Lcom/alipay/android/app/statistic/b;

    invoke-virtual {v5, v4}, Lcom/alipay/android/app/statistic/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/alipay/android/app/d/e/b;->b(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v4, 0x8

    const-string/jumbo v5, "phonecashiermsp#log"

    const-string/jumbo v6, "StatisticManager.uploadLocalRecord"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v6, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method
