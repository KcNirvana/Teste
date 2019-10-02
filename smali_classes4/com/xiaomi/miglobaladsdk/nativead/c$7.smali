.class Lcom/xiaomi/miglobaladsdk/nativead/c$7;
.super Ljava/lang/Object;
.source "NativeAdManagerInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/miglobaladsdk/nativead/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/miglobaladsdk/nativead/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/miglobaladsdk/nativead/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$7;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/c$7;->a:Lcom/xiaomi/miglobaladsdk/nativead/c;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/nativead/c;->f()V

    return-void
.end method
