.class public Lcom/miui/home/launcher/assistant/module/receiver/StockUpdate;
.super Ljava/lang/Object;
.source "StockUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/module/receiver/StockUpdate$ViewUpdateListener;
    }
.end annotation


# static fields
.field private static mUpdateListenerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/home/launcher/assistant/module/receiver/StockUpdate$ViewUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setUpdateListener(Lcom/miui/home/launcher/assistant/module/receiver/StockUpdate$ViewUpdateListener;)V
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/StockUpdate;->mUpdateListenerWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/miui/home/launcher/assistant/module/receiver/StockUpdate;->mUpdateListenerWeakReference:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public static update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/model/StockInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/StockUpdate;->mUpdateListenerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/StockUpdate;->mUpdateListenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/assistant/module/receiver/StockUpdate;->mUpdateListenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/module/receiver/StockUpdate$ViewUpdateListener;

    invoke-interface {v0, p0}, Lcom/miui/home/launcher/assistant/module/receiver/StockUpdate$ViewUpdateListener;->update(Ljava/util/List;)V

    :cond_0
    return-void
.end method
