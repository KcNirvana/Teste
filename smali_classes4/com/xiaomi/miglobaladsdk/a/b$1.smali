.class Lcom/xiaomi/miglobaladsdk/a/b$1;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/a/b;->a(Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/a/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/miglobaladsdk/a/b$a;

.field final synthetic c:Lcom/xiaomi/miglobaladsdk/a/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/a/b;Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/a/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/b$1;->c:Lcom/xiaomi/miglobaladsdk/a/b;

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/a/b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/miglobaladsdk/a/b$1;->b:Lcom/xiaomi/miglobaladsdk/a/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b$1;->c:Lcom/xiaomi/miglobaladsdk/a/b;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/a/b$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/a/b$1;->b:Lcom/xiaomi/miglobaladsdk/a/b$a;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/miglobaladsdk/a/b;->a(Lcom/xiaomi/miglobaladsdk/a/b;Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/a/b$a;)V

    return-void
.end method
