.class Lcom/xiaomi/h/b;
.super Lcom/xiaomi/push/service/XMPushService$h;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/xiaomi/h/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/h/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/h/b;->b:Lcom/xiaomi/h/a;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/h/b;->b:Lcom/xiaomi/h/a;

    invoke-static {v0}, Lcom/xiaomi/h/a;->a(Lcom/xiaomi/h/a;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "Handling bind stats"

    return-object v0
.end method
