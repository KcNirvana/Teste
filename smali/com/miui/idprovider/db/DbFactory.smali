.class public Lcom/miui/idprovider/db/DbFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static volatile aYl:Lcom/miui/idprovider/db/a; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bth(Landroid/content/Context;)Lcom/miui/idprovider/db/a;
    .locals 3

    sget-object v0, Lcom/miui/idprovider/db/DbFactory;->aYl:Lcom/miui/idprovider/db/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/idprovider/db/DbFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/idprovider/db/DbFactory;->aYl:Lcom/miui/idprovider/db/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/idprovider/db/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/idprovider/db/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/idprovider/db/DbFactory;->aYl:Lcom/miui/idprovider/db/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/miui/idprovider/db/DbFactory;->aYl:Lcom/miui/idprovider/db/a;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
