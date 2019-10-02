.class Lcom/xiaomi/push/dt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/ds;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/ds;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/dt;->a:Lcom/xiaomi/push/ds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/dt;->a:Lcom/xiaomi/push/ds;

    invoke-static {v0}, Lcom/xiaomi/push/ds;->a(Lcom/xiaomi/push/ds;)V

    return-void
.end method
