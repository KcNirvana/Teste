.class final Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$1;
.super Ljava/lang/Object;
.source "SingleThreadNamedTaskExecutor.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/util/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;->factory(Ljava/util/concurrent/ThreadFactory;)Lcom/miui/home/launcher/assistant/util/Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/home/launcher/assistant/util/Factory",
        "<",
        "Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$1;->val$threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$1;->val$threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/util/SingleThreadNamedTaskExecutor$1;->create()Lcom/miui/home/launcher/assistant/util/NamedTaskExecutor;

    move-result-object v0

    return-object v0
.end method
