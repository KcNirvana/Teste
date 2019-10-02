.class Lcom/xiaomi/a/a$1$2;
.super Ljava/lang/Object;
.source "Debugger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/a/a$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xiaomi/a/a$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/a/a$1;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a$1$2;->b:Lcom/xiaomi/a/a$1;

    iput-object p2, p0, Lcom/xiaomi/a/a$1$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/b;->a()Lcom/xiaomi/miglobaladsdk/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/a/a$1$2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/a/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/b;->a()Lcom/xiaomi/miglobaladsdk/a/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/a/b;->a(Z)V

    return-void
.end method
