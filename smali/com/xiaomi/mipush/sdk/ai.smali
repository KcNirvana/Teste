.class Lcom/xiaomi/mipush/sdk/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/j/a/f;

.field final synthetic b:Lcom/xiaomi/mipush/sdk/ah$a$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/ah$a$a;Lcom/xiaomi/j/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/ai;->b:Lcom/xiaomi/mipush/sdk/ah$a$a;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/ai;->a:Lcom/xiaomi/j/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ai;->b:Lcom/xiaomi/mipush/sdk/ah$a$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/ah$a$a;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/ai;->a:Lcom/xiaomi/j/a/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ai;->b:Lcom/xiaomi/mipush/sdk/ah$a$a;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/ah$a$a;->a(Lcom/xiaomi/mipush/sdk/ah$a$a;)V

    return-void
.end method
