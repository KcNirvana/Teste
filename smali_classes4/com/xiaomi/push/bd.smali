.class public Lcom/xiaomi/push/bd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private a:Lcom/xiaomi/clientreport/processor/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/clientreport/processor/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/bd;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/push/bd;->a:Lcom/xiaomi/clientreport/processor/d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/bd;->a:Lcom/xiaomi/clientreport/processor/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/bd;->a:Lcom/xiaomi/clientreport/processor/d;

    invoke-interface {v0}, Lcom/xiaomi/clientreport/processor/d;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
