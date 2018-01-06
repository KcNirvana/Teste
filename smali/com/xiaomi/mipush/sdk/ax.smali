.class public Lcom/xiaomi/mipush/sdk/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/ax$b;,
        Lcom/xiaomi/mipush/sdk/ax$a;
    }
.end annotation


# static fields
.field public static volatile a:Z

.field private static c:Lcom/xiaomi/mipush/sdk/ax;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static n:Z

.field private static final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/mipush/sdk/ax$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private final f:Ljava/lang/Object;

.field private final g:I

.field private h:Z

.field private i:Z

.field private j:Landroid/content/Context;

.field private k:Ljava/lang/String;

.field private l:Landroid/os/Messenger;

.field private m:Landroid/os/Messenger;

.field private final p:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/xiaomi/mipush/sdk/ax$b;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/os/Handler;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Ljava/lang/Thread;

.field private u:Landroid/content/Intent;

.field private v:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mipush/sdk/ax;->a:Z

    sput-boolean v0, Lcom/xiaomi/mipush/sdk/ax;->n:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/ax;->o:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/xiaomi/mipush/sdk/ax;->b:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->f:Ljava/lang/Object;

    const/16 v0, 0x1388

    iput v0, p0, Lcom/xiaomi/mipush/sdk/ax;->g:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->p:Ljava/util/LinkedList;

    iput-object v4, p0, Lcom/xiaomi/mipush/sdk/ax;->q:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->r:Ljava/util/List;

    iput-boolean v2, p0, Lcom/xiaomi/mipush/sdk/ax;->s:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/xiaomi/mipush/sdk/ay;

    invoke-direct {v3, p0}, Lcom/xiaomi/mipush/sdk/ay;-><init>(Lcom/xiaomi/mipush/sdk/ax;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->t:Ljava/lang/Thread;

    iput-object v4, p0, Lcom/xiaomi/mipush/sdk/ax;->u:Landroid/content/Intent;

    iput-object v4, p0, Lcom/xiaomi/mipush/sdk/ax;->v:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    iput-object v4, p0, Lcom/xiaomi/mipush/sdk/ax;->k:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/push/service/a;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/a;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mipush/sdk/ax;->e:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/b/a/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.xiaomi.xmsf"

    invoke-static {p1, v0}, Lcom/xiaomi/b/a/a/a;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x6d

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/ax;->i:Z

    iput-boolean v2, p0, Lcom/xiaomi/mipush/sdk/ax;->h:Z

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/ax;->b:Z

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->z()Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/mipush/sdk/ax;->n:Z

    new-instance v0, Lcom/xiaomi/mipush/sdk/az;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/mipush/sdk/az;-><init>(Lcom/xiaomi/mipush/sdk/ax;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->q:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->q()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Intent;)V

    sput-boolean v1, Lcom/xiaomi/mipush/sdk/ax;->a:Z

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private A()V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->p()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/au;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/au;->C:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/b/a/h/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ax;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private B()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "xiaomi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private C()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaomi.xmsf"

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    new-instance v2, Lcom/xiaomi/mipush/sdk/bc;

    invoke-direct {v2, p0}, Lcom/xiaomi/mipush/sdk/bc;-><init>(Lcom/xiaomi/mipush/sdk/ax;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private D()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/a/a/a",
            "<TT;*>;>()V"
        }
    .end annotation

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->p:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->p:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget v1, v9, Lcom/xiaomi/mipush/sdk/ax$b;->a:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->p:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->p:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/xiaomi/mipush/sdk/ax$b;

    move-object v9, v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaomi/mipush/sdk/ax;->a:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :pswitch_0
    :try_start_3
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->m()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->A()V

    goto :goto_1

    :pswitch_2
    iget-object v1, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v2, "notifyId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xiaomi/mipush/sdk/ax;->d(I)V

    goto :goto_1

    :pswitch_3
    iget-object v1, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v3, "description"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/mipush/sdk/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->n()V

    goto :goto_1

    :pswitch_5
    iget-object v1, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v2, "XmPushActionRegistration"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/j/a/ak;

    iget-object v2, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v3, "isEnvChanage"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/mipush/sdk/ax;->b(Lcom/xiaomi/j/a/ak;Z)V

    goto :goto_1

    :pswitch_6
    iget-object v1, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v2, "messageId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/mipush/sdk/bf;

    iget-object v2, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v4, "expand"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object v2, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v5, "extra"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-direct {p0, v3, v1, v4, v2}, Lcom/xiaomi/mipush/sdk/ax;->b(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/bf;ZLjava/util/HashMap;)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v1, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v2, "packet"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a;

    iget-object v1, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v3, "actionType"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/j/a/a;

    iget-object v1, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v4, "encrypt"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object v1, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v5, "pendingIfNecessary"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iget-object v1, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v6, "metaInfo"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/j/a/v;

    iget-object v1, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v7, "isCache"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iget-object v1, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v8, "packageName"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v9, "appId"

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/mipush/sdk/ax;->b(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZZLcom/xiaomi/j/a/v;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v1, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v2, "ClientUploadDataItem"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/j/a/f;

    invoke-direct {p0, v1}, Lcom/xiaomi/mipush/sdk/ax;->b(Lcom/xiaomi/j/a/f;)V

    goto/16 :goto_1

    :pswitch_9
    iget-object v1, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v2, "notifyType"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xiaomi/mipush/sdk/ax;->e(I)V

    goto/16 :goto_1

    :pswitch_a
    iget-object v1, v9, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    const-string v2, "XmPushActionUnRegistration"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/j/a/ar;

    invoke-direct {p0, v1}, Lcom/xiaomi/mipush/sdk/ax;->b(Lcom/xiaomi/j/a/ar;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_a
    .end packed-switch
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/ax;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/ax;->l:Landroid/os/Messenger;

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ax;
    .locals 2

    const-class v1, Lcom/xiaomi/mipush/sdk/ax;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/ax;->c:Lcom/xiaomi/mipush/sdk/ax;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/mipush/sdk/ax;

    invoke-direct {v0, p0}, Lcom/xiaomi/mipush/sdk/ax;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/ax;->c:Lcom/xiaomi/mipush/sdk/ax;

    :cond_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/ax;->c:Lcom/xiaomi/mipush/sdk/ax;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/ax;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/ax;->v:Ljava/lang/Integer;

    return-object p1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/ax;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->C()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/ax;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/ax;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/bf;ZLjava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mipush/sdk/ax;->a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/bf;ZLjava/util/HashMap;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/bf;ZLjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mipush/sdk/bf;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "messageId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "expand"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extra"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/mipush/sdk/ax;->a(ILjava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mipush/sdk/ax;->b(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/bf;ZLjava/util/HashMap;)V

    goto :goto_0
.end method

.method private a(ILjava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/xiaomi/mipush/sdk/ax;->i:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/mipush/sdk/ax;->a:Z

    if-nez v0, :cond_0

    const-string v0, "com.xiaomi.xmsf"

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->p:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/xiaomi/mipush/sdk/ax$b;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/ax$b;-><init>()V

    iput p1, v0, Lcom/xiaomi/mipush/sdk/ax$b;->a:I

    iput-object p2, v0, Lcom/xiaomi/mipush/sdk/ax$b;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->p:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    monitor-exit v1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/mipush/sdk/ax;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mipush/sdk/ax;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/mipush/sdk/ax;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/ax;->m:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaomi/mipush/sdk/ax;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/xiaomi/mipush/sdk/ax;->e:Ljava/lang/String;

    return-object p0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/j/a/h;->T:Lcom/xiaomi/j/a/h;

    invoke-virtual {v1}, Lcom/xiaomi/j/a/h;->a()I

    move-result v1

    sget-object v2, Lcom/xiaomi/j/a/b;->a:Lcom/xiaomi/j/a/b;

    invoke-virtual {v2}, Lcom/xiaomi/j/a/b;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v0

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->l()I

    move-result v2

    sget-object v1, Lcom/xiaomi/j/a/b;->b:Lcom/xiaomi/j/a/b;

    invoke-virtual {v1}, Lcom/xiaomi/j/a/b;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/xiaomi/mipush/sdk/ax;->n:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    sget-object v0, Lcom/xiaomi/j/a/b;->b:Lcom/xiaomi/j/a/b;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/b;->a()I

    move-result v0

    :goto_1
    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/ax;->b(I)Z

    :cond_0
    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ax;->c(Landroid/content/Intent;)V

    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/xiaomi/j/a/b;->a:Lcom/xiaomi/j/a/b;

    invoke-virtual {v0}, Lcom/xiaomi/j/a/b;->a()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private final b(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZZLcom/xiaomi/j/a/v;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/a/a/a",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/j/a/a;",
            "ZZ",
            "Lcom/xiaomi/j/a/v;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/e;->i()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/mipush/sdk/ax;->a(Lb/a/a/a;Lcom/xiaomi/j/a/a;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "drop the message before initialization."

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p7

    move-object v5, p8

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;Lb/a/a/a;Lcom/xiaomi/j/a/a;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/j/a/ag;

    move-result-object v0

    if-eqz p5, :cond_2

    invoke-virtual {v0, p5}, Lcom/xiaomi/j/a/ag;->a(Lcom/xiaomi/j/a/v;)Lcom/xiaomi/j/a/ag;

    :cond_2
    invoke-static {v0}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;)[B

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "send message fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->p()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.xiaomi.mipush.SEND_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_payload"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "com.xiaomi.mipush.MESSAGE_CACHE"

    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/xiaomi/mipush/sdk/ax;->b(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private final b(Lcom/xiaomi/j/a/ak;Z)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->u:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->p()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/j/a/a;->a:Lcom/xiaomi/j/a/a;

    invoke-static {v1, p1, v2}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;Lb/a/a/a;Lcom/xiaomi/j/a/a;)Lcom/xiaomi/j/a/ag;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;)[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "register fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "com.xiaomi.mipush.REGISTER_APP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_app_id"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "mipush_session"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mipush_env_chanage"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "mipush_env_type"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/e;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/b/a/e/d;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/ax;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ax;->b(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->u:Landroid/content/Intent;

    goto :goto_0
.end method

.method private final b(Lcom/xiaomi/j/a/ar;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    sget-object v1, Lcom/xiaomi/j/a/a;->b:Lcom/xiaomi/j/a/a;

    invoke-static {v0, p1, v1}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;Lb/a/a/a;Lcom/xiaomi/j/a/a;)Lcom/xiaomi/j/a/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unregister fail, because msgBytes is null."

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->p()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.xiaomi.mipush.UNREGISTER_APP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_app_id"

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_payload"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/xiaomi/mipush/sdk/ax;->b(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private final b(Lcom/xiaomi/j/a/f;)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->p()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;)[B

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "send TinyData failed, because tinyDataBytes is null."

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "com.xiaomi.mipush.SEND_TINYDATA"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_payload"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/bf;ZLjava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mipush/sdk/bf;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/b/a/e/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Lcom/xiaomi/j/a/aj;

    invoke-direct {v4}, Lcom/xiaomi/j/a/aj;-><init>()V

    invoke-virtual {v4, v7}, Lcom/xiaomi/j/a/aj;->a(Z)Lcom/xiaomi/j/a/aj;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->p()Landroid/content/Intent;

    move-result-object v6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/xiaomi/mipush/sdk/w;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/xiaomi/j/a/aj;->a(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    if-eqz p3, :cond_8

    new-instance v0, Lcom/xiaomi/j/a/aj;

    invoke-direct {v0, p1, v7}, Lcom/xiaomi/j/a/aj;-><init>(Ljava/lang/String;Z)V

    :goto_1
    const-class v1, Lcom/xiaomi/mipush/sdk/al;

    monitor-enter v1

    :try_start_0
    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/xiaomi/mipush/sdk/al;->a(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    :goto_2
    sget-object v0, Lcom/xiaomi/mipush/sdk/bd;->a:[I

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/bf;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/j/a/aj;->b(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/j/a/aj;->d(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    sget-object v0, Lcom/xiaomi/j/a/a;->i:Lcom/xiaomi/j/a/a;

    invoke-virtual {p0, v4, v0, v3, v2}, Lcom/xiaomi/mipush/sdk/ax;->a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZLcom/xiaomi/j/a/v;)V

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/j/a/aj;->b(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/j/a/aj;->d(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    sget-object v2, Lcom/xiaomi/j/a/a;->i:Lcom/xiaomi/j/a/a;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;Lb/a/a/a;Lcom/xiaomi/j/a/a;ZLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/j/a/ag;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/j/a/av;->a(Lb/a/a/a;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "mipush_payload"

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "com.xiaomi.mipush.MESSAGE_CACHE"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "mipush_app_id"

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "mipush_app_token"

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v6}, Lcom/xiaomi/mipush/sdk/ax;->b(Landroid/content/Intent;)V

    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/bf;->ordinal()I

    move-result v1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->q:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    invoke-virtual {v4, p1}, Lcom/xiaomi/j/a/aj;->a(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    if-eqz p3, :cond_7

    new-instance v1, Lcom/xiaomi/j/a/aj;

    invoke-direct {v1, p1, v7}, Lcom/xiaomi/j/a/aj;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :pswitch_0
    sget-object v0, Lcom/xiaomi/j/a/s;->M:Lcom/xiaomi/j/a/s;

    iget-object v0, v0, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/xiaomi/j/a/aj;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    sget-object v0, Lcom/xiaomi/j/a/s;->M:Lcom/xiaomi/j/a/s;

    iget-object v0, v0, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/j/a/aj;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    if-eqz p4, :cond_5

    invoke-virtual {v4, p4}, Lcom/xiaomi/j/a/aj;->a(Ljava/util/Map;)Lcom/xiaomi/j/a/aj;

    invoke-virtual {v1, p4}, Lcom/xiaomi/j/a/aj;->a(Ljava/util/Map;)Lcom/xiaomi/j/a/aj;

    :cond_5
    const-string v0, "com.xiaomi.mipush.DISABLE_PUSH_MESSAGE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    :pswitch_1
    sget-object v0, Lcom/xiaomi/j/a/s;->N:Lcom/xiaomi/j/a/s;

    iget-object v0, v0, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/xiaomi/j/a/aj;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    sget-object v0, Lcom/xiaomi/j/a/s;->N:Lcom/xiaomi/j/a/s;

    iget-object v0, v0, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/j/a/aj;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    if-eqz p4, :cond_6

    invoke-virtual {v4, p4}, Lcom/xiaomi/j/a/aj;->a(Ljava/util/Map;)Lcom/xiaomi/j/a/aj;

    invoke-virtual {v1, p4}, Lcom/xiaomi/j/a/aj;->a(Ljava/util/Map;)Lcom/xiaomi/j/a/aj;

    :cond_6
    const-string v0, "com.xiaomi.mipush.ENABLE_PUSH_MESSAGE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    :pswitch_2
    sget-object v0, Lcom/xiaomi/j/a/s;->U:Lcom/xiaomi/j/a/s;

    iget-object v0, v0, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/xiaomi/j/a/aj;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    if-eqz p4, :cond_2

    invoke-virtual {v4, p4}, Lcom/xiaomi/j/a/aj;->a(Ljava/util/Map;)Lcom/xiaomi/j/a/aj;

    goto/16 :goto_3

    :cond_7
    move-object v1, v2

    goto/16 :goto_2

    :cond_8
    move-object v0, v2

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->p()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/au;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/au;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/au;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ax;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/mipush/sdk/ax;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/mipush/sdk/ax;->s:Z

    return p1
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/xiaomi/mipush/sdk/ax;->d:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized c(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "service_boot_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Landroid/content/Intent;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/mipush/sdk/ax;->s:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ax;->d(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->r:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->l:Landroid/os/Messenger;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    new-instance v1, Lcom/xiaomi/mipush/sdk/bb;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/bb;-><init>(Lcom/xiaomi/mipush/sdk/ax;)V

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/ax;->s:Z

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ax;->d(Landroid/content/Intent;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ax;->d(Landroid/content/Intent;)Landroid/os/Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->l:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method static synthetic c(Lcom/xiaomi/mipush/sdk/ax;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->y()V

    return-void
.end method

.method static synthetic d(Lcom/xiaomi/mipush/sdk/ax;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->p()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/content/Intent;)Landroid/os/Message;
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private d(I)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->p()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.CLEAR_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/au;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/au;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ax;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private e(I)V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->p()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.SET_NOTIFICATION_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/au;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/au;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/au;->C:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/b/a/h/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ax;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic e(Lcom/xiaomi/mipush/sdk/ax;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->D()V

    return-void
.end method

.method static synthetic f(Lcom/xiaomi/mipush/sdk/ax;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/xiaomi/mipush/sdk/ax;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->v:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic h(Lcom/xiaomi/mipush/sdk/ax;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/xiaomi/mipush/sdk/ax;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->l:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic j(Lcom/xiaomi/mipush/sdk/ax;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->m:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/ax;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/ax;->d:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized l()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "service_boot_mode"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private m()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->p()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private final n()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->p()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.xiaomi.mipush.DISABLE_PUSH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ax;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private o()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaomi.xmsf"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x69

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private p()Landroid/content/Intent;
    .locals 2

    sget-boolean v0, Lcom/xiaomi/b/a/d/d;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/mipush/sdk/ax;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t do this on ui thread when debug_switch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/xiaomi/b/a/d/d;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/ax;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.xiaomi.xmsf"

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->s()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->t()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private q()Landroid/content/Intent;
    .locals 2

    const-string v0, "com.xiaomi.xmsf"

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->r()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "pushChannel xmsf create own channel"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->t()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private r()Landroid/content/Intent;
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/mipush/sdk/ax;->i:Z

    if-eqz v0, :cond_0

    const-string v0, "pushChannel app start request xmsf region"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->q:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->m:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/push/service/b/b;->a:Lcom/xiaomi/push/service/b/b;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/b/b;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/ax;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pushChannel app start miui china channel"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->s()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "pushChannel app start  own channel"

    invoke-static {v0}, Lcom/xiaomi/b/a/c/c;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->t()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private s()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.xiaomi.xmsf"

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mipush_app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->v()V

    return-object v0
.end method

.method private t()Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->w()V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    const-string v4, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "mipush_app_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private u()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v1, 0x6a

    if-lt v0, v1, :cond_0

    const-string v0, "com.xiaomi.push.service.XMPushService"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, "com.xiaomi.xmsf.push.service.XMPushService"

    goto :goto_0
.end method

.method private v()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    const-string v3, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private w()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    const-string v3, "com.xiaomi.push.service.XMPushService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private x()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/xiaomi/mipush/sdk/ax;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/xiaomi/mipush/sdk/ax;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/xiaomi/mipush/sdk/ax;->d:Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/mipush/sdk/ax;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/xiaomi/mipush/sdk/ax;->h:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/xiaomi/mipush/sdk/ax;->i:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/xiaomi/mipush/sdk/ax;->e:Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/push/service/b/b;->a:Lcom/xiaomi/push/service/b/b;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/b/b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private y()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/j/a/h;->ai:Lcom/xiaomi/j/a/h;

    invoke-virtual {v1}, Lcom/xiaomi/j/a/h;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/an;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    const-string v2, "push_exception"

    const-string v3, "xmsf_region_timeout"

    const-wide/16 v4, 0x1

    const-string v6, "app request xmsf_request timeout"

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/mipush/sdk/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private z()Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/ax;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.xiaomi.xmsf"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x6c

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/ax;->a(ILjava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->m()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "notifyId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/mipush/sdk/ax;->a(ILjava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ax;->d(I)V

    goto :goto_0
.end method

.method public final a(Lb/a/a/a;Lcom/xiaomi/j/a/a;Lcom/xiaomi/j/a/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/a/a/a",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/j/a/a;",
            "Lcom/xiaomi/j/a/v;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/j/a/a;->a:Lcom/xiaomi/j/a/a;

    invoke-virtual {p2, v0}, Lcom/xiaomi/j/a/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/xiaomi/mipush/sdk/ax;->a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZLcom/xiaomi/j/a/v;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lb/a/a/a;Lcom/xiaomi/j/a/a;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/a/a/a",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/j/a/a;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/mipush/sdk/ax$a;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/ax$a;-><init>()V

    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/ax$a;->a:Lb/a/a/a;

    iput-object p2, v0, Lcom/xiaomi/mipush/sdk/ax$a;->b:Lcom/xiaomi/j/a/a;

    iput-boolean p3, v0, Lcom/xiaomi/mipush/sdk/ax$a;->c:Z

    sget-object v1, Lcom/xiaomi/mipush/sdk/ax;->o:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/xiaomi/mipush/sdk/ax;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/mipush/sdk/ax;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/ax;->o:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZLcom/xiaomi/j/a/v;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/a/a/a",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/j/a/a;",
            "Z",
            "Lcom/xiaomi/j/a/v;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/ax;->a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZZLcom/xiaomi/j/a/v;Z)V

    return-void
.end method

.method public final a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZLcom/xiaomi/j/a/v;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/a/a/a",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/j/a/a;",
            "Z",
            "Lcom/xiaomi/j/a/v;",
            "Z)V"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/ax;->a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZZLcom/xiaomi/j/a/v;Z)V

    return-void
.end method

.method public final a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZZLcom/xiaomi/j/a/v;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/a/a/a",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/j/a/a;",
            "ZZ",
            "Lcom/xiaomi/j/a/v;",
            "Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/mipush/sdk/ax;->a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZZLcom/xiaomi/j/a/v;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZZLcom/xiaomi/j/a/v;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/a/a/a",
            "<TT;*>;>(TT;",
            "Lcom/xiaomi/j/a/a;",
            "ZZ",
            "Lcom/xiaomi/j/a/v;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "packet"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "actionType"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "encrypt"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pendingIfNecessary"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "metaInfo"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isCache"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appId"

    invoke-virtual {v0, v1, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/mipush/sdk/ax;->a(ILjava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p8}, Lcom/xiaomi/mipush/sdk/ax;->b(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZZLcom/xiaomi/j/a/v;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/j/a/ak;Z)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "XmPushActionRegistration"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isEnvChanage"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/mipush/sdk/ax;->a(ILjava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/ax;->b(Lcom/xiaomi/j/a/ak;Z)V

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/j/a/ar;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "XmPushActionUnRegistration"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/mipush/sdk/ax;->a(ILjava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ax;->b(Lcom/xiaomi/j/a/ar;)V

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/j/a/f;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ClientUploadDataItem"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/mipush/sdk/ax;->a(ILjava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ax;->b(Lcom/xiaomi/j/a/f;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/bf;->c:Lcom/xiaomi/mipush/sdk/bf;

    const-string v2, "syncing"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/al;->a(Lcom/xiaomi/mipush/sdk/bf;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/g;->e(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/bf;->c:Lcom/xiaomi/mipush/sdk/bf;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/xiaomi/mipush/sdk/ax;->a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/bf;ZLjava/util/HashMap;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "description"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/mipush/sdk/ax;->a(ILjava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/ax;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/mipush/sdk/ax;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/bf;->a:Lcom/xiaomi/mipush/sdk/bf;

    const-string v2, "syncing"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/al;->a(Lcom/xiaomi/mipush/sdk/bf;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/bf;->b:Lcom/xiaomi/mipush/sdk/bf;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/al;->a(Lcom/xiaomi/mipush/sdk/bf;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/bf;->a:Lcom/xiaomi/mipush/sdk/bf;

    invoke-direct {p0, p2, v0, v3, v4}, Lcom/xiaomi/mipush/sdk/ax;->a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/bf;ZLjava/util/HashMap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/bf;->b:Lcom/xiaomi/mipush/sdk/bf;

    const-string v2, "syncing"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/al;->a(Lcom/xiaomi/mipush/sdk/bf;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/al;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/bf;->a:Lcom/xiaomi/mipush/sdk/bf;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/al;->a(Lcom/xiaomi/mipush/sdk/bf;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/bf;->b:Lcom/xiaomi/mipush/sdk/bf;

    invoke-direct {p0, p2, v0, v3, v4}, Lcom/xiaomi/mipush/sdk/ax;->a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/bf;ZLjava/util/HashMap;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/ax;->a(ILjava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->n()V

    goto :goto_0
.end method

.method public b(I)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/e;->b()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaomi/mipush/sdk/ax;->c(I)V

    new-instance v1, Lcom/xiaomi/j/a/aj;

    invoke-direct {v1}, Lcom/xiaomi/j/a/aj;-><init>()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/aj;->a(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/aj;->b(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/aj;->d(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    sget-object v2, Lcom/xiaomi/j/a/s;->O:Lcom/xiaomi/j/a/s;

    iget-object v2, v2, Lcom/xiaomi/j/a/s;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/j/a/aj;->c(Ljava/lang/String;)Lcom/xiaomi/j/a/aj;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    iget-object v2, v1, Lcom/xiaomi/j/a/aj;->h:Ljava/util/Map;

    const-string v3, "boot_mode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ax;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/j/a/a;->i:Lcom/xiaomi/j/a/a;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v0, v4}, Lcom/xiaomi/mipush/sdk/ax;->a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZLcom/xiaomi/j/a/v;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/ax;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/xiaomi/mipush/sdk/ax;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/e;->l()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->u:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->u:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/ax;->b(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->u:Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public f()V
    .locals 9

    sget-object v7, Lcom/xiaomi/mipush/sdk/ax;->o:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/ax;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/ax$a;

    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/ax$a;->a:Lb/a/a/a;

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/ax$a;->b:Lcom/xiaomi/j/a/a;

    iget-boolean v3, v0, Lcom/xiaomi/mipush/sdk/ax$a;->c:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/ax;->a(Lb/a/a/a;Lcom/xiaomi/j/a/a;ZZLcom/xiaomi/j/a/v;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/ax;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/ax;->a(ILjava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->A()V

    goto :goto_0
.end method

.method public h()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/ax;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->v:Ljava/lang/Integer;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/aw;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/push/service/aw;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->v:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->v:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/xiaomi/mipush/sdk/ba;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/xiaomi/mipush/sdk/ba;-><init>(Lcom/xiaomi/mipush/sdk/ax;Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/push/service/aw;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/aw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/push/service/aw;->c()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/ax;->v:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public i()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/e;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ax;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/an;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/an;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/j/a/h;->T:Lcom/xiaomi/j/a/h;

    invoke-virtual {v2}, Lcom/xiaomi/j/a/h;->a()I

    move-result v2

    sget-object v3, Lcom/xiaomi/j/a/b;->a:Lcom/xiaomi/j/a/b;

    invoke-virtual {v3}, Lcom/xiaomi/j/a/b;->a()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/push/service/an;->a(II)I

    move-result v0

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->l()I

    sget-object v2, Lcom/xiaomi/j/a/b;->b:Lcom/xiaomi/j/a/b;

    invoke-virtual {v2}, Lcom/xiaomi/j/a/b;->a()I

    move-result v2

    if-ne v0, v2, :cond_1

    sget-boolean v0, Lcom/xiaomi/mipush/sdk/ax;->n:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/ax;->p()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.xiaomi.mipush.SEND_SECRET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "mipush_extra_app_key"

    invoke-static {v1}, Lcom/xiaomi/b/a/h/d;->c(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/xiaomi/mipush/sdk/ax;->c(Landroid/content/Intent;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/xiaomi/mipush/sdk/ax;->a(Landroid/content/Intent;)V

    goto :goto_1
.end method
