.class final Lcom/xiaomi/miglobaladsdk/MiAdManager$1;
.super Ljava/lang/Object;
.source "MiAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/miglobaladsdk/MiAdManager;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/MiAdManager$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/b;->a()Lcom/xiaomi/miglobaladsdk/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/MiAdManager$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/a/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/b;->a()Lcom/xiaomi/miglobaladsdk/a/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/a/b;->a(Z)V

    return-void
.end method
