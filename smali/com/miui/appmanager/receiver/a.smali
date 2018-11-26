.class public Lcom/miui/appmanager/receiver/a;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static aRP:J


# direct methods
.method static synthetic -get0()J
    .locals 2

    sget-wide v0, Lcom/miui/appmanager/receiver/a;->aRP:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/miui/appmanager/receiver/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/appmanager/receiver/a;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/miui/appmanager/receiver/a;->aRP:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic biA(J)J
    .locals 0

    sput-wide p0, Lcom/miui/appmanager/receiver/a;->aRP:J

    return-wide p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Lcom/miui/appmanager/receiver/b;

    invoke-direct {v0, p0, p1}, Lcom/miui/appmanager/receiver/b;-><init>(Lcom/miui/appmanager/receiver/a;Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/appmanager/receiver/b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
