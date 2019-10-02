.class Lcom/xiaomi/miglobaladsdk/a/b$3;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/a/b;->h(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/miglobaladsdk/a/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/a/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/b$3;->b:Lcom/xiaomi/miglobaladsdk/a/b;

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/a/b$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b$3;->b:Lcom/xiaomi/miglobaladsdk/a/b;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/a/b$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/a/b;->b(Lcom/xiaomi/miglobaladsdk/a/b;Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/a/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/miglobaladsdk/a/b$3$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/miglobaladsdk/a/b$3$1;-><init>(Lcom/xiaomi/miglobaladsdk/a/b$3;Lcom/xiaomi/miglobaladsdk/a/d;)V

    invoke-static {v1}, Lcom/xiaomi/utils/j;->b(Ljava/lang/Runnable;)V

    return-void
.end method
