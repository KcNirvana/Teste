.class Lcom/xiaomi/miglobaladsdk/a/a/f$4;
.super Ljava/lang/Object;
.source "MiConfigLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/a/a/f;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/miglobaladsdk/a/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/a/a/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$4;->b:Lcom/xiaomi/miglobaladsdk/a/a/f;

    iput-object p2, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$4;->b:Lcom/xiaomi/miglobaladsdk/a/a/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a(Lcom/xiaomi/miglobaladsdk/a/a/f;Z)Z

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$4;->b:Lcom/xiaomi/miglobaladsdk/a/a/f;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f$4;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/miglobaladsdk/a/a/f;->b(Lcom/xiaomi/miglobaladsdk/a/a/f;Ljava/lang/String;)V

    return-void
.end method
