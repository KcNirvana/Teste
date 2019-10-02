.class Lcom/xiaomi/push/do;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Landroid/content/Intent;

.field final synthetic a:Lcom/xiaomi/push/dn;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/dn;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/do;->a:Lcom/xiaomi/push/dn;

    iput-object p2, p0, Lcom/xiaomi/push/do;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/push/do;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/do;->a:Lcom/xiaomi/push/dn;

    iget-object v1, p0, Lcom/xiaomi/push/do;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/push/do;->a:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/dn;->a(Lcom/xiaomi/push/dn;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
